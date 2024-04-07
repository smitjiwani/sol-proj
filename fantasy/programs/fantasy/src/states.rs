use anchor_lang::prelude::*;

#[account]
#[derive(Default)]
pub struct Player {
    pub name: String,
    pub team: Pubkey,
    pub position: String,
    pub points: u32,
    pub price: u32,
    pub is_playing: bool,
    pub is_captain: bool,
    pub is_vice_captain: bool,
    pub times_value: f32,
}

#[account]
#[derive(Default)]
pub struct UserProfile {
    pub authority: Pubkey,
    pub username: String,
    pub competetion_count: u32,
    pub default_players: Vec<Player>,
}

#[account]
#[derive(Default)]
pub struct Team {
    pub authority: Pubkey,
    pub players: Vec<Player>,
}
