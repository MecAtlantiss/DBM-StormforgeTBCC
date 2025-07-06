local mod	= DBM:NewMod("Kazrogal", "DBM-Hyjal")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20210813015935")
mod:SetCreatureID(17888)
mod:SetEncounterID(620, 2470)
mod:SetModelID(17886)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 31447"
	--"SPELL_CAST_SUCCESS 31480"
)

local warnMark		= mod:NewCountAnnounce(31447, 3)
--local warnStomp		= mod:NewSpellAnnounce(31480, 2)

local timerMarkCD	= mod:NewNextCountTimer(38, 31447, nil, nil, nil, 2)

mod.vb.count = 0
mod.vb.time = 38

function mod:OnCombatStart(delay)
	self.vb.count = 0
	self.vb.time = 38
	timerMarkCD:Start(38-delay, 1)
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 31447 then
		self.vb.count = self.vb.count + 1
		self.vb.time = math.max(10, 45 - self.vb.count * 5)
		warnMark:Show(self.vb.count)
		timerMarkCD:Start(self.vb.time, self.vb.count + 1)
	end
end

--function mod:SPELL_CAST_SUCCESS(args)
--	if args.spellId == 31480 then
--		warnStomp:Show()
--	end
--end
