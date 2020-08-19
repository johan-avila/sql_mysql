-----------------------------------------------------------------------------------------
-----------------------------------------VARIAS------------------------------------------
--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT--INSERT-
-----------------------------------------------------------------------------------------




-----------
INSERT INTO users(name, last_name, birthday)
 VALUES ("Pedro", "Sanchez", "1992-01-31" ), 
        ("Javier", "Rojas", "1999-04-03" ),
        ("Raquel", "Huesca", "1998-11-13" ),
        ("Camila", "Islas", "1977-03-05" ),
        ("Manuel", "Corona", "1972-08-01" ),
        ("Orlando", "Guerrero", "1978-03-16" ),
-- ------------------
---------------------
INSERT INTO categories(category)
 VALUES ("Action"), 
        ("Comedy"),
        ("Drama"),
        ("Fantasy"),
        ("Horror"),
        ("Mystery"),
        ("Romance"),
        ("Thriller")

-----------------------
INSERT INTO directors (name, last_name)
VALUES  ("David","Fincher"),
        ("Chris","Columbus"),
        ("Alfred" ,"Hitchcock"),
        ("Steven", "Spielberg")

-----------------------
INSERT INTO movies (director_id, category_id, title, synopsis, img_url,year)
VALUES(1,1,"Fight Club", "Un empleado de oficina insomne, harto de su vida, se cruza con un vendedor peculiar. Ambos crean un club de lucha clandestino como forma de terapia y, poco a poco, la organización crece y sus objetivos toman otro rumbo." ,"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRm-V9xE3GLaf5bFWR7EnoYydnN4yLvcNxNLLe_mIzXVw4bVy5k", 1999)
