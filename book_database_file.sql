/*-----------------------------------------------------------------------
The following was created for a Java DB using Netbeans IDE and Apache/Derby.
*/------------------------------------------------------------------------

CREATE TABLE AUTHORS (
    AUTHOR_LAST_NAME VARCHAR(100) NOT NULL, 
    AUTHOR_FIRST_NAME VARCHAR(100) NOT NULL, 
    AUTHOR_DOB DATE NOT NULL, 
    AUTHOR_NATIONALITY VARCHAR(100) NOT NULL, 
    AUTHOR_ID DECIMAL(5) NOT NULL, 
    PRIMARY KEY (AUTHOR_ID)
);

CREATE TABLE BOOKS (
    ISBN VARCHAR(13) NOT NULL, 
    TITLE VARCHAR(100) NOT NULL, 
    PAGECOUNT INTEGER, 
    GENRE VARCHAR(40), 
    AUTHOR_ID DECIMAL(5), 
    PRIMARY KEY (ISBN)
);

CREATE TABLE BOOKSREAD (
    ISBN VARCHAR(13) NOT NULL, 
    DATEREAD DATE, 
    RATING DECIMAL(1), 
    REREAD BOOLEAN, 
    AUTHOR_ID DECIMAL(5) NOT NULL, 
    BOOKSREAD_ID CHAR(10) NOT NULL, 
    PRIMARY KEY (BOOKSREAD_ID)
);

ALTER TABLE Books
ADD CONSTRAINT FK_Authors_Author_id
FOREIGN KEY (AUTHOR_ID)
REFERENCES AUTHORS (AUTHOR_ID);

ALTER TABLE BooksRead
ADD CONSTRAINT FK_BooksRead_Author_id
FOREIGN KEY (AUTHOR_ID)
REFERENCES AUTHORS (AUTHOR_ID);

ALTER TABLE BooksRead
ADD CONSTRAINAT FK_BooksRead_ISBN
FOREIGN KEY (ISBN)
REFERENCES BOOKS (ISBN);

/*---------------------
INSERT values for AUTHORS
*/---------------------
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Rowling', 'J.K.', '1965-07-31', 'English', 1);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Gaiman', 'Neil', '1960-11-10', 'English', 2);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Martin', 'George R.R.', '1948-09-20', 'American', 3);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Keller', 'Timothy', '1950-09-23', 'American', 4);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Hochschild', 'Arlie Russell', '1940-01-15', 'American', 5);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Tolkien', 'J.R.R.', '1892-01-03', 'English', 6);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Faulkner', 'William', '1897-09-25', 'American', 7);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Vonnegut', 'Kurt', '1922-11-11', 'American', 8);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Baldwin', 'James', '1924-08-02', 'American', 9);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Gibbs', 'Nancy', '1960-01-25', 'American', 10);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Carter', 'Stephen L.', '1954-10-26', 'American', 11);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Solomon', 'Maynard', '1930-01-05', 'American', 12);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Harris', 'Sam', '1967-04-09', 'American', 13);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Bourdain', 'Anthony', '1956-06-25', 'American', 14);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Larsson', 'Stieg', '1954-08-15', 'Swedish', 15);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Morris', 'Edmund', '1940-05-27', 'English', 16);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('de Botton', 'Alain', '1969-12-20', 'Swiss', 17);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Marquez', 'Gabriel Garcia', '1927-03-06', 'Spanish', 18);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Ferguson', 'Craig', '1962-05-17', 'Scottish', 19);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Lewis', 'C.S.', '1898-11-29', 'English', 20);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Isaacson', 'Walter', '1952-05-20', 'American', 21);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Collins', 'Francis', '1950-04-14', 'American', 22);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Aslan', 'Reza', '1972-05-03', 'Iranian', 23);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Wright', 'Robert', '1957-01-15', 'American', 24);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Sagan', 'Carl', '1934-11-09', 'American', 25);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Roth', 'Philip', '1933-03-19', 'American', 26);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('King', 'Stephen', '1947-09-21', 'American', 27);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Hitchens', 'Christopher', '1949-04-14', 'English', 28);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Huxley', 'Aldous', '1894-07-26', 'English', 29);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Clarke', 'Susanna', '1959-11-01', 'English', 30);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Singer', 'Peter', '1946-07-06', 'Australian', 31);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Eggers', 'Dave', '1970-03-12', 'American', 32);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Dostoevsky', 'Fyodor', '1821-11-11', 'Russian', 33);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('McCullough', 'David', '1933-07-07', 'American', 34);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Snyder', 'Timothy', '1969-08-18', 'American', 35);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Haass', 'Richard N.', '1951-07-28', 'American', 36);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Nye', 'Bill', '1955-11-27', 'American', 37);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Foster', 'Thomas C.', '1951-05-08', 'American', 38);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Richards', 'Keith', '1943-12-18', 'English', 39);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Orwell', 'George', '1903-06-25', 'English', 40);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Jacobs', 'Alan', '1958-02-25', 'English', 41);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Gaffigan', 'Jim', '1966-07-07', 'American', 42);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Ehrman', 'Bart D.', '1955-10-05', 'American', 43);
INSERT INTO BHUFF1.AUTHORS (AUTHOR_LAST_NAME, AUTHOR_FIRST_NAME, AUTHOR_DOB, AUTHOR_NATIONALITY, AUTHOR_ID) 
	VALUES ('Franken', 'Al', '1951-05-21', 'American', 44);

