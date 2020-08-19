INSERT INTO movies (director_id, category_id, title, synopsis, img_url,year)
VALUES(1,1,"Fight Club", "Un empleado de oficina insomne, harto de su vida, se cruza con un vendedor peculiar. Ambos crean un club de lucha clandestino como forma de terapia y, poco a poco, la organización crece y sus objetivos toman otro rumbo." ,"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRm-V9xE3GLaf5bFWR7EnoYydnN4yLvcNxNLLe_mIzXVw4bVy5k", 1999)

INSERT INTO movies (director_id, category_id, title, synopsis, img_url,year)
VALUES((SELECT director_id FROM directors WHERE name ="David" LIMIT 1),
       (SELECT category_id FROM categories WHERE category = "Action" LIMIT 1) , 
       "Zodiac", 
       "Zodiac es una pelicula de un asesino" ,
       "https://i.pinimg.com/originals/3c/51/d8/3c51d81dd52dbaaf19c8b8b0510a6c51.jpg",
      1999);
