# Shadowsocks Transparent Proxy

Systemd service configuration for shadowsocks-libev transparent proxy client

# Configuration steps

> [!NOTE]
> You'll need a server for your client to connect to. You can use [shadowsocks-libev](https://github.com/shadowsocks/shadowsocks-libev) or any other shadowsocks implementation on your virtual machine.

1. Install [shadowsocks-libev](https://github.com/shadowsocks/shadowsocks-libev). Tested version is `v3.3.5`. Make sure `ss-redir` program is executable.

2. Clone this repository and create `pkg/.env` file (use `pkg/example.env` as an example)

3. Execute `. ./install.sh`

# Usage

Manage your proxy as a normal systemd service:

 - Start proxy: `systemctl start sstp`
 - See proxy status: `systemctl status sstp`
 - Stop proxy: `systemctl stop sstp`
 - See recent logs: `journalctl -ru sstp.service`
