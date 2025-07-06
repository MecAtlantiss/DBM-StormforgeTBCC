if GetLocale() ~= "zhTW" then return end

local L

------------------------
--  Rage Winterchill  --
------------------------
L = DBM:GetModLocalization("Rage")

L:SetGeneralLocalization{
	name = "瑞齊·凜冬"
}

-----------------
--  Anetheron  --
-----------------
L = DBM:GetModLocalization("Anetheron")

L:SetGeneralLocalization{
	name = "安納塞隆"
}

----------------
--  Kazrogal  --
----------------
L = DBM:GetModLocalization("Kazrogal")

L:SetGeneralLocalization{
	name = "卡茲洛加"
}

---------------
--  Azgalor  --
---------------
L = DBM:GetModLocalization("Azgalor")

L:SetGeneralLocalization{
	name = "亞茲加洛"
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
	name 		= "小怪模組"
}
L:SetWarningLocalization{
	WarnWave	= "%s"
}
L:SetTimerLocalization{
	TimerWave	= "下一波"
}
L:SetOptionLocalization{
	WarnWave		= "當新一波進攻到來時顯示警告",
	DetailedWave	= "當新一波進攻到來時顯示詳細警告(何種怪)",
	TimerWave		= "為下一波進攻顯示計時器"
}
L:SetMiscLocalization{
	HyjalZoneName	= "海加爾山",
	Thrall			= "索爾",
	Jaina			= "珍娜·普勞德摩爾女士",
	GeneralBoss		= "首領到來",
	RageWinterchill	= "瑞齊·凜冬到來",
	Anetheron		= "安納塞隆到來",
	Kazrogal		= "卡茲洛加到來",
	Azgalor			= "亞茲加洛到來",
	WarnWave_0		= "第%s/8波",
	WarnWave_1		= "第%s/8波 - %s %s",
	WarnWave_2		= "第%s/8波 - %s %s 和 %s %s",
	WarnWave_3		= "第%s/8波 - %s %s, %s %s 和 %s %s",
	WarnWave_4		= "第%s/8波 - %s %s, %s %s, %s %s 和 %s %s",
	WarnWave_5		= "第%s/8波 - %s %s, %s %s, %s %s, %s %s 和 %s %s",
	RageGossip		= "我和我的同伴都與你同在，普勞德摩爾女士。",
	AnetheronGossip	= "不管阿克蒙德要派誰來對付我們，我們都已經準備好了，普勞德摩爾女士。",
	KazrogalGossip	= "我與你同在，索爾。",
	AzgalorGossip	= "我們無所畏懼。",
	Ghoul			= "食屍鬼",
	Abomination		= "憎惡",
	Necromancer		= "死靈法師",
	Banshee			= "女妖",
	Fiend			= "地穴惡魔",
	Gargoyle		= "石像鬼",
	Wyrm			= "冰龍",
	Stalker			= "惡魔捕獵者",
	Infernal		= "巨型地獄火",
	RAGE_YELL_PULL	    = "燃燒軍團最後的征戰已經開始了!世界的掌控權再次落入我們手中。無人可以倖免!",
	ANETHERON_YELL_PULL	= "你們要守護的世界躲不了毀滅的命運!逃離這兒，也許可以延長你們那可悲的生命!",
	KAZROGAL_YELL_PULL	= "哭著乞求憐憫吧!不久之後你們將喪失無意義的生命!",
	AZGALOR_YELL_PULL	= "放棄希望吧!燃燒軍團已經捲土重來，誓言要完成多年前開始的毀滅計畫。這次，沒有人能活著離開!"
}
