USE library;

INSERT INTO book
VALUES ('BO-1234', 'The return of the king', 'Tolkien', 'Best seller', 5),
       ('BO-1235', 'The twin tower', 'Tolkien', 'Second best seller', 2),
       ('BO-1236', 'Tom and jerry', 'Peter', 'Cartoon', 3);
       
INSERT INTO student
VALUES ('SV-1234', 'Tran Van Khanh', 'C0222G1'),
       ('SV-1235', 'Nguyen Long', 'C0222G2'),
       ('SV-1236', 'Chien Phong', 'C0222G3');
       
INSERT INTO book_rent_tag
VALUES ('MS-1234', 'BO-1234','SV-1234', 0, '2022-06-10', '2022-06-15'),
	   ('MS-1235', 'BO-1234','SV-1234', 0, '2022-06-10', '2022-06-15');