use anchor_lang::prelude::*;

pub mod user;

declare_id!("FCHAaa1jRgme9F4KegEoXYAyAHuCZG7FQCq4QFiwTfpc");

#[program]
pub mod some {
    use super::*;

    pub fn initialize(_ctx: Context<Initialize>) -> Result<()> {
        Ok(())
    }
}

#[derive(Accounts)]
pub struct Initialize {}
