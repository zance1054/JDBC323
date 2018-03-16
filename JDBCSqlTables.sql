/*
    Writing Group:  GroupName, HeadWriter, YearFormed, Subject
    Book         :  BookTitle, YearPublished, NumberPages
    Publishers   :  PubName, PubAddress, PubPhone, PubEmail
*/

CREATE TABLE writingGroup
(
  groupName  VARCHAR(20)    NOT NULL,
  headWriter VARCHAR(20)    NOT NULL,
  yearFormed INTEGER        NOT NULL,
  subject    VARCHAR(20)    NOT NULL,
  CONSTRAINT pk_writingGroup PRIMARY KEY (GroupName)
);

CREATE TABLE book
(
  bookTitle VARCHAR(20) NOT NULL,
  yearPublished INTEGER NOT NULL,
  numberPages   INTEGER NOT NULL,
  groupName  VARCHAR(20)    NOT NULL,       /* Foreign Key */
  punlisherName VARCHAR(20) NOT NULL,             /* Foreign Key */
  CONSTRAINT pk_book PRIMARY KEY (GroupName, BookTitle)
);

CREATE TABLE publishers
(
  publisherName VARCHAR(20) NOT NULL,
  pubAddress  VARCHAR(20) NOT NULL,
  publisherPhone    VARCHAR(11) NOT NULL,
  pubEmail    VARCHAR(20) NOT NULL,
  CONSTRAINT pk_publishers PRIMARY KEY (PublisherName)
);