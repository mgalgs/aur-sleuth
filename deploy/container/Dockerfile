# aur-sleuth pipeline image.
#
# Build from the REPOSITORY ROOT, not from this directory:
#
#     docker build -f deploy/container/Dockerfile -t aur-sleuth:dev .
#
# Arch Linux is not a preference. aur-sleuth shells out to `makepkg`, `bsdtar`,
# and `file(1)`, so the audit only runs on a distribution that ships makepkg.
FROM archlinux:base-devel

# `makepkg` refuses to run as root and hard-errors when it detects it. The image
# therefore ships a normal user and runs as that UID.
ARG SLEUTH_UID=1000
ARG SLEUTH_GID=1000

# base-devel already carries bash, coreutils, file, gawk, sed, util-linux
# (flock), libarchive (bsdtar) and curl. These are the rest:
#   uv              aur-sleuth is a PEP 723 script; its shebang is `uv run`
#   python-openai   bench/judge.sh calls the API from inline python snippets
#   python-requests that run on the system interpreter, not in uv's environment
#   openssh         the publish stage pushes over ssh
RUN pacman -Syu --noconfirm --needed \
        git \
        openssh \
        python \
        python-openai \
        python-requests \
        uv \
    && pacman -Scc --noconfirm \
    && rm -rf /var/cache/pacman/pkg/* /var/lib/pacman/sync/*

# GitHub's SSH host keys, fetched over TLS rather than trusted on first use by
# ssh-keyscan. Pins them at build time; rebuild the image if GitHub rotates.
#
# Written for two names, because a deployment may have to push over port 443.
# GitHub answers SSH on ssh.github.com:443 with these same keys, which matters
# where egress is restricted: the publish stage can then push without anything
# opening port 22, and a stage that runs untrusted code must not be given SSH
# egress just so a trusted stage can push. A non-default port is matched in
# known_hosts as [host]:port, so it needs its own line.
RUN curl -fsS https://api.github.com/meta \
    | python -c 'import json,sys; [print(h, k) for k in json.load(sys.stdin)["ssh_keys"] for h in ("github.com", "[ssh.github.com]:443")]' \
    > /etc/ssh/ssh_known_hosts \
    && test -s /etc/ssh/ssh_known_hosts

RUN groupadd -g "${SLEUTH_GID}" sleuth \
    && useradd -m -u "${SLEUTH_UID}" -g "${SLEUTH_GID}" -s /bin/bash sleuth \
    && install -d -o sleuth -g sleuth /out

COPY . /opt/aur-sleuth
COPY deploy/container/scripts/entrypoint.sh /usr/local/bin/entrypoint.sh

# `.git` is a gitfile, not a directory: it points every git command run inside
# the source tree at the object store on the persistent volume. The source tree
# itself stays in the image layer, which is per-container and therefore not
# writable by any other container sharing the volume. That is what lets the
# publish stage run trusted code against a shared, untrusted-writable object
# store.
# The entrypoint rewrites this file from $AUR_SLEUTH_DATA_DIR at startup; this
# bakes the default so the tree is a valid worktree even without the entrypoint.
RUN printf 'gitdir: /data/git\n' > /opt/aur-sleuth/.git \
    && chown -R sleuth:sleuth /opt/aur-sleuth \
    && chmod 0755 /usr/local/bin/entrypoint.sh

# Numeric on purpose: a runtime that must verify the container is non-root
# (Kubernetes `runAsNonRoot`, for one) cannot resolve a name in the image and
# refuses to start it.
USER ${SLEUTH_UID}:${SLEUTH_GID}
ENV HOME=/home/sleuth
# Use the interpreter the image already has instead of letting uv fetch one.
ENV UV_PYTHON_DOWNLOADS=never

# Resolve aur-sleuth's Python dependencies once, at build time. The lock file
# makes the resolution sticky: `uv run --script` uses an adjacent .lock file, so
# every container from this image runs the same versions instead of re-resolving
# at startup. The warm run then caches the locked packages so containers start
# without reaching a package index. The image, not the repository, is the
# pinning boundary -- rebuild to pick up new releases.
RUN uv lock --script /opt/aur-sleuth/aur-sleuth \
    && uv run --script /opt/aur-sleuth/aur-sleuth --help > /dev/null

# The commit this image was built from. The prepare stage pins HEAD to it so
# every archived report records the exact source revision that produced it.
ARG AUR_SLEUTH_REV=""

WORKDIR /opt/aur-sleuth
ENV AUR_SLEUTH_DATA_DIR=/data \
    AUR_SLEUTH_ASCII_ICONS=1 \
    AUR_SLEUTH_REV=${AUR_SLEUTH_REV} \
    PYTHONUNBUFFERED=1

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["audit"]
