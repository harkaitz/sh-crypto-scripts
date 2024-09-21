# SH-CRYPTO-SCRIPTS

Some scripts to configure some cryptocurrency nodes, miners and RPC
wallets.

## Prerequisites

- [sh-hutil](https://github.com/harkaitz/sh-hutil) SH utility library.
- wget, curl, jq, ...
- sudo
- Tested in Void Linux and Debian.

## Help

chrome-h-crypto

    Usage: chrome-h-crypto ...
    
    ... i-{kepl,bnb,metamask} : Install wallets.

fiat-calculator

    Usage: fiat-calculator ...
    
    Get currency rates to the dollar with `www.calculator.net`.
    
    ... show                    : Show variables.
    ... list|l                  : List available currencies.
    ... price|p COIN [QUANTITY] : See the price in dollars.
    ... COIN                    : See the price in dollars.

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

tradeogre

    Usage: tradeogre ...
    
    Command line interface to the tradeogre exchange.
    (MARKET: PRICE-QUANTITY)
    
    ... markets                         : List market names.
    ... orderbook[-c] {buy,sell} MARKET : View market order book.
    ... ticker[-c]               MARKET : List ticker.
    ... mhistory                 MARKET : Print history.
    ... diff                     MARKET : Print difference to coingecko.
    
    ... buy|sell MRK QUANT PRICE  : Put operation.
    ... buy      MRK BASE         : Match with orderbook.
    ... sell     MRK QUANT        : Match with orderbook.
    ... orders                    : Pending orders.
    ... balance                   : Balance in configured currency.
    ... balances                  : Portfolio.

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
