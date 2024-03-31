use anchor_lang::prelude::*;

declare_id!("jRYfbupumZ8yQAL164JpCtSKFmvJ54igAnpkcP1Zyj6");

#[program]
pub mod contracts {
    use super::*;

    pub fn initialize(ctx: Context<Initialize>) -> Result<()> {
        Ok(())
    }
}

#[derive(Accounts)]
pub struct Initialize {}
