# SH-CRYPTO-SCRIPTS

Some scripts to configure some cryptocurrency nodes, miners and RPC
wallets.

## Prerequisites

- wget, curl, jq, ...
- sudo
- Tested in Void Linux and Debian.
- For "fiat-calculator" install "html-lmxml-utils".

## Help

fiat-calculator

    Usage: fiat-calculator ...
    
    Get currency rates to the dollar with `www.calculator.net`.
    
      show                      Show variables.
      list|l                    List available currencies.
      price|p COIN [QUANTITY]   See the price in dollars.
      COIN                      See the price in dollars.
    
    This program requires `html-lmxml-utils` to function.

lsetup-monero

    Usage: lsetup-monero ...
    
    Script for installing, upgrading and configuring a monero service.
    
      -d           Download monero cli tar file.
      -i[u]        Install monero cli in "/opt/monero".
      -c           Create configuration file in "/opt/monero/monerod.cfg".
      -l           Create launcher in "/opt/monero/monerod-launcher".
      -s void      Create Void Linux service.
      -I data.mdb  Import data.mdb to "/var/lib/monero/lmdb/data.mdb".
    
    To view the choices made execute "lsetup-monero -H".
    
    Tested platforms: Void Linux

lsetup-monero-gui

    Usage: lsetup-monero-gui ...
    
    Script for installing, upgrading and configuring a monero GUI.
    
      -d      Download monero gui tar file.
      -i[u]   Install monero gui in "/opt/monero-gui".
      -l      Create wrapper in "/bin/monero" with log in "~/.log/monero.log".
    
    Tested platforms: Debian

monero-h

    Usage: monero-h { -V , -w WALLET , -l , METHOD ARGS... }
    
    Helper script for operating a monero wallet.
    
      net-connect        Connect by SSH to create a node proxy.
      net-node           Print node address.
      cli-recover        Recover wallet from seed (daemon not needed)
      cli-refresh        Synchronize blocks.
      cli-balance        Print balance.
      cli [COMMAND]      Execute cli commands.
      rpc-start  [PORT]       Open wallet in RPC mode.
      rpc-create NAME [PORT]  Create RPC user systemd service.
    
    You can select and list wallets with -w and -l.

## Collaborating

For making bug reports, feature requests, support or consulting visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
