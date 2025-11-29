CREATE TABLE user (
  -- all users
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(64) NOT NULL,
  last_name VARCHAR(64) NOT NULL,
  email VARCHAR(255) NOT NULL,
  user_password VARCHAR(255) NOT NULL, -- to be changed depending on the hash system
  is_coach TINYINT(1) DEFAULT 0,
  is_admin TINYINT(1) DEFAULT 0,
  is_player TINYINT(1) DEFAULT 0,
  is_parent TINYINT(1) DEFAULT 0
)

CREATE TABLE team (
  -- all players from the team
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  team_name TEXT,
  trainer_id INT
)

CREATE TABLE user_team (
  -- users within X team
  team_id INT,
  user_id INT
)

CREATE TABLE player (
  -- club players
  player_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  date_of_birth DATE NOT NULL,
  position VARCHAR(64) DEFAULT 'nie nadano',
)

CREATE TABLE contract (
  -- contract info for players, coaches
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  salary_or_fee DECIMAL(10, 2) NOT NULL,
  contract_start_date DATE NOT NULL,
  contract_end_date DATE NOT NULL,
  contract_terms TEXT
)

CREATE TABLE user_contract (
  -- connect users with their contracts
  user_id INT NOT NULL,
  contract_id INT NOT NULL
)