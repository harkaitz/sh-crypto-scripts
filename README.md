# SH-CRYPTO-SCRIPTS

Some scripts to configure some cryptocurrency nodes, miners and RPC
wallets.

## Prerequisites

- [sh-hutil](https://github.com/harkaitz/sh-hutil) SH utility library.
- wget, curl, jq, ...
- sudo
- Tested in Void Linux and Debian.

## Help

bitcoin-h

    Usage: bitcoin-h ...
    
    -i : Download electrum.
    -r : Remove electrum.
    -w WALLET :
    -l        : List wallets.
    -V        :
    
      gui              : Open electrum wallet.
      cli-recover SEED : Recover wallet (use gui for segwit).

chrome-h-crypto

    Usage: chrome-h-crypto ...
    
    ... i-{kepl,bnb,metamask} : Install wallets.

coingecko

    Usage: coingecko ...
    
    ... show                             : Show variables.
    ... list|l     [TICKER]              : List coins.
    ... price|p    COIN [QUANTITY]       : See the price in dollars.
    ... quantity|q COIN DOLLARS          : See the token count.
    ... rate|r     BASE-COIN             : See the rate in coingecko.
    ... range      [BASE-]COIN [DATE...] : Get data points (default a year).
    ... COIN       [DATE...]             : See the price of a coin.

fiat-calculator

    Usage: fiat-calculator ...
    
    Get currency rates to the dollar with `www.calculator.net`.
    
    ... show                    : Show variables.
    ... list|l                  : List available currencies.
    ... price|p COIN [QUANTITY] : See the price in dollars.
    ... COIN                    : See the price in dollars.

monero-h

    Usage: monero-h OPTS... METHOD ARGS...
    
    Helper script for operating a monero wallet.
    
    OPTIONS:
    
      -w WALLET : Select wallet.
      -l        : List defined wallets.
      -V        : Show variables.
      -i        : Install official Monero client into "/opt/monero".
      -I        : Install official Monero gui into "/opt/monero-gui".
    
    OPERATIONS: 
    
      net-connect       : Connect by SSH to create a node proxy.
      net-node          : Print node address.
      cli-recover       : Recover wallet from seed using *Official CLI*.
      cli-refresh       : Synchronize blocks.
      cli-balance       : Print balance.
      cli [COMMAND]     : Execute cli commands.
      rpc-start  [PORT]      : Open wallet in RPC mode.
      rpc-create NAME [PORT] : Create RPC user systemd service. 

monero-setup

    Usage: monero-setup OPTS...
    
    Install a Monero Node in a Linux machine. If you have a
    monero blockchain already stored in a drive you can recover
    it with `-r`.
    
    The following settings have been chosen:
    
        - P2P will bind to 0.0.0.0:18080. 
        - Restricted RPC 0.0.0.0:18081.
        - Bandwidth: 1MB up, 1MB down.
        - Peer: node.moneroworld.com.
        - Public node: false.
        - Data directory: /var/lib/monero.
        - Installation prefix: /opt/monero.
        - Configuration file: /opt/monero/monerod.cfg.
        - Service name: monero
    
    Command line operations:
    
        -r data.mdb : Recover from "data.mdb".
        -i          : Install monero.
        -c          : Create config file.
        -l          : Create launcher.
        -s          : Create service (Only Void Linux).
        -e          : Enable service (Only Void Linux).

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
