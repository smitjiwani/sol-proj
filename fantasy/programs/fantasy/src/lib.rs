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

    pub fn update_username(
        ctx: Context<UpdateUsername>,
        username: String,
    ) -> Result<()> {
        // Update username
        let user_profile = &mut ctx.accounts.user_profile;
        user_profile.username = username;
        Ok(())
    }

    pub fn add_default_player(
        ctx: Context<AddDefaultPlayer>,
        player: Player,
    ) -> Result<()> {
        let user_profile = &mut ctx.accounts.user_profile; 
        //set player times value of default players when they are used in fantasy teams 
        user_profile.default_players.push(player);
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


#[derive(Accounts)]
#[instruction(username: String)]
pub struct UpdateUsername<'info> {
    #[account(mut)]
    pub authority: Signer<'info>,

    #[account(mut)]
    pub user_profile: Box<Account<'info, UserProfile>>,

    pub system_program: Program<'info, System>,
}

#[derive(Accounts)]
#[instruction(player: Player)]
pub struct AddDefaultPlayer<'info> {
    #[account(mut)]
    pub authority: Signer<'info>,

    #[account(mut)]

    pub user_profile: Box<Account<'info, UserProfile>>,

    pub system_program: Program<'info, System>,
}