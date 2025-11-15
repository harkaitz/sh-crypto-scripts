# SH-CRYPTO-SCRIPTS

Some scripts to configure some cryptocurrency nodes, miners and RPC
wallets.

## Prerequisites

- wget, curl, jq, ...
- sudo
- Tested in Void Linux and Debian.
- For "fiat-calculator" install "html-lmxml-utils".

## Help

lsetup-crypto-monero-daemon

    Usage: lsetup-crypto-monero-daemon ...
    
    Monero Daemon.
    
    ... download  : Download daemon.
    ... install   : Install the daemon in "/opt/monero".
    ... update    : Update the daemon in "/opt/monero".
    ... launcher  : Create "/opt/monero/monerod-launcher".
    ... setup     : Create "/opt/monero/monerod.cfg".
    ... help      : View configuration information.
    
    Environment variables: {OPT,VAR,LOG}_MONERO, LOCAL_PREFIX

lsetup-crypto-monero-gui

    Usage: lsetup-crypto-monero-gui { download | install }
    
    Script for installing, upgrading and configuring a monero GUI.
    
    Environment variables: HOME_PREFIX

wallet-monero

    Usage: wallet-monero ...
    
    Command line programmable interface to Monero.
    
    ... help    : Help on wallet restoration.
    ... cli     : Open wallet CLI management.
    ... rpc     : Launch RPC.
    ... balance : Show wallet balance.
    
    Environment variables: MONERO_WALLET{,_PASS} MONERO_TRUSTED_NODE

## Collaborating

Feel free to open bug reports and feature/pull requests.

More software like this here:

1. [https://harkadev.com/prj/](https://harkadev.com/prj/)
2. [https://devreal.org](https://devreal.org)
