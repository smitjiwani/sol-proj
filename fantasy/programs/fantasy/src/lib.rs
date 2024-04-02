use anchor_lang::prelude::*;

declare_id!("GtyvgHNxNFrbSf4AJSiwsJjUqvmE7vLCykfoV7oRPicV");

#[program]
pub mod fantasy {
    use super::*;

    pub fn initialize(ctx: Context<Initialize>) -> Result<()> {
        Ok(())
    }
}

#[derive(Accounts)]
pub struct Initialize {}
