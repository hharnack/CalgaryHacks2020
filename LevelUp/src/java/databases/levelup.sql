/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  806547
 * Created: Feb 16, 2020
 */

DROP DATABASE if exists levelup;
CREATE DATABASE levelup;

USE levelup;

CREATE TABLE users (
    USERNAME VARCHAR(20) PRIMARY KEY,
    PASSWORD VARCHAR(20) NOT NULL,
    POINTS NUMERIC(20),
    ROLE NUMERIC(1) NOT NULL
);

CREATE TABLE events (
    ORGANIZER_ID VARCHAR(20) NOT NULL,
    EVENT_ID NUMERIC PRIMARY KEY,
    EVENT_NAME VARCHAR(20),
    DESCRIPTION VARCHAR(50),
    POINTS NUMERIC(20),
    START_TIME DATE,
    END_TIME DATE,
    CONSTRAINT fk_organizer FOREIGN KEY (ORGANIZER_ID)
    REFERENCES users(USERNAME) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO users(username, password, role)
VALUES("organizer","password", 1);
INSERT INTO users(username, password,points, role)
VALUES("player","password",30, 0);
INSERT INTO events(organizer_id, event_id,event_name,description,points,start_time,end_time)
VALUES("organizer",1, "Hackathon", "Event for hacking", 3,NOW(),NOW() );
INSERT INTO events(organizer_id, event_id,event_name,description,points,start_time,end_time)
VALUES("organizer",2, "Paint Event", "Event for painting", 2,NOW(),NOW() );
INSERT INTO events(organizer_id, event_id,event_name,description,points,start_time,end_time)
VALUES("organizer",3, "Dance Event", "Event for dancing", 3,NOW(),NOW() );
COMMIT;