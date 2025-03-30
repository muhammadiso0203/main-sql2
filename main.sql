--databaza yaratish
CREATE DATABASE game_footbal;
--databazaga ulanish
\ c game_footbal;
--table yaratish
CREATE TABLE tournaments (
    tournament_id SERIAL PRIMARY KEY,
    tournament_name VARCHAR(100),
    start_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20)
);
--tournament_groups tableni yaratish
CREATE TABLE tournament_groups (
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(100),
    tournament_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
--match_fixtures tableni yaratish
CREATE TABLE match_fixtures (
    match_id INT NOT NULL,
    match_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    venue VARCHAR(100),
    home_team_id INT NOT NULL,
    away_team_id INT NOT NULL,
    home_score INT,
    away_score INT,
    tournament_id INT NOT NULL,
    match_status VARCHAR(20)
);
--players tableni yaratish
CREATE TABLE players(
    player_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    date_of_birth DATE NOT NULL,
    position VARCHAR(50),
    team_id INT NOT NULL,
    jersey_number INT
);
--football_teams tableni yaratish
CREATE TABLE football_teams (
    club_id SERIAL PRIMARY KEY,
    club_name VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100),
    founded_year INT
);
--teams tableni yaratish
CREATE TABLE teams(
    team_id SERIAL PRIMARY KEY,
    team_name VARCHAR(100),
    club_id INT NOT NULL,
    group_id INT NOT NULL,
    coach_name VARCHAR(100)
);