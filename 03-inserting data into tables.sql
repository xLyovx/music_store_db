INSERT INTO singers (name, country) VALUES 
('Adele', 'United Kingdom'),
('Beyonce', 'United States'),
('Ed Sheeran', 'United Kingdom'),
('Taylor Swift', 'United States'),
('Shakira', 'Colombia'),
('Enrique Iglesias', 'Spain'),
('Celine Dion', 'Canada'),
('Justin Bieber', 'Canada'),
('Rihanna', 'Barbados'),
('BTS', 'South Korea');

INSERT INTO albums (singer_id, title, year, musical_genre, price, stock, description)
VALUES 
(1, '19', 2008, 'Soul', 9.99, 50, 'Debut studio album by Adele.'),
(1, '21', 2011, 'Soul', 12.99, 100, 'Second studio album by Adele.'),
(2, 'Dangerously in Love', 2003, 'R&B', 10.99, 75, 'Debut studio album by Beyoncé.'),
(2, 'B-Day', 2006, 'R&B', 11.99, 80, 'Second studio album by Beyoncé.'),
(3, '+', 2011, 'Pop', 8.99, 60, 'Debut studio album by Ed Sheeran.'),
(3, 'x', 2014, 'Pop', 11.99, 90, 'Second studio album by Ed Sheeran.'),
(4, 'Fearless', 2008, 'Country pop', 9.99, 50, 'Second studio album by Taylor Swift.'),
(4, '1989', 2014, 'Pop', 12.99, 100, 'Fifth studio album by Taylor Swift.'),
(5, 'Pies Descalzos', 1995, 'Latin pop', 7.99, 40, 'Third studio album by Shakira.'),
(5, 'El Dorado', 2017, 'Latin pop', 10.99, 80, 'Eleventh studio album by Shakira.'),
(6, 'Escape', 2001, 'Latin pop', 9.99, 70, 'Fifth studio album by Enrique Iglesias.'),
(6, 'Sex and Love', 2014, 'Latin pop', 12.99, 110, 'Tenth studio album by Enrique Iglesias.'),
(7, 'Falling into You', 1996, 'Pop', 8.99, 60, 'Fourth English-language studio album by Celine Dion.'),
(7, 'A New Day Has Come', 2002, 'Pop', 11.99, 100, 'Seventh English-language studio album by Celine Dion.'),
(8, 'My World 2.0', 2010, 'Pop', 10.99, 90, 'Debut studio album by Justin Bieber.'),
(8, 'Purpose', 2015,'Pop', 12.99, 120, 'Fourth studio album by Justin Bieber.'),
(9, 'Good Girl Gone Bad', 2007, 'Pop', 9.99, 50, 'Third studio album by Rihanna.'),
(9, 'Anti', 2016, 'R&B', 11.99, 100, 'Eighth studio album by Rihanna.'),
(10, 'Love Yourself: Tear', 2018, 'K-pop', 13.99, 150, 'Third Korean-language studio album by BTS.'),
(10, 'Map of the Soul: 7', 2020, 'K-pop', 15.99, 200, 'Fourth Korean-language studio album by BTS.');

INSERT INTO customers (name, email, birthdate, gender) VALUES
('Maria Dolores Gomez','Maria Dolores.95983222J@random.names','1971-06-06','F'),
('Adrian Fernandez','Adrian.55818851J@random.names','1970-04-09','M'),
('Maria Luisa Marin','Maria Luisa.83726282A@random.names','1957-07-30','F'),
('Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M'),
('Pablo Saavedra','Pablo.93733268B@random.names','1960-07-21','M'),
('Marta Carrillo','Marta.55741882W@random.names','1981-06-15','F'),
('Javier Barrio','Javier.54966248C@random.names','1971-04-24','M'),
('Milagros Garcia','Milagros.90074144A@random.names','1964-12-05','F'),
('Carlos Quiros','Carlos.63291957M@random.names','1954-08-28','M'),
('Carmen De la Torre','Carmen.57408761W@random.names','1966-05-14','F');

INSERT INTO transactions (album_id, customer_id, type, start_date, end_date) VALUES 
(1, 1, 'Purchase', '2022-03-15', NULL),
(1, 2, 'Rental', '2022-03-05', '2022-03-10'),
(2, 3, 'Purchase', '2022-03-20', NULL),
(3, 4, 'Rental', '2022-03-10', '2022-03-15'),
(5, 5, 'Purchase', '2022-03-01', NULL),
(6, 6, 'Purchase', '2022-03-18', NULL),
(7, 7, 'Rental', '2022-03-12', '2022-03-17'),
(9, 8, 'Purchase', '2022-03-22', NULL),
(10, 9, 'Rental', '2022-03-03', '2022-03-08'),
(10, 10, 'Purchase', '2022-03-14', NULL);