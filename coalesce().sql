-- Replacing Null values with '0' using COALESCE() function--
SELECT * 
FROM `type.2`
WHERE `Other(%)` IS NULL; 
----------------------------------------------------------------
SELECT *
FROM `type.2`
WHERE `Beer(%)` IS NULL;
----------------------------------------------------------------
SELECT 
  COALESCE(`Beer(%)`, '0') AS `Beer (%)`,
  COALESCE(`Wine(%)`, 0) AS `Wine (%)`,
  COALESCE(`Spirits(%)`, '0') AS `Spirits (%)`,
  COALESCE(`Other(%)`, '0') AS `Other (%)`
FROM `type.2`;
----------------------------------------------------------------
UPDATE `type.2`
SET
  `Beer(%)` = COALESCE(`Beer(%)`, '0'),
  `Wine(%)` = COALESCE(`Wine(%)`, 0),
  `Spirits(%)` = COALESCE(`Spirits(%)`, '0'),
  `Other(%)`   = COALESCE(`Other(%)`, '0')
WHERE `Beer(%)` IS NULL OR `Wine(%)` IS NULL OR `Spirits(%)` IS NULL OR `Other(%)` IS NULL;
----------------------------------------------------------------
SELECT *
FROM `type.2`;