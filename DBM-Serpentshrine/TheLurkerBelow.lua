local mod	= DBM:NewMod("LurkerBelow", "DBM-Serpentshrine")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20210813015935")
mod:SetCreatureID(21217)
mod:SetEncounterID(624, 2459)
mod:SetModelID(20216)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"RAID_BOSS_EMOTE",
	"UNIT_DIED",
	"UNIT_SPELLCAST_SUCCEEDED"
)

local warnSubmerge		= mod:NewAnnounce("WarnSubmerge", 2, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local warnEmerge		= mod:NewAnnounce("WarnEmerge", 1, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local warnWhirl			= mod:NewSpellAnnounce(37363, 2)

local specWarnSpout		= mod:NewSpecialWarningSpell(37433, nil, nil, nil, 2, 2)

local timerSubmerge		= mod:NewTimer(85, "TimerSubmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp", nil, nil, 6)
local timerEmerge		= mod:NewTimer(60, "TimerEmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp", nil, nil, 6)
local timerSpoutCD		= mod:NewCDTimer(50, 37433, "Spout CD", nil, nil, 3, nil, DBM_CORE_L.DEADLY_ICON)
local timerSpout		= mod:NewBuffActiveTimer(22, 37433, nil, nil, nil, 3, nil, DBM_CORE_L.DEADLY_ICON)
local timerWhirlCD		= mod:NewCDTimer(18, 37363, nil, nil, nil, 2)

mod.vb.submerged = false
mod.vb.emergedrecently = true
mod.vb.guardianKill = 0
mod.vb.ambusherKill = 0

local function emerged(self)
	self.vb.submerged = false
	mod.vb.emergedrecently = true
	timerEmerge:Cancel()
	warnEmerge:Show()
	timerSubmerge:Start()
end

function mod:OnCombatStart(delay)
	self.vb.submerged = false
	mod.vb.emergedrecently = true
	timerWhirlCD:Start(18-delay)
	timerSpoutCD:Start(42-delay)
	timerSubmerge:Start(85-delay)

	self:RegisterOnUpdateHandler(function(self)
		if self:IsInCombat() then
			local foundIt
			for uId in DBM:GetGroupMembers() do
				if self:GetUnitCreatureId(uId.."target") == 21217 then
					foundIt = true
					break
				end
			end

			if not foundIt and not mod.vb.submerged and not mod.vb.emergedrecently and self:AntiSpam(2, 1) then
				self:SendSync("Submerge")
			elseif foundIt and mod.vb.submerged then
				mod.vb.submerged = false
			end
		end
	end, 0.25)
end

function mod:RAID_BOSS_EMOTE(_, source)
	if (source or "") == L.name then
		mod.vb.emergedrecently = false
		specWarnSpout:Show()
		specWarnSpout:Play("watchwave")
		timerSpout:Start()
		timerSpoutCD:Start()
	end
end

--function mod:UNIT_DIED(args)
--	local cId = self:GetCIDFromGUID(args.destGUID)
--	if cId == 21865 then
--		self.vb.ambusherKill = self.vb.ambusherKill + 1
--		if self.vb.ambusherKill == 6 and self.vb.guardianKill == 3 and self.vb.submerged then
--			self:Unschedule(emerged)
--			self:Schedule(2, emerged, self)
--		end
--	elseif cId == 21873 then
--		self.vb.guardianKill = self.vb.guardianKill + 1
--		if self.vb.ambusherKill == 6 and self.vb.guardianKill == 3 and self.vb.submerged then
--			self:Unschedule(emerged)
--			self:Schedule(2, emerged, self)
--		end
--	end
--end

function mod:UNIT_SPELLCAST_SUCCEEDED(_, _, spellId)
	if spellId == 37660 and self:AntiSpam(2, 2) then
		self:SendSync("Whirl")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "Submerge" then
		self.vb.submerged = true
		self.vb.guardianKill = 0
		self.vb.ambusherKill = 0
		timerSubmerge:Cancel()
		timerSpoutCD:Cancel()
		timerWhirlCD:Cancel()
		warnSubmerge:Show()
		timerEmerge:Start()
		self:Schedule(60, emerged, self)
	elseif msg == "Whirl" then
		warnWhirl:Show()
		timerWhirlCD:Start()
	end
end
