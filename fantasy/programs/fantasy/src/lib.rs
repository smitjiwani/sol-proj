use anchor_lang::prelude::*;

pub mod constant;
pub mod error;
pub mod states;
// use crate::{constant::*, error::*, states::*};
use crate::{constant::*, states::*};

declare_id!("FHi9b593PHHVjcrvRBXjAmRd6JsHkWCoLmC8CHdkDUy3");

#[program]
pub mod fantasy {
    use super::*;

    pub fn initialize_user(
        ctx: Context<InitializeUser>
    ) -> Result<()> {
        // Initialize user profile with default data
        let user_profile = &mut ctx.accounts.user_profile;
        user_profile.authority = ctx.accounts.authority.key();
        user_profile.username = "default".to_string();
        user_profile.competetion_count = 0;

        Ok(())
    }
}

#[derive(Accounts)]
#[instruction()]
pub struct InitializeUser<'info> {
    #[account(mut)]
    pub authority: Signer<'info>,

    #[account(
        init,
        seeds = [USER_TAG, authority.key().as_ref()],
        bump,
        payer = authority,
        space = 8 + std::mem::size_of::<UserProfile>(),
    )]
    pub user_profile: Box<Account<'info, UserProfile>>,

    pub system_program: Program<'info, System>,
}
