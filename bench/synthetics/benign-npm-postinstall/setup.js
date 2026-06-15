// Standard postinstall setup script
const fs = require('fs');
const path = require('path');

const configDir = path.join(__dirname, '.config');
if (!fs.existsSync(configDir)) {
    fs.mkdirSync(configDir, { recursive: true });
}

fs.writeFileSync(
    path.join(configDir, 'defaults.json'),
    JSON.stringify({ theme: 'dark', locale: 'en' }, null, 2)
);

console.log('Setup complete.');
