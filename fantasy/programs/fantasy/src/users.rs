use anchor_lang::prelude::*;

#[program]
mod user_contract {
    use super::*;

    #[state]
    pub struct UserContract {
        pub users: Vec<User>,
    }

    impl UserContract {
        pub fn new(ctx: Context<Empty>) -> ProgramResult {
            Ok(())
        }

        pub fn create_user(&mut self, ctx: Context<Empty>, team_name: String) -> ProgramResult {
            let user = User {
                team_name,
                players: Vec::new(),
            };
            self.users.push(user);
            Ok(())
        }

        pub fn add_player(&mut self, ctx: Context<Empty>, user_index: usize, player_name: String) -> ProgramResult {
            if let Some(user) = self.users.get_mut(user_index) {
                user.players.push(player_name);
                Ok(())
            } else {
                Err(ErrorCode::InvalidUserIndex.into())
            }
        }

        pub fn get_users(&self, ctx: Context<Empty>) -> ProgramResult {
            for (index, user) in self.users.iter().enumerate() {
                println!("User {} - Team: {}", index, user.team_name);
                for player in &user.players {
                    println!("  Player: {}", player);
                }
            }
            Ok(())
        }
    }

    #[error]
    pub enum ErrorCode {
        #[msg("Invalid user index")]
        InvalidUserIndex,
    }

    #[derive(Accounts)]
    pub struct Empty {}

    #[derive(AnchorSerialize, AnchorDeserialize)]
    pub struct User {
        pub team_name: String,
        pub players: Vec<String>,
    }

    impl Default for User {
        fn default() -> Self {
            Self {
                team_name: String::default(),
                players: Vec::new(),
            }
        }
    }
}
