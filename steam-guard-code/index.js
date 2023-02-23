var SteamTotp = require('steam-totp');

var secret = process.env.STEAM_TFASEED
if(secret == null) {
    console.error("Missing STEAM_TFASEED environment variable.");
    process.exit(-1);
}

var code = SteamTotp.generateAuthCode(secret);
console.log(code);

process.exit();