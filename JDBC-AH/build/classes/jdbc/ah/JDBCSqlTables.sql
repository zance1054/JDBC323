/*
    Writing Group:  GroupName, HeadWriter, YearFormed, Subject
    Book         :  BookTitle, YearPublished, NumberPages
    Publishers   :  PubName, PubAddress, PubPhone, PubEmail
*/

CREATE TABLE writingGroup
(
  GroupName  VARCHAR(20)    NOT NULL,
  HeadWriter VARCHAR(20)    NOT NULL,
  YearFormed INTEGER        NOT NULL,
  Subject    VARCHAR(20)    NOT NULL,
  CONSTRAINT pk_writingGroup PRIMARY KEY (GroupName)
);

CREATE TABLE book
  (
  BookTitle VARCHAR(20) NOT NULL,
  YearPublished INTEGER NOT NULL,
  NumberPages   INTEGER NOT NULL,
  GroupName  VARCHAR(20)    NOT NULL,       /* Foreign Key */
  PubName VARCHAR(20) NOT NULL,             /* Foreign Key */
  CONSTRAINT pk_book PRIMARY KEY (GroupName, BookTitle)
  );

CREATE TABLE publishers
(
PubName VARCHAR(20) NOT NULL,
PubAddress  VARCHAR(20) NOT NULL,
PubPhone    VARCHAR(11) NOT NULL,
PubEmail    VARCHAR(20) NOT NULL,
CONSTRAINT pk_publishers PRIMARY KEY (PubName)
);