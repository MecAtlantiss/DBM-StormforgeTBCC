if GetLocale() ~= "zhCN" then return end

local L

------------------------
--  Rage Winterchill  --
------------------------
L = DBM:GetModLocalization("Rage")

L:SetGeneralLocalization{
	name = "雷基·冬寒"
}

-----------------
--  Anetheron  --
-----------------
L = DBM:GetModLocalization("Anetheron")

L:SetGeneralLocalization{
	name = "安纳塞隆"
}

----------------
--  Kazrogal  --
----------------
L = DBM:GetModLocalization("Kazrogal")

L:SetGeneralLocalization{
	name = "卡兹洛加"
}

---------------
--  Azgalor  --
---------------
L = DBM:GetModLocalization("Azgalor")

L:SetGeneralLocalization{
	name = "阿兹加洛"
}

------------------
--  Archimonde  --
------------------
L = DBM:GetModLocalization("Archimonde")

L:SetGeneralLocalization{
	name = "阿克蒙德"
}

----------------
-- WaveTimers --
----------------
L = DBM:GetModLocalization("HyjalWaveTimers")

L:SetGeneralLocalization{
	name 		= "普通怪物"
}
L:SetWarningLocalization{
	WarnWave	= "%s",
	WarnWaveSoon= "下一波敌人即将到来"
}
L:SetTimerLocalization{
	TimerWave	= "Next wave"--Translate
}
L:SetOptionLocalization{
	WarnWave		= "Warn when a new wave is incoming",--Translate
	WarnWaveSoon	= "Warn when a new wave is incoming soon",--Translate
	DetailedWave	= "Detailed warning when a new wave is incoming (which mobs)",--Translate
	TimerWave		= "Show a timer for next wave"--Translate
}
L:SetMiscLocalization{
	HyjalZoneName	= "海加尔峰",
	Thrall			= "萨尔",
	Jaina			= "吉安娜·普罗德摩尔",
	RageWinterchill	= "雷基·冬寒",
	Anetheron		= "安纳塞隆",
	Kazrogal		= "卡兹洛加",
	Azgalor			= "阿兹加洛",
	WarnWave_0		= "第%s/8波",
	WarnWave_1		= "第%s/8波 - %s%s",
	WarnWave_2		= "第%s/8波 - %s%s 和 %s%s",
	WarnWave_3		= "第%s/8波 - %s%s, %s%s 和 %s%s",
	WarnWave_4		= "第%s/8波 - %s%s, %s%s, %s%s 和 %s%s",
	WarnWave_5		= "第%s/8波 - %s%s, %s%s, %s%s, %s%s 和 %s%s",
	RageGossip		= "我和我的伙伴们将与您并肩作战，普罗德摩尔女士。",
	AnetheronGossip	= "我们已经准备好对付阿克蒙德的任何爪牙了，普罗德摩尔女士。",
	KazrogalGossip	= "我与你并肩作战，萨尔。",
	AzgalorGossip	= "我们无所畏惧。",
	Ghoul			= "食尸鬼",
	Abomination		= "憎恶",
	Necromancer		= "亡灵巫师",
	Banshee			= "女妖",
	Fiend			= "地穴恶魔",
	Gargoyle		= "石像鬼",
	Wyrm			= "冰霜巨龙",
	Stalker			= "恶魔猎犬",
	Infernal		= "地狱火",
	RAGE_YELL_PULL	    = "燃烧军团的最终战役开始了！这个世界再一次任凭我们宰割。不要留任何活口!",
	ANETHERON_YELL_PULL	= "你们在保卫一个注定要毁灭的世界！逃走吧，那样也许你们还能多活几天！",
	KAZROGAL_YELL_PULL	= "哭喊着求饶吧！你们毫无意义的生命就要结束了！",
	AZGALOR_YELL_PULL	= "放弃所有希望吧！燃烧军团要完成这许多年前就注定的使命。这一次，一切都无可挽回了!"
}
