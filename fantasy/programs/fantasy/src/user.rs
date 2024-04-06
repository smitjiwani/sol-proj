use anchor_lang::prelude::*;


pub mod user {
    use super::*;

    pub fn initialize(_ctx: Context<Initialize>) -> Result<()> {
        Ok(())
    }

    pub struct User {
        pub name: String,
        pub age: u8,
    }
}

#[derive(Accounts)]
pub struct Initialize {}