/*-----------------------
INSERT values for Books
*/-----------------------

INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780451524935', '1984', 328, 'Dystopian ', 40);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780061998492', 'American On Purpose: The Improbable Adventures of an Unlikely Patriot', 288, 'Memoir', 19);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780060652920', 'Mere Christianity', 227, 'Apologetics', 20);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780061448720', 'The Narnian', 400, 'Biography', 41);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780060652968', 'The Problem of Pain', 176, 'Apologetics', 20);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780062565396', 'The Four Loves', 192, 'Apologetics', 20);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780064404990', 'The Lion, the Witch and the Wardrobe', 208, 'Fantasy', 20);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781455540419', 'Giant of the Senate', 416, 'Memoir', 44);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780345339737', 'The Return of the King', 432, 'Fantasy', 6);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780345339713', 'The Two Towers', 352, 'Fantasy', 6);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780345339706', 'The Fellowship of the Ring', 432, 'Fantasy', 6);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780062080233', 'American Gods', 560, 'Fantasy', 2);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780679732259', 'As I Lay Dying', 267, 'Southern Gothic', 7);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780375701429', 'American Pastoral', 423, 'Novel', 26);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780316925280', 'A Supposedly Fun Thing I''ll Never Do Again', 368, 'Essay', 46);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780743258074', 'Benjamin Franklin: An American Life', 586, 'Biography', 21);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780028647173', 'Beethoven', 565, 'Biography', 12);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780060759759', 'Beethoven: The Universal Composer', 256, 'Biography', 16);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780385334204', 'Breakfast of Champions', 303, 'Novel', 8);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780060850524', 'Brave New World', 288, 'Science Fiction', 29);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780374528379', 'The Brothers Karamazov', 824, 'Philosophical novel', 33);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780345807298', 'The Circle', 497, 'Science Fiction', 32);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780316013321', 'Consider the Lobster', 343, 'Essay', 46);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780486454115', 'Crime and Punishment', 430, 'Philosophical novel', 33);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780385333481', 'Cat''s Cradle', 304, 'Satire', 8);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780385349079', 'Dad Is Fat', 288, 'Memoir', 42);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780156262248', 'Down and Out In Paris And London', 224, 'Memoir', 40);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780743264747', 'Einstein: His Life and Universe', 704, 'Biography', 21);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780316067447', 'The Evolution of God', 592, 'Philosophy/Religion', 24);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781451627282', '11/22/63', 849, 'Science Fiction', 27);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780393327656', 'The End of Faith', 348, 'Philosophy/Religion', 13);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780691172477', 'Ethics in the Real World: 82 Brief Essays on Things That Matter', 376, 'Philosophy', 31);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780465071999', 'Foreign Policy Begins At Home', 224, 'Politics', 36);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780446697965', 'God Is Not Great', 336, 'Philosophy/Religion', 28);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780061173929', 'God''s Problem', 304, 'Philosophy/Religion', 43);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780307949486', 'The Girl With The Dragon Tatoo', 672, 'Crime', 15);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780307949509', 'The Girl Who Played With Fire', 752, 'Crime', 15);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780307742537', 'The Girl Who Kicked The Hornet''s Nest', 832, 'Crime', 15);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780553579901', 'A Clash of Kings', 1040, 'Fantasy', 3);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780553573428', 'A Storm of Swords', 1216, 'Fantasy', 3);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780553582024', 'A Feast for Crows', 1104, 'Fantasy', 3);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780553582017', 'A Dance with Dragons', 1152, 'Fantasy', 3);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780307588371', 'Gone Girl', 422, 'Crime', 45);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780439708180', 'Harry Potter and the Sorcerer''s Stone', 322, 'Fantasy', 1);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780439064873', 'Harry Potter and the Chamber of Secrets', 357, 'Fantasy', 1);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780439136365', 'Harry Potter and the Prisoner of Azkaban', 475, 'Fantasy', 1);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780439139601', 'Harry Potter and the Goblet of Fire', 752, 'Fantasy', 1);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780439358071', 'Harry Potter and the Order of the Phoenix', 896, 'Fantasy', 1);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780439785969', 'Harry Potter and the Half-Blood Prince', 652, 'Fantasy', 1);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780545139700', 'Harry Potter and the Deathly Hallows', 784, 'Fantasy', 1);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780679779155', 'How Proust Can Change Your Life', 208, 'Philosophy', 17);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780446540346', 'Hitch-22: A Memoir', 448, 'Memoir', 28);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780062301673', 'How to Read Literature Like a Professor', 336, 'Instructional', 38);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780316066525', 'Infinite Jest', 1079, 'Satire', 46);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780307474483', 'The Impeachment of Abraham Lincoln', 667, 'Historical fiction', 11);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780743223133', 'John Adams', 752, 'Biography', 34);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780765356154', 'Jonathan Strange and Mr. Norrell', 1024, 'Fantasy', 30);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780060899226', 'Kitchen Confidential', 312, 'Memoir', 14);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780316034388', 'Life', 576, 'Memoir', 39);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781416542742', 'The Language of God', 305, 'Philosophy/Religion', 22);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780307278777', 'Letter to a Christian Nation', 144, 'Philosophy/Religion', 13);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780060859510', 'Misquoting Jesus', 242, 'Philosophy/Religion', 43);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781455522996', 'No One Left to Lie To', 240, 'Politics', 28);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780307476838', 'The News: A User''s Manual', 272, 'Philosophy', 17);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781439156810', 'On Writing: A Memoir of the Craft', 288, 'Instructional', 27);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780060883287', 'One Hundred Years of Solitude', 417, 'Magical Realism', 18);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781439127728', 'The President''s Club', 656, 'History', 10);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780345376596', 'Pale Blue Dot', 384, 'Science', 25);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781400079490', 'The Plot Against America', 391, 'Historical fiction', 26);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781594483493', 'The Reason for God', 310, 'Philosophy/Religion', 4);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781501127625', 'Steve Jobs', 656, 'Biography', 21);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780385333849', 'Slaughterhouse-Five', 288, 'Satire', 8);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780679732242', 'The Sound and the Fury', 326, 'Southern Gothic', 7);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781620972250', 'Strangers in Their Own Land', 368, 'Antrhopological', 5);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780671869205', 'Truman', 1120, 'Biography', 34);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781250074225', 'Undeniable', 352, 'Science', 37);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780465030507', 'Why Orwell Matters', 224, 'Philosophy', 28);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780812981483', 'Zealot', 336, 'Philosophy/Religion', 23);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780679744726', 'The Fire Next Time', 106, 'Memoir', 9);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780804190114', 'On Tyranny: Twenty Lessons from the Twentieth Century', 126, 'Philosophy', 35);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781476770383', 'Revival', 405, 'Science Fiction', 27);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9781501143519', 'The Dark Tower: The Gunslinger', 288, 'Science Fiction', 27);
INSERT INTO BHUFF1.BOOKS (ISBN, TITLE, PAGECOUNT, GENRE, AUTHOR_ID) 
	VALUES ('9780553593716', 'A Game of Thrones', 864, 'Fantasy', 3);

