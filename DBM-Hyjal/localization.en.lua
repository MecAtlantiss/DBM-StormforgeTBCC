local L

------------------------
--  Rage Winterchill  --
------------------------
L = DBM:GetModLocalization("Rage")

L:SetGeneralLocalization{
	name = "Rage Winterchill"
}

-----------------
--  Anetheron  --
-----------------
L = DBM:GetModLocalization("Anetheron")

L:SetGeneralLocalization{
	name = "Anetheron"
}

----------------
--  Kazrogal  --
----------------
L = DBM:GetModLocalization("Kazrogal")

L:SetGeneralLocalization{
	name = "Kaz'rogal"
}

---------------
--  Azgalor  --
---------------
L = DBM:GetModLocalization("Azgalor")

L:SetGeneralLocalization{
	name = "Azgalor"
}

------------------
--  Archimonde  --
------------------
L = DBM:GetModLocalization("Archimonde")

L:SetGeneralLocalization{
	name = "Archimonde"
}

----------------
-- WaveTimers --
----------------
L = DBM:GetModLocalization("HyjalWaveTimers")

L:SetGeneralLocalization{
	name 		= "Wave Features"
}
L:SetWarningLocalization{
	WarnWave	= "%s",
}
L:SetTimerLocalization{
	TimerWave	= "Next wave"
}
L:SetOptionLocalization{
	WarnWave		= "Warn when a new wave is incoming",
	DetailedWave	= "Detailed warning when a new wave is incoming (which mobs)",
	TimerWave		= "Show a timer for next wave"
}
L:SetMiscLocalization{
	HyjalZoneName	= "Hyjal Summit",
	Thrall			= "Thrall",
	Jaina			= "Lady Jaina Proudmoore",
	GeneralBoss		= "Boss incoming",
	RageWinterchill	= "Rage Winterchill incoming",
	Anetheron		= "Anetheron incoming",
	Kazrogal		= "Kazrogal incoming",
	Azgalor			= "Azgalor incoming",
	WarnWave_0		= "Wave %s/8",
	WarnWave_1		= "Wave %s/8 - %s %s",
	WarnWave_2		= "Wave %s/8 - %s %s and %s %s",
	WarnWave_3		= "Wave %s/8 - %s %s, %s %s and %s %s",
	WarnWave_4		= "Wave %s/8 - %s %s, %s %s, %s %s and %s %s",
	WarnWave_5		= "Wave %s/8 - %s %s, %s %s, %s %s, %s %s and %s %s",
	RageGossip		= "My companions and I are with you, Lady Proudmoore.",
	AnetheronGossip	= "We are ready for whatever Archimonde might send our way, Lady Proudmoore.",
	KazrogalGossip	= "I am with you, Thrall.",
	AzgalorGossip	= "We have nothing to fear.",
	Ghoul			= "Ghouls",
	Abomination		= "Abominations",
	Necromancer		= "Necromancers",
	Banshee			= "Banshees",
	Fiend			= "Crypt Fiends",
	Gargoyle		= "Gargoyles",
	Wyrm			= "Frost Wyrm",
	Stalker			= "Fel Stalkers",
	Infernal		= "Infernals",
	RAGE_YELL_PULL	    = "The Legion's final conquest has begun! Once again the subjugation of this world is within our grasp. Let none survive!",
	ANETHERON_YELL_PULL	= "You are defenders of a doomed world! Flee here, and perhaps you will prolong your pathetic lives!",
	KAZROGAL_YELL_PULL	= "Cry for mercy! Your meaningless lives will soon be forfeit!",
	AZGALOR_YELL_PULL	= "Abandon all hope! The Legion has returned to finish what was begun so many years ago. This time, there will be no escape!"
}
