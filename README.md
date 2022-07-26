# SH-CRYPTO-SCRIPTS

Some scripts to configure some cryptocurrency nodes and miners.

## Prerequisites

- [sh-hutil](https://github.com/harkaitz/sh-hutil) SH utility library.
- wget, tag, ...
- sudo
- Tested in Void Linux.

## Help

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

xmrig-setup

    Usage: XMR_MINING_ADDR=XMR-ADDR/ANYTHING/EMAIL xmrig-setup ...
    
    Build and configure XMRIG to mine monero. Please set XMR_MINING_ADDR
    environment variable before `b-tar` to configure it to mine for you.
    
    The chosen pool is "nanopool".
    
    ... b-deps              : Build dependencies.
    ... b-tar               : Build XMRIG tar.
    ... nanopool            : Show your mining progress.
    ... install MACHINES... : Install XMRIG tar (Launch with `sudo xmrig`)
    ... cpus    MACHINES... : List the CPU from the logfile.
    ... speed   MACHINES... : View last recorded speed.
    ... status  MACHINES... : View service status.
    ... stop    MACHINES... : Stop services in machines.
    ... enable  MACHINES... : Enable services in machines.
    ... disable MACHINES... : Disable services in machines.

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)

