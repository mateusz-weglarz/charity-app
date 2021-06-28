INSERT INTO institutions VALUES (1,'Pomoc dzieciom z ubogich rodzin.','Dbam o Zdrowie'),(2,'Pomoc wybudzaniu dzieci ze śpiączki.','A kogo'),(3,'Pomoc osobom znajdującym się w trudnej sytuacji życiowej.','Dla dzieci'),(4,'Pomoc dla osób nie posiadających miejsca zamieszkania','Bez domu');

INSERT INTO donations VALUES (1,'Wrocław',659836589,'Komentarz 1','2021-01-01','21:44:52',5,'Kotlarska 42','50-151',1),(2,'Wrocław',459582148,'Komentarz 2','2021-02-02','21:22:52',8,'Kotlarska 42','50-151',1),(3,'Wrocław',487545124,'Komentarz 3','2021-03-03','21:33:52',3,'Kotlarska 42','50-151',2);

INSERT INTO categories VALUES (1,'ubrania, które nadają się do ponownego użycia'),(2,'ubrania, do wyrzucenia'),(3,'zabawki'),(4,'książki'),(5,'gry planszowe'),(6,'inne');

INSERT INTO donation_categories VALUES (1,1),(1,3),(1,4),(2,1),(2,2),(3,5),(3,1);

INSERT INTO users VALUES (1,'admin@wp.pl', true, 'admin','admin','$2a$10$xNnfVYMOWBzu.f/4Rw1XBuZFg8/4UCSjSNru/..oUPW45sFveehxa'),(2,'user@wp.pl', true, 'user','user','$2a$10$oTbnRpcdGUf30PHMuPmWr.LMV85ExRm9OqiQskztI/ompT0NQAHOK');