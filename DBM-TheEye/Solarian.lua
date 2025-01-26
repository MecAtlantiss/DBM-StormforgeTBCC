---@diagnostic disable: undefined-global
local mod	= DBM:NewMod("Solarian", "DBM-TheEye")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20210822023059")
mod:SetCreatureID(18805)
mod:SetEncounterID(732, 2466)
mod:SetModelID(18239)
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 33045",
	"SPELL_CAST_START 33040",
	"CHAT_MSG_MONSTER_YELL"
)

local warnWrath			= mod:NewTargetNoFilterAnnounce(33045, 2)
local warnSplit			= mod:NewAnnounce("WarnSplit", 4, 39414)
local warnAgent			= mod:NewAnnounce("WarnAgent", 1, 39414)
local warnPriest		= mod:NewAnnounce("WarnPriest", 1, 39414)
local warnPhase2		= mod:NewPhaseAnnounce(2)

local specWarnWrath		= mod:NewSpecialWarningYou(33045, nil, nil, nil, 1, 2)
local yellWrath			= mod:NewYell(33045)

local timerWrath		= mod:NewCDTimer(45, 33040, "Next Wrath", nil, nil, 3)
local timerSplit		= mod:NewTimer(90, "TimerSplit", 39414, nil, nil, 6)
local timerAgent		= mod:NewTimer(4.5, "TimerAgent", 39414, nil, nil, 1)
local timerPriest		= mod:NewTimer(19, "TimerPriest", 39414, nil, nil, 1)

mod:AddInfoFrameOption(33044)
mod.vb.wrathCount = 0

function mod:OnCombatStart(delay)
	mod.vb.wrathCount = 0
	timerSplit:Start(50-delay)
	timerWrath:Start(23-delay)
	if self.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM:GetSpellInfo(33044))
		DBM.InfoFrame:Show(10, "playerdebuffremaining", 33044)
	end
end

function mod:OnCombatEnd()
	if self.Options.InfoFrame then
		DBM.InfoFrame:Hide()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 33045 then
		if args:IsPlayer() then
			specWarnWrath:Show()
			specWarnWrath:Play("beware")
			yellWrath:Yell()
		else
			warnWrath:Show(args.destName)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 33040 then
		mod.vb.wrathCount = mod.vb.wrathCount + 1
		if mod.vb.wrathCount == 1 then
			timerWrath:Start(52)
		elseif mod.vb.wrathCount % 2 == 0 then
			timerWrath:Start(45)
		else
			timerWrath:Start(47)
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellSplit1 or msg:find(L.YellSplit1) or msg == L.YellSplit2 or msg:find(L.YellSplit2) then
		warnSplit:Show()
		timerAgent:Start()
		warnAgent:Schedule(4)
		timerPriest:Start()
		warnPriest:Schedule(20)
		timerSplit:Start()
	elseif msg == L.YellPhase2 or msg:find(L.YellPhase2) then
		warnPhase2:Show()
		timerAgent:Cancel()
		warnAgent:Cancel()
		timerPriest:Cancel()
		warnPriest:Cancel()
		timerSplit:Cancel()
	end
end
