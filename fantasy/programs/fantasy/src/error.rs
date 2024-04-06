use anchor_lang::prelude::*;

#[error_code]
pub enum TodoError {
    #[msg("User already exists")]
    UserAlreadyExists,
    #[msg("User not found")]
    UserNotFound,
}