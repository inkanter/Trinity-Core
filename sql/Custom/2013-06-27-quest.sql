-- 永志不渝
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3644;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3667;

DELETE FROM `creature_ai_texts` WHERE `entry` = -661;
DELETE FROM `creature_ai_texts` WHERE `entry` = -662;
DELETE FROM `creature_ai_texts` WHERE `entry` = -663;
DELETE FROM `creature_ai_texts` WHERE `entry` = -664;
DELETE FROM `creature_ai_texts` WHERE `entry` = -665;
DELETE FROM `creature_ai_texts` WHERE `entry` = -554;

UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 3644;
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 3667;

DELETE FROM `creature_text` WHERE `entry` = 3667;
INSERT INTO `creature_text` VALUES
(3667,0,0,"终于, 我的灵魂得到解脱... 啊, 亲爱的塞瑞利恩...",12,0,100,1,0,0,"3667_say0"),                
(3667,1,0,"岁月对我和你都很残酷，我的爱人......但最后我们还是重逢了。",12,0,100,25,0,0,"3667_say1"),
(3667,2,0,"亲爱的，不要为此而感到内疚。你使我从无尽的苦楚和折磨中解脱了出来，我只会为此而更加爱你。",12,0,100,0,0,0,"3667_say2"),
(3667,3,0,"但是，即使是这经过数千年的奋力才换来的重逢也是如此短暂......我和这个世界的连接正在逐渐减弱，我正在慢慢离开它......离开你......",12,0,100,0,0,0,"3667_say3"),
(3667,4,0,"再见了，塞瑞利恩，我的爱人。我们终能再见......",12,0,100,0,0,0,"3667_say4"),
(3667,5,0,"安娜雅那柔和的声音在薄雾中轻轻回响，“我永远爱你......”",16,0,100,0,0,0,"3667_say5");

DELETE FROM `creature_text` WHERE `entry` = 3644;
INSERT INTO `creature_text` VALUES
(3644,0,0,"安娜雅.....?我得双眼没有欺骗我吗？真的是你吗？",12,0,100,1,0,0,"3644_say0"),
(3644,1,0,"命运是如此残酷，它让我们再分别了数千年之后才能重逢.....",12,0,100,0,0,0,"3644_say1"),
(3644,2,0,"我的爱人，你恨我吗？我在万般无奈之下摧毁了你的躯壳，因为只有这样才能让你从痛苦中永久地解脱。",12,0,100,0,0,0,"3644_say2"),
(3644,3,0,"不！安娜雅.....安娜雅！请不要离开我！不......",14,0,100,0,0,0,"3644_say3"),
(3644,4,0,"怎么办，我的爱人？没有你，我怎么办......没有你......我如何有勇气在这个世界上生存........",12,0,100,18,0,0,"3644_say4");

DELETE FROM `smart_scripts` WHERE `entryorguid` = 3644;
INSERT INTO `smart_scripts` VALUES
(3644,0,0,0,20,0,100,1,963,0,0,0,80,364400,0,0,0,0,0,1,0,0,0,0,0,0,0,"完成任务运行脚本");

DELETE FROM `smart_scripts` WHERE `entryorguid` = 364400;
INSERT INTO `smart_scripts` VALUES
(364400,9,0,0,0,0,100,1,2000,2000,0,0,12,3667,2,42000,0,0,0,8,0,0,0,6425.59,602.56,9.46,4.395,"召唤安娜雅"),
(364400,9,1,0,0,0,100,1,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line0"),
(364400,9,2,0,0,0,100,1,8000,8000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line1"),
(364400,9,3,0,0,0,100,1,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line2"),
(364400,9,4,0,0,0,100,1,15000,15000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line3"),
(364400,9,5,0,0,0,100,1,15000,15000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line4");


DELETE FROM `smart_scripts` WHERE `entryorguid` = 3667;
INSERT INTO `smart_scripts` VALUES
(3667,0,0,0,0,0,100,0,3000,5000,14000,17000,11,5884,0,0,0,0,0,2,0,0,0,0,0,0,0,"Anaya Dawnrunner - Cast Banshee Curse"),
(3667,0,1,0,6,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Anaya Dawnrunner - Say on Death"),
(3667,0,2,3,54,0,100,1,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"召唤后切换阵营"),
(3667,0,3,0,61,0,100,1,0,0,0,0,80,366700,0,0,0,0,0,1,0,0,0,0,0,0,0,"召唤后运行脚本");

DELETE FROM `smart_scripts` WHERE `entryorguid` = 366700;
INSERT INTO `smart_scripts` VALUES
(366700,9,0,0,0,0,100,1,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line1"),
(366700,9,1,0,0,0,100,1,15000,15000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line2"),
(366700,9,2,0,0,0,100,1,5000,5000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line3"),
(366700,9,3,0,0,0,100,1,10000,10000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line4"),
(366700,9,4,0,0,0,100,1,5000,5000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"3644_say_line5");

-- 追加NPC莫克迪普

DELETE FROM `creature` WHERE `id` = 10323;
INSERT INTO `creature` VALUES
(231124,10323,1,1,1,0,1,4975.75,560.95,4.23502,5.64742,600,0,0,516,0,0,0,0,0);

