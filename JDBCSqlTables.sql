/*
    Writing Group:  GroupName, HeadWriter, YearFormed, Subject
    Book         :  BookTitle, YearPublished, NumberPages
    Publishers   :  PubName, PubAddress, PubPhone, PubEmail
*/

CREATE TABLE writingGroup
(
  groupName  VARCHAR(20)    NOT NULL,
  headWriter VARCHAR(20)    NOT NULL,
  yearFormed VARCHAR(5)       NOT NULL,
  subject    VARCHAR(20)    NOT NULL,
  CONSTRAINT pk_writingGroup PRIMARY KEY (groupName)
);

CREATE TABLE book
(
  bookTitle VARCHAR(20) NOT NULL,
  yearPublished VARCHAR(5) NULL,
  numberPages   VARCHAR(5) NULL,
  groupName  VARCHAR(20)    NOT NULL,       /* Foreign Key */
  punlisherName VARCHAR(20) NOT NULL,             /* Foreign Key */
  CONSTRAINT pk_book PRIMARY KEY (GroupName, BookTitle)
);

CREATE TABLE publishers
(
  publisherName VARCHAR(20) NOT NULL,
  pubAddress  VARCHAR(20) NOT NULL,
  publisherPhone    VARCHAR(20) NOT NULL,
  pubEmail    VARCHAR(20) NOT NULL,
  CONSTRAINT pk_publishers PRIMARY KEY (PublisherName)
);

INSERT INTO writingGroup VALUES('Gryffindors', 'Harry', '2017', 'Fantasy');
INSERT INTO writingGroup VALUES('writingLife', 'Tom', '2014', 'Drama');

INSERT INTO publishers VALUES('Steve Smith', '123 Rose St.', '555-555-5555', 'steve@gmail.com');

DROP TABLE writingGroup;
DROP TABLE book;
DROP TABLE publishers;
