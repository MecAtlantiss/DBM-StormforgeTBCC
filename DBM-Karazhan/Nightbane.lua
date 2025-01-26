---@diagnostic disable: undefined-global
local mod	= DBM:NewMod("NightbaneRaid", "DBM-Karazhan")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20210813015935")
mod:SetCreatureID(17225)
mod:SetEncounterID(662, 2454)
mod:SetModelID(18062)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"CHAT_MSG_MONSTER_EMOTE"
)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 39427",
	"SPELL_CAST_SUCCESS 30128",
	"SPELL_AURA_APPLIED 37098 30129 30130",
	"CHAT_MSG_MONSTER_YELL"
)

local warningFear			= mod:NewSpellAnnounce(39427, 4)
local warningAsh			= mod:NewTargetAnnounce(30130, 2, nil, false)
local WarnAir				= mod:NewAnnounce("DBM_NB_AIR_WARN", 2, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local warningBone			= mod:NewTargetNoFilterAnnounce(37098, 4)

local specWarnCharred		= mod:NewSpecialWarningGTFO(30129, nil, nil, nil, 1, 6)
local specWarnBone			= mod:NewSpecialWarningYou(37098, nil, nil, nil, 2, 2)
--local specWarnSmoke			= mod:NewSpecialWarningTarget(30128, "Healer", nil, nil, 1, 2)

local timerNightbane		= mod:NewCombatTimer(32)
local timerFearCD			= mod:NewCDTimer(40, 39427, "Bellowing Roar CD", nil, nil, 2)
local timerAirPhase			= mod:NewTimer(79, "timerAirPhase", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp", nil, nil, 6)
--local timerBone				= mod:NewBuffActiveTimer(11, 37098, nil, nil, nil, 1)

mod:AddSetIconOption("SetIconOnCharred", 30128, true, false, {1})

mod.vb.lastBlastTarget = "none"

function mod:OnCombatStart()
	self.vb.lastBlastTarget = "none"
	timerFearCD:Start()
end

function mod:CHAT_MSG_MONSTER_EMOTE(msg)
	if msg == L.DBM_NB_EMOTE_PULL then
		timerNightbane:Start()
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 39427 then
		warningFear:Show()
		timerFearCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 30128 and self.vb.lastBlastTarget ~= args.destName then
		self.vb.lastBlastTarget = args.destName
		--specWarnSmoke:Show(args.destName)
		--specWarnSmoke:Play("targetchange")
		if self.Options.SetIconOnCharred then
			self:SetIcon(args.destName, 1)
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 30129 and args:IsPlayer() and not self:IsTrivial() and self:AntiSpam() then
		specWarnCharred:Show(args.spellName)
		specWarnCharred:Play("watchfeet")
	elseif args.spellId == 30130 then
		warningAsh:Show(args.destName)
	elseif args.spellId == 37098 then
		warningBone:Show(args.destName)
		--timerBone:Start()
		if args:IsPlayer() then
			specWarnBone:Show()
			specWarnBone:Play("beware")
			--PlaySoundFile(539493, "MASTER")
		end
	end
end

do
	local function clearSetIcon(self)
		if self.Options.SetIconOnCharred and self.vb.lastBlastTarget ~= "none" then
			self:SetIcon(self.vb.lastBlastTarget , 0)
		end
	end

	function mod:CHAT_MSG_MONSTER_YELL(msg)
		self.vb.lastBlastTarget = "none"
		if msg == L.DBM_NB_YELL_AIR then
			WarnAir:Show()
			timerAirPhase:Stop()
			timerAirPhase:Start()
			timerFearCD:Start(79)
			self:Unschedule(clearSetIcon)
			self:Schedule(79, clearSetIcon, self)
		elseif msg == L.DBM_NB_YELL_GROUND or msg == L.DBM_NB_YELL_GROUND2 then--needed. because if you deal more 25% damage in air phase, air phase repeated and shorten. So need to update exact ground phase.
			timerAirPhase:Update(62, 79)
			timerFearCD:Update(62, 79)
			self:Unschedule(clearSetIcon)
			self:Schedule(17, clearSetIcon, self)
		end
	end
end
