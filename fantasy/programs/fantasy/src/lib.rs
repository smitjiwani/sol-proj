use anchor_lang::prelude::*;

#![feature(proc_macro_hygiene)]
#![allow(unused_attributes)]


#[program]
mod user_contract;

declare_id!("GtyvgHNxNFrbSf4AJSiwsJjUqvmE7vLCykfoV7oRPicV");

#[program]
pub mod fantasy {
    use super::*;

    pub fn initialize(ctx: Context<Empty>) -> ProgramResult {
        user_contract::UserContract::new(ctx)
    }

    pub fn create_user(ctx: Context<Empty>, team_name: String) -> ProgramResult {
        user_contract::UserContract::create_user(ctx, team_name)
    }

    pub fn add_player(ctx: Context<Empty>, user_index: usize, player_name: String) -> ProgramResult {
        user_contract::UserContract::add_player(ctx, user_index, player_name)
    }

    pub fn get_users(ctx: Context<Empty>) -> ProgramResult {
        user_contract::UserContract::get_users(ctx)
    }
}

#[derive(Accounts)]
pub struct Initialize {}
