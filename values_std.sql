-- Standardising data --
-- 1. Replacing <0.1 to 0 --
SELECT * 
FROM `type.2`
WHERE `Other(%)` LIKE '<0%';


UPDATE `type.2`
SET `Other(%)` = '0'
WHERE `Other(%)` LIKE '<0%';
----------------------------------------------------
UPDATE `type.2`
SET `Beer(%)` = '0'
WHERE `Beer(%)` LIKE '<0%';
----------------------------------------------------
UPDATE `type.2`
SET `Wine(%)` = '0'
WHERE `Wine(%)` LIKE '<0%';
----------------------------------------------------
UPDATE `type.2`
SET `Spirits(%)` = '0'
WHERE `Spirits(%)` LIKE '<0%';
----------------------------------------------------
UPDATE `type.2`
SET `2025projection` = '0'
WHERE `2025projection` LIKE '<0%';
----------------------------------------------------
UPDATE `type.2`
SET `2030projection` = '0'
WHERE `2030projection` LIKE '<0%';
----------------------------------------------------
UPDATE `type.2`
SET `Recordedconsumption` = '0'
WHERE `Recordedconsumption` LIKE '<0%';
----------------------------------------------------
UPDATE `type.2`
SET `Unrecordedconsumption` = '0'
WHERE `Unrecordedconsumption` LIKE '<0%';
----------------------------------------------------
SELECT * 
FROM `type.2`;