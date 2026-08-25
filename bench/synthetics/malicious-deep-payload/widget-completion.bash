# bash completion for bench-widget
_bench_widget() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=($(compgen -W "--daemon --help --version --config" -- "$cur"))
}
complete -F _bench_widget bench-widget
