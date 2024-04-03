solana: 1.16.22
cargo: 1.77.1
anchor-cli 0.29.0

https://www.soldev.app/course/local-setup

## Frontend 

Put it in /fanasy/app

## Setup 

download rust

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

download solana cli

```
sh -c "$(curl -sSfL https://release.solana.com/v1.16.4/install)"
```

```
solana config set --url localhost
solana-keygen new -o /<your username>/.config/solana/id.json
solana airdrop 2
solana balance
```

```
cargo install --git https://github.com/coral-xyz/anchor avm --locked --force
```

```
avm install latest
avm use latest
```

```
anchor --version
```

