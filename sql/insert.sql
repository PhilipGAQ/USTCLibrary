INSERT INTO `class` (`class_id`, `class_name`) VALUES
(101, 'Classic'),
(102, 'Mystery'),
(103, 'Science Fiction'),
(104, 'Romance'),
(105, 'Adventure'),
(106, 'Historical'),
(107, 'Fantasy'),
(108, 'Poetry'),
(109, 'Philosophy'),
(110, 'Biography');


INSERT INTO `reader` (name, sex, birth, address, phone,username,password,profile_picture) VALUES
('John Doe', 'M', '1985-04-12', '123 Elm Street, New York', '555-1234' ,NULL, '123456' ,'img/images.jpg'),
('Jane Smith', 'F', '1991-07-25', '456 Oak Street, Los Angeles', '555-2345','11112', '123456','img/default.jpg'),
('Michael Brown', 'M', '1980-09-15', '789 Pine Street, Chicago', '555-3456','11113','123456','img/images.jpg'),
('Emily Davis', 'F', '1993-01-30', '101 Birch Street, Houston', '555-4567','11114', '123456','img/images.jpg'),
('William Miller', 'M', '1987-12-08', '202 Maple Street, Philadelphia', '555-5678','11115', '123456','img/images.jpg'),
('Olivia Wilson', 'F', '1995-06-18', '303 Cedar Street, San Francisco', '555-6789','11116', '123456','img/images.jpg');



INSERT INTO `book` (`book_id`, `name`, `author`, `publish`, `ISBN`, `introduction`, `language`, `price`, `pub_date`, `class_id`, `number`) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '978-0743273565', 'A novel about the Jazz Age in New York.', 'en', 10.99, '1925-04-10', 101, 1),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', '978-0446310784', 'A classic novel dealing with racial injustice.', 'en', 9.99, '1960-07-11', 102, 2),
(3, '1984', 'George Orwell', 'Secker & Warburg', '978-0451524935', 'A dystopian novel about totalitarianism.', 'en', 8.99, '1949-06-08', 103, 1),
(4, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '978-0141439518', 'A romantic novel about early 19th-century English society.', 'en', 7.99, '1813-01-28', 104, 2),
(5, 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', '978-0486275592', 'A novel about the adventures of a whaling ship.', 'en', 6.99, '1851-10-18', 105, 3),
(6, 'War and Peace', 'Leo Tolstoy', 'The Russian Messenger', '978-0670034690', 'A novel about Napoleon''s invasion of Russia.', 'ru', 12.99, '1869-01-01', 106, 5),
(7, 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', '978-0142437964', 'A novel about a man who becomes a knight-errant.', 'es', 11.99, '1605-01-01', 107, 1),
(8, 'The Odyssey', 'Homer', 'Unknown', '978-0140268867', 'An epic poem about the journey of Odysseus.', 'gr', 10.99, '1800-01-01', 108, 8),
(9, 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', '978-0486415871', 'A novel about the mental anguish of a murderer.', 'ru', 9.99, '1866-01-01', 109, 1),
(10, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'The Russian Messenger', '978-0140449160', 'A novel about the moral dilemmas of four brothers.', 'ru', 8.99, '1880-01-01', 110, 1),
(11, 'Jane Eyre', 'Charlotte Brontë', 'Smith, Elder & Co.', '978-0142437964', 'A novel about the life of Jane Eyre.', 'en', 7.99, '1847-10-16', 101, 2),
(12, 'Wuthering Heights', 'Emily Brontë', 'Thomas Cautley Newby', '978-0141439556', 'A novel about the passionate love story on the Yorkshire moors.', 'en', 6.99, '1847-12-01', 104, 8),
(13, 'Great Expectations', 'Charles Dickens', 'Chapman & Hall', '978-0142437964', 'A novel about the personal growth of an orphan named Pip.', 'en', 12.99, '1861-10-01', 105, 4),
(14, 'Oliver Twist', 'Charles Dickens', 'Richard Bentley', '978-0142437964', 'A novel about the life of an orphan boy in London.', 'en', 11.99, '1838-02-01', 105, 6);


INSERT INTO `borrow` (`borrow_id`, `book_id`, `reader_id`, `borrow_date`, `due_date`, `return_date`)
VALUES
(null, 7, 4, '2024-06-05', NULL, '2024-06-10'),
(null, 3, 2, '2024-06-03', '2024-06-10', '2024-06-08'),
(null, 12, 1, '2024-06-01', '2024-06-08', NULL),
(null, 5, 3, '2024-06-04', '2024-06-11', NULL),
(null, 9, 5, '2024-06-02', '2024-06-09', '2024-06-07'),
(null, 2, 4, '2024-06-05', '2024-06-12', NULL),
(null, 6, 1, '2024-06-05', '2024-06-9', NULL);

INSERT INTO `reservation` (`student_id`, `book_id`, `reservation_date`,`book_name`) VALUES
(1, 4, '2024-06-05',null),
(2, 8, '2024-06-04',null),
(3, 12, '2024-06-03',null),
(4, 6, '2024-06-02',null),
(5, 7, '2024-06-01',null);

INSERT INTO `admin`
VALUES
( 123, '123', 'admin' , 'PB21020572');

