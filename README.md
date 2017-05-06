# Phx





```
mix deps.get
npm install
mix phoenix.server

./node_modules/brunch/bin/brunch b -p           # to build prod static assets
MIX_ENV=prod mix phoenix.digest                 # to digest 'em
MIX_ENV=prod mix release --env=prod             # create prod release
_build/prod/rel/phx/bin/phx console             # run release!

Notes:
using this to redirect from port ABC to port 80:
sudo iptables -A INPUT -i eth0 -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp --dport 1234 -j ACCEPT
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 1234
```
