local mod	= DBM:NewMod("Archimonde", "DBM-Hyjal")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20210813015935")
mod:SetCreatureID(17968)
mod:SetEncounterID(622, 2472)
mod:SetModelID(20939)
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 31972",
	"SPELL_CAST_START 31970 32014",
	"SPELL_CAST_SUCCESS 31970"
)

local warnGrip			= mod:NewTargetNoFilterAnnounce(31972, 3, nil, "RemoveMagic")--Magic on retail, but I think a curse in TBC
local warnBurst			= mod:NewTargetNoFilterAnnounce(32014, 3)
local warnFear			= mod:NewSpellAnnounce(31970, 3)

local specWarnBurst		= mod:NewSpecialWarningYou(32014, nil, nil, nil, 3, 2)
local yellBurst			= mod:NewYell(32014)

local timerFearCD		= mod:NewCDTimer(41, 31970, nil, nil, nil, 2)
--local timerGripCD		= mod:NewCDTimer(6, 31972, nil, "RemoveMagic", nil, 3, nil, DBM_CORE_L.MAGIC_ICON)

local berserkTimer		= mod:NewBerserkTimer(540)

mod:AddSetIconOption("BurstIcon", 32014, true, false, {8})

function mod:BurstTarget(targetname, uId)
	if not targetname then return end
	if targetname == UnitName("player") then
		specWarnBurst:Show()
		specWarnBurst:Play("targetyou")
		yellBurst:Yell()
	else
		warnBurst:Show(targetname)
	end
	if self.Options.BurstIcon then
		self:SetIcon(targetname, 8, 5)
	end
end

function mod:OnCombatStart(delay)
	timerFearCD:Start(40-delay)
	berserkTimer:Start(-delay)
end

function mod:OnCombatEnd(wipe)
	if wipe then
		DBM:CreatePizzaTimer(52, "Respawn", false)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 31972 then
		warnGrip:Show(args.destName)
	end
end

function mod:SPELL_CAST_START(args)
	--if args.spellId == 31970 then
	--	warnFear:Show()
	--	timerFearCD:Start()
	--end
	if args.spellId == 32014 then
		self:BossTargetScanner(17968, "BurstTarget", 0.05, 10)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 31970 then
		warnFear:Show()
		timerFearCD:Start()
	end
end
