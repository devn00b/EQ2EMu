ALTER TABLE `zones`	ADD COLUMN `can_bind` INT NULL DEFAULT '0' AFTER `sky_file`;

UPDATE `zones` SET `can_bind`='1' WHERE  `id`=46;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=114;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=128;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=134;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=135;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=136;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=137;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=138;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=139;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=144;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=166;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=168;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=184;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=221;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=222;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=231;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=233;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=234;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=235;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=236;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=237;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=238;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=470;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=589;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=644;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=645;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=646;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=647;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=648;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=649;
UPDATE `zones` SET `can_bind`='1' WHERE  `id`=660;
