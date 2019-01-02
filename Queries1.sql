CREATE DATABASE Football;

CREATE TABLE IF NOT EXISTS Team (
  id int(5) NOT NULL AUTO_INCREMENT,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  position varchar(255) NOT NULL,
  number int(11) NOT NULL,
  image varchar(255) NOT NULL,
  user_name varchar(20) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8  AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Team (
  id int(5) NOT NULL AUTO_INCREMENT,
  team_name varchar(255) NOT NULL,
  strength varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Poule (
  id int(5) NOT NULL AUTO_INCREMENT,
  poule_name varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Team_Poule (
  id int(5) NOT NULL AUTO_INCREMENT,
  poule_id int(5) NOT NULL,
  team_id int(5) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

INSERT INTO Team (team_name, strength) VALUES
('Nederland', '8'),
('Duitsland', '7'),
('België', '8'),
('Frankrijk', '6'),
('Rusland', '6'),
('Portugal', '7'),
('Spanje', '7'),
('Italië', '7');

INSERT INTO Poule (poule_name) VALUES
('A'),
('B'),
('C');

INSERT INTO Team_Poule (team_id, poule_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 1),
(8, 2);

'Alle teams uit pool 1'
Select t.team_name from Team_Poule tp, Team t
where tp.team_id = t.id
and tp.poule_id =1;

'Alle teams uit pool 2'
Select t.team_name from Team_Poule tp, Team t
where tp.team_id = t.id
and tp.poule_id =2;

Select team_name, strength from Team;

Select poule_name from Poule;




