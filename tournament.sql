-- drop the database if it already exists
DROP DATABASE IF EXISTS tournament;

-- create database 'tournament'
CREATE DATABASE tournament;

-- connect to the database
\connect tournament

-- drop the tables if they already exist
DROP TABLE IF EXISTS player CASCADE;
DROP TABLE IF EXISTS match CASCADE;
DROP VIEW IF EXISTS standings CASCADE;

-- table for players in the tournament
CREATE TABLE players
(pid serial PRIMARY KEY ,
 pname varchar(30)
);


 -- table for matches played
 CREATE TABLE matches
 (mid serial PRIMARY KEY ,
  winner INTEGER ,
  loser INTEGER ,
  FOREIGN KEY(winner) REFERENCES players(pid) ,
  FOREIGN KEY(loser) REFERENCES players(pid)
 );

-- view for standings sorted by wins in descending order
 CREATE VIEW standings AS
 SELECT players.pid,players.pname ,
(SELECT count(matches.winner) from matches where matches.winner=players.pid) as wins ,
 (SELECT count(*) from matches where players.pid in (winner,loser)) as played
 FROM players
 ORDER BY wins DESC;
