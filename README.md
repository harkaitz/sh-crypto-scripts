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
