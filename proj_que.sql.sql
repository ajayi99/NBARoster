-- This query will order the Bucks' players by their salaries 
SELECT max(p_salary), p_firstname, p_lastname FROM PLAYER WHERE team_no = '03' GROUP BY p_salary;
--This will show the teams the Warriors have lost to
SELECT TEAM_NAME, OPPONENT_NO FROM TEAM, GAME WHERE GAME_OUTCOME ='L' AND GAME.OPPONENT_NO = TEAM.TEAM_NO;
--Select the information of every Point Guard 
SELECT  * FROM PLAYER  WHERE PLAYER.POSITION = 'PG';
--This query selects all assistant coaches 
SELECT  * FROM COACH  WHERE COACH.POSITION = 'Assistant';
--This query selects all players with over 15 points 
SELECT * FROM PERFORMANCE WHERE POINTS >= ‘15’;
--This query selects all players from team 01
SELECT * FROM PLAYER WHERE TEAM_NO ='01';
--This query selects all players information who are a small forward or center
SELECT * FROM TEAM, PLAYER WHERE TEAM.team_no = PLAYER.TEAM_NO AND PLAYER.POSITION = 'SF' OR PLAYER.position = 'C' GROUP BY PLAYER.PLAYER_NO;
--This query shows the number of wins and losses the Warriors have.
SELECT GAME_OUTCOME, COUNT(GAME_OUTCOME) AS NUMBEROF FROM GAME GROUP BY GAME_OUTCOME;
--Which Heat players went to University of Kentucky 
SELECT P_FIRSTNAME, P_LASTNAME, COLLEGE FROM PLAYER WHERE TEAM_NO = '04' AND COLLEGE = 'Kentucky'
--This query shows which arena the game on October 19, 2021 was played in
SELECT ARENA FROM GAME WHERE GAME_DATE = '19-Oct-21'
--Create a view table of the whole Bucks and Golden State Roster including their coaches.(ERROR)
CREATE VIEW [BucksWarriorsRoster] AS SELECT PLAYER.P_LASTNAME, PLAYER.P_FIRSTNAME, COACH.C_LASTNAME, COACH.C_FIRSTNAME FROM PLAYER, COACH WHERE PLAYER.TEAM_NO = '01' OR PLAYER.TEAM_NO = '03' OR COACH.TEAM_NO = '01' OR COACH.team_no = '03';
SELECT * FROM BucksWarriorsRoster;



