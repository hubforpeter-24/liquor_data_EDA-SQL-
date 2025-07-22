-------- Renaming the columns --------- 
ALTER TABLE `type.2`
RENAME COLUMN `Recordedconsumption` to `Recorded Consumption`,
RENAME COLUMN `Unrecordedconsumption` to `Unrecorded Consumption`,
RENAME COLUMN `Beer(%)` to `Beer (%)`,
RENAME COLUMN `Wine(%)` to `Wine (%)`,
RENAME COLUMN `Spirits(%)` to `Spirits (%)`,
RENAME COLUMN `Other(%)` to `Other (%)`,
RENAME COLUMN `2025projection` to `2025 projection`,
RENAME COLUMN `2030projection` to `2030 projection`;

select * from `type.2`;