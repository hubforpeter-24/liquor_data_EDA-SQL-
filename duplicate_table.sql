-- Creating duplicate table --
SELECT * FROM tailored_1.`type.1`;
Create TABLE `type.1_duplicate`
LIKE tailored_1.`type.1`;

select * from `type.1_duplicate`;

INSERT `type.1_duplicate`
SELECT *
From tailored_1.`type.1`;

SELECT * 
FROM `type.1_duplicate`;

