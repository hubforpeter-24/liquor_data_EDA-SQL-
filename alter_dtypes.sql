-- Changing the datatype --
ALTER TABLE `type.2`
MODIFY COLUMN `Recorded Consumption` int,
MODIFY COLUMN `Unrecorded Consumption` int,
MODIFY COLUMN `Beer (%)` int,
MODIFY COLUMN `Wine (%)` int,
MODIFY COLUMN `Spirits (%)` int,
MODIFY COLUMN `Other (%)` int,
MODIFY COLUMN `2025 projection` int,
MODIFY COLUMN `2030 projection` int;
------------------------------------------
select * from `type.2`;