/*-------------------------
INSERT values for BooksRead
*/-------------------------

INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780451524935', '2010-07-22', 4, false, 40, '1000000024');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780061998492', '2010-06-21', 5, false, 19, '1000000022');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780060652920', '2007-10-02', 4, false, 20, '1000000013');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780061448720', '2008-01-12', 4, false, 41, '1000000015');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780060652968', '2007-08-10', 3, false, 20, '1000000012');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780062565396', '2008-06-22', 4, false, 20, '1000000017');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780064404990', '2006-04-03', 4, false, 20, '1000000009');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781455540419', '2017-09-02', 5, false, 44, '1000000083');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780345339737', '2005-02-14', 4, true, 6, '1000000008');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780345339713', '2005-01-29', 4, true, 6, '1000000007');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780345339706', '2005-01-16', 4, true, 6, '1000000006');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780062080233', '2015-12-29', 4, false, 2, '1000000061');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780679732259', '2016-10-08', 4, false, 7, '1000000071');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780375701429', '2015-03-23', 4, false, 26, '1000000053');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780316925280', '2015-08-12', 4, false, 46, '1000000056');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780743258074', '2012-06-04', 4, false, 21, '1000000031');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780028647173', '2008-11-14', 4, false, 12, '1000000018');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780060759759', '2007-10-22', 5, false, 16, '1000000014');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780385334204', '2016-12-16', 4, false, 8, '1000000078');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780060850524', '2015-08-16', 4, false, 29, '1000000057');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780374528379', '2015-08-28', 4, false, 33, '1000000058');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780345807298', '2013-12-22', 3, false, 32, '1000000048');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780316013321', '2015-08-04', 5, false, 46, '1000000055');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780486454115', '2016-09-16', 4, false, 33, '1000000069');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780385333481', '2016-10-15', 5, false, 8, '1000000072');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780385349079', '2013-10-14', 4, false, 42, '1000000043');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780156262248', '2014-11-28', 5, false, 40, '1000000051');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780743264747', '2010-09-17', 5, false, 21, '1000000025');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780316067447', '2010-07-21', 5, true, 24, '1000000023');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781451627282', '2013-11-08', 4, false, 27, '1000000046');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780393327656', '2016-08-11', 4, true, 13, '1000000066');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780691172477', '2016-12-12', 4, false, 31, '1000000077');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780465071999', '2013-09-24', 4, false, 36, '1000000041');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780446697965', '2013-10-22', 5, true, 28, '1000000044');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780061173929', '2014-07-05', 5, false, 43, '1000000049');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780307949486', '2011-11-20', 5, false, 15, '1000000027');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780307949509', '2011-12-21', 5, false, 15, '1000000029');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780307742537', '2011-01-08', 5, false, 15, '1000000026');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780553593716', '2013-02-19', 4, false, 3, '1000000034');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780553579901', '2013-03-04', 4, false, 3, '1000000035');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780553573428', '2013-03-26', 5, false, 3, '1000000036');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780553582024', '2013-04-21', 3, false, 3, '1000000037');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780553582017', '2013-06-03', 5, false, 3, '1000000038');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780307588371', '2015-02-15', 4, false, 45, '1000000052');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780439708180', '2000-11-18', 5, true, 1, '1000000001');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780439064873', '2000-12-02', 5, true, 1, '1000000002');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780439136365', '2001-06-04', 5, true, 1, '1000000003');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780439139601', '2001-08-10', 5, true, 1, '1000000004');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780439358071', '2004-09-04', 5, true, 1, '1000000005');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780439785969', '2006-07-27', 5, true, 1, '1000000010');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780545139700', '2009-07-03', 5, true, 1, '1000000019');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780679779155', '2015-12-30', 4, false, 17, '1000000062');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780446540346', '2016-08-26', 3, false, 28, '1000000068');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780062301673', '2016-11-21', 4, false, 38, '1000000075');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780316066525', '2015-12-19', 4, false, 46, '1000000060');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780307474483', '2016-11-17', 4, false, 11, '1000000074');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780743223133', '2013-09-22', 4, false, 34, '1000000040');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780765356154', '2008-05-22', 4, false, 30, '1000000016');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780060899226', '2013-12-09', 4, false, 14, '1000000047');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780316034388', '2013-01-12', 4, false, 39, '1000000033');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781416542742', '2009-07-10', 4, false, 22, '1000000020');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780307278777', '2007-06-25', 4, false, 13, '1000000011');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780060859510', '2013-11-01', 4, false, 43, '1000000045');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781455522996', '2012-06-02', 3, false, 28, '1000000030');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780307476838', '2016-01-08', 4, false, 17, '1000000063');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781439156810', '2016-07-31', 5, false, 27, '1000000065');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780060883287', '2017-08-16', 3, false, 18, '1000000081');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781439127728', '2013-08-14', 5, false, 10, '1000000039');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780345376596', '2016-10-02', 4, false, 25, '1000000070');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781400079490', '2017-03-27', 5, false, 26, '1000000079');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781594483493', '2009-12-26', 4, false, 4, '1000000021');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781501127625', '2011-11-26', 5, false, 21, '1000000028');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780385333849', '2014-07-12', 3, false, 8, '1000000050');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780679732242', '2015-07-28', 3, false, 7, '1000000054');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781620972250', '2016-11-27', 5, false, 5, '1000000076');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780671869205', '2012-07-21', 4, false, 34, '1000000032');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781250074225', '2015-09-08', 4, false, 37, '1000000059');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780465030507', '2016-11-03', 3, false, 28, '1000000073');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780812981483', '2013-09-29', 3, false, 23, '1000000042');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780679744726', '2017-08-22', 5, false, 9, '1000000082');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9780804190114', '2017-04-03', 5, false, 35, '1000000080');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781476770383', '2016-07-20', 4, false, 27, '1000000064');
INSERT INTO BHUFF1.BOOKSREAD (ISBN, DATEREAD, RATING, REREAD, AUTHOR_ID, BOOKSREAD_ID) 
	VALUES ('9781501143519', '2016-08-18', 4, false, 27, '1000000067');

