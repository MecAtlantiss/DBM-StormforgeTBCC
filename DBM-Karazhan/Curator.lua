---@diagnostic disable: undefined-global
local mod	= DBM:NewMod("Curator", "DBM-Karazhan")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20210813015935")
mod:SetCreatureID(15691)
mod:SetEncounterID(656, 2448)
mod:SetModelID(16958)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 30254 30403",
	"SPELL_CAST_SUCCESS 30235",
	"CHAT_MSG_MONSTER_YELL"
)

--TODO, fix evocate timer in classic TBC, it was fucked with on retail and kinda broken but should work fine in TBC
--EDIT, it seems there is a max evo timer of 115, but if you kill sparks early he spawns new ones early and if you keep doing this you caan shorten timer considerably
--As such, this mod would need to recheck boss energy every time adds spawn and live update timer off UNIT_POWER maybe?
--ability.id = 30254 and type = "cast"
local warnAdd			= mod:NewAnnounce("warnAdd", 3, "136116")
local warnEvo			= mod:NewSpellAnnounce(30254, 2)
local warnArcaneInfusion= mod:NewSpellAnnounce(30403, 4)

local timerEvo			= mod:NewBuffActiveTimer(20, 30254, nil, nil, nil, 6)
local timerNextEvo		= mod:NewNextTimer(122, 30254, nil, nil, nil, 6)

--local berserkTimer		= mod:NewBerserkTimer(720)

mod:AddRangeFrameOption("10", nil, true)

local addGUIDS = {}

function mod:OnCombatStart(delay)
	table.wipe(addGUIDS)
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(10)
	end

	timerNextEvo:Start(102)
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 30254 then
		warnEvo:Show()
		timerEvo:Start()
	elseif args.spellId == 30403 then
		warnArcaneInfusion:Show()
		timerNextEvo:Stop()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 30235 and not addGUIDS[args.sourceGUID] then
		addGUIDS[args.sourceGUID] = true
		if self:AntiSpam(3, 1) then
			warnAdd:Show()
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == "Your request cannot be processed." then
		timerNextEvo:Start()
	end
end
