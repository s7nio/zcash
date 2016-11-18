# Dockerfile for zcash

tags: decentralized, open source, cryptocurrency, zero-knowledge

## steps

1. Build your docker container
  ```shell
  $ git clone https://github.com/s7nio/zcash zcash
  $ cd zcash
  $ docker build -t s7nio/zcash:1.0.2 .
  ```
2. Setup your zcash configuration
  ```shell
  $ TODO
  ```
3. Run your container
  ```shell
  $ docker run --rm --name zcash -p 8233:8233 -v $(pwd)/.zcash:/root/.zcash:rw -it s7nio/zcash:1.0.2 bash
  ```

## commands

```shell
$ zcashd [-daemon]
$ zcash-cli stop
$ zcash-cli getinfo

$ zcash-cli getnewaddress
$ zcash-cli z_getnewaddress
$ zcash-cli z_gettotalbalance
$ zcash-cli z_listtransactions
$ zcash-cli z_listreceivedbyaddress "YOUR_ZADDRESS"

$ zcash-cli z_sendmany "YOUR_ZADDRESS" "[{\"amount\": 0.8, \"address\": \"FRIEND_ZADDRESS\"}]"
$ zcash-cli z_getoperationresult
```
## links

- [https://z.cash/](https://z.cash/)
  - [wiki](https://github.com/zcash/zcash/wiki/1.0-User-Guide)
  - [forum](https://forum.z.cash/)
- mine
  - [https://minezcash.com/](https://minezcash.com/)
  - [https://zcashminers.org/](https://zcashminers.org/)
  - pools e.g. [nicehash](https://zcash.nicehash.com/)

## todos

[] steps - dockerfile
[] steps - zcash default configuration
[] nheqminer
[] donation addresses
[] docker-compose

## donations

BTC: ...
ZEC: ...
