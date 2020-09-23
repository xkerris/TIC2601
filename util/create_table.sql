-- Select Database that this script will run on
use tic2601;

-- Create 'test' table
CREATE TABLE IF NOT EXISTS TeamMember (
    TeamMemberID int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    PRIMARY KEY (TeamMemberID)
);

-- Pre-populate table
INSERT INTO TeamMember (LastName, FirstName)
VALUES
    ('Ng','Kerris'),
    ('Chua','Brenda'),
    ('Lim','Jamus'),
    ('Singh','Pritam');