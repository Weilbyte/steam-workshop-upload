# Steam Workshop Upload

Upload your mod to the Steam Workshop with the power of GitHub Actions — now with Steam Guard 2FA support.

Takes inspiration from [workshop-upload](https://github.com/arma-actions/workshop-upload) but with an added Steam Guard 2FA code generator. 

## Usage

```yaml
- name: steam-workshop-upload
  uses: weilbyte/steam-workshop-upload@v1
  with: 
    appid: 294100 # Game's Steam App ID
    itemid: 0000000000 # Your mod's Steam Workshop ID
    path: 'dist' # Path to your mod's folder from repository root
  env:
    STEAM_USERNAME: ${{ secrets.STEAM_USERNAME }} # Your Steam username
    STEAM_PASSWORD: ${{ secrets.STEAM_PASSWORD }} # Your Steam password
    STEAM_TFASEED: ${{ secrets.STEAM_TFASEED }} # Your Steam Guard 2FA shared secret (Optional)
```

You can get your 2FA seed by [various methods](https://github.com/SteamTimeIdler/stidler/wiki/Getting-your-%27shared_secret%27-code-for-use-with-Auto-Restarter-on-Mobile-Authentication). Your seed here is the `shared_secret`.

## Contributing
Pull requests are welcome. 
## License
[MIT](https://choosealicense.com/licenses/mit/)
