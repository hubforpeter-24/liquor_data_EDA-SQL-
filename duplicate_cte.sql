-- 1. Removing duplicates -- 

WITH duplicate_cte AS
(
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY Country) AS row_num
FROM `type.1_duplicate`
)

Select * 
FROM duplicate_cte
WHERE row_num > 1;

-- Checking to confirm if its duplicate -- 
select * from `type.1_duplicate`
WHERE Country = 'Albania';

CREATE TABLE `type.2` (
  `Country` text,
  `Recordedconsumption` text,
  `Unrecordedconsumption` text,
  `Beer(%)` text,
  `Wine(%)` text,
  `Spirits(%)` text,
  `Other(%)` text,
  `2025projection` text,
  `2030projection` text,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


Select *
From `type.2`

INSERT INTO `type.2`
SELECT *,
ROW_NUMBER() OVER(
PARTITION BY Country) AS row_num
FROM `type.1_duplicate`;

select * 
from `type.2`
Where row_num > 1;

DELETE
from `type.2`
Where row_num > 1;

select * 
from `type.2`;