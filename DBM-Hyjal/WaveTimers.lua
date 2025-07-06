local mod	= DBM:NewMod("HyjalWaveTimers", "DBM-Hyjal")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("20210605153940")

mod:RegisterEvents(
	"GOSSIP_SHOW",
	"QUEST_PROGRESS",
	"UPDATE_UI_WIDGET",
	"UNIT_DIED",
	"SPELL_AURA_APPLIED",
	"CHAT_MSG_MONSTER_YELL"
)
mod.noStatistics = true

local warnWave			= mod:NewAnnounce("WarnWave", 1)
local warnCannibalize	= mod:NewSpellAnnounce(31538, 2)

local timerWave			= mod:NewTimer(120, "TimerWave", nil, nil, nil, 1)

mod:AddBoolOption("DetailedWave")

local lastWave = 0
local boss = 0
local bossNames = {
	[0] = L.GeneralBoss,
	[1] = L.RageWinterchill,
	[2] = L.Anetheron,
	[3] = L.Kazrogal,
	[4] = L.Azgalor
}

function mod:GOSSIP_SHOW()
	if not GetRealZoneText() == L.HyjalZoneName then return end
	local target = UnitName("target")
	if target == L.Thrall or target == L.Jaina then
		local selection = GetGossipOptions()
		if selection == L.RageGossip then
			boss = 1
			self:SendSync("boss", 1)
		elseif selection == L.AnetheronGossip then
			boss = 2
			self:SendSync("boss", 2)
		elseif selection == L.KazrogalGossip then
			boss = 3
			self:SendSync("boss", 3)
		elseif selection == L.AzgalorGossip then
			boss = 4
			self:SendSync("boss", 4)
		end
	end
end
mod.QUEST_PROGRESS = mod.GOSSIP_SHOW

function mod:UPDATE_UI_WIDGET()
	if not GetRealZoneText() == L.HyjalZoneName then return end
	local container = UIWidgetTopCenterContainerFrame
	if container then
		for i = 1, select("#", container:GetChildren()) do
			local child = select(i, container:GetChildren())
			if child and child.Text then
				local text = child.Text:GetText()
				local currentWave, sep, totalWaves = string.match(text, "(%d)%s+(.-)%s+(%d)")
				if currentWave then
					if lastWave == 0 and currentWave ~= "8" then
						--new set of waves
						--print('lastWave: '..lastWave..", currentWave: "..currentWave)
						mod:WaveFunction(currentWave)
					elseif lastWave ~= 0 and (tonumber(currentWave) - tonumber(lastWave) == 1) then
						--valid non-boss wave
						--print('lastWave: '..lastWave..", currentWave: "..currentWave)
						mod:WaveFunction(currentWave)
					end
				end
			end
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.RAGE_YELL_PULL or msg == L.ANETHERON_YELL_PULL or msg == L.KAZROGAL_YELL_PULL or msg == L.AZGALOR_YELL_PULL then
		mod:WaveFunction(0)
	end
end

function mod:OnSync(msg, arg)
	if msg == "boss" then
		boss = tonumber(arg)

	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 17852 or cid == 17772 then
		lastWave = 0
		timerWave:Cancel()
	elseif cid == 17767 then
		self:SendSync("boss", 2)
	elseif cid == 17808 then
		self:SendSync("boss", 3)
	elseif cid == 17888 then
		self:SendSync("boss", 4)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 31538 then
		warnCannibalize:Show()
	end
end

function mod:WaveFunction(currentWave)
	local timer = 0
	currentWave = tonumber(currentWave)
	if currentWave > lastWave then
		timer = 120
		if currentWave == 8 then
			timer = 180
		end
		if boss == 0 then--unconfirmed
			warnWave:Show(L.WarnWave_0:format(currentWave))
		elseif self.Options.DetailedWave and boss == 1 then
			if currentWave == 1 then
				warnWave:Show(L.WarnWave_1:format(currentWave, 10, L.Ghoul))
			elseif currentWave == 2 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 10, L.Ghoul, 2, L.Fiend))
			elseif currentWave == 3 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 6, L.Ghoul, 6 , L.Fiend))
			elseif currentWave == 4 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 6, L.Ghoul, 4, L.Fiend, 2, L.Necromancer))
			elseif currentWave == 5 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 2, L.Ghoul, 6, L.Fiend, 4, L.Necromancer))
			elseif currentWave == 6 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 6, L.Ghoul, 6, L.Abomination))
			elseif currentWave == 7 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 4, L.Ghoul, 4, L.Abomination, 4, L.Necromancer))
			elseif currentWave == 8 then
				warnWave:Show(L.WarnWave_4:format(currentWave, 6, L.Ghoul, 4, L.Fiend, 2, L.Abomination, 2, L.Necromancer))
			end
		elseif self.Options.DetailedWave and boss == 2 then
			if currentWave == 1 then
				warnWave:Show(L.WarnWave_1:format(currentWave, 10, L.Ghoul))
			elseif currentWave == 2 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 8, L.Ghoul, 4, L.Abomination))
			elseif currentWave == 3 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 4, L.Ghoul, 4, L.Fiend, 4, L.Necromancer))
			elseif currentWave == 4 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 6, L.Fiend, 4, L.Necromancer, 2, L.Banshee))
			elseif currentWave == 5 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 6, L.Ghoul, 4, L.Banshee, 2, L.Necromancer))
			elseif currentWave == 6 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 6, L.Ghoul, 2, L.Abomination, 4, L.Necromancer))
			elseif currentWave == 7 then
				warnWave:Show(L.WarnWave_4:format(currentWave, 2, L.Ghoul, 4, L.Fiend, 4, L.Abomination, 4, L.Banshee))
			elseif currentWave == 8 then
				warnWave:Show(L.WarnWave_5:format(currentWave, 3, L.Ghoul, 3, L.Fiend, 4, L.Abomination, 2, L.Necromancer, 2, L.Banshee))
			end
		elseif self.Options.DetailedWave and boss == 3 then
			if currentWave == 1 then
				warnWave:Show(L.WarnWave_4:format(currentWave, 4, L.Ghoul, 4, L.Abomination, 2, L.Necromancer, 2, L.Banshee))
			elseif currentWave == 2 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 4, L.Ghoul, 10, L.Gargoyle))
			elseif currentWave == 3 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 6, L.Ghoul, 6, L.Fiend, 2, L.Necromancer))
			elseif currentWave == 4 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 6, L.Fiend, 2, L.Necromancer, 6, L.Gargoyle))
			elseif currentWave == 5 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 4, L.Ghoul, 6, L.Abomination, 4, L.Necromancer))
			elseif currentWave == 6 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 8, L.Gargoyle, 1, L.Wyrm))
			elseif currentWave == 7 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 6, L.Ghoul, 4, L.Abomination, 1, L.Wyrm))
			elseif currentWave == 8 then
				warnWave:Show(L.WarnWave_5:format(currentWave, 6, L.Ghoul, 2, L.Fiend, 4, L.Abomination, 2, L.Necromancer, 2, L.Banshee))
			end
		elseif self.Options.DetailedWave and boss == 4 then
			if currentWave == 1 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 6, L.Abomination, 6, L.Necromancer))
			elseif currentWave == 2 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 5, L.Ghoul, 8, L.Gargoyle, 1, L.Wyrm))
			elseif currentWave == 3 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 6, L.Ghoul, 8, L.Infernal))
			elseif currentWave == 4 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 6, L.Stalker, 8, L.Infernal))
			elseif currentWave == 5 then
				warnWave:Show(L.WarnWave_3:format(currentWave, 4, L.Abomination, 4, L.Necromancer, 6, L.Stalker))
			elseif currentWave == 6 then
				warnWave:Show(L.WarnWave_2:format(currentWave, 6, L.Necromancer, 6, L.Banshee))
			elseif currentWave == 7 then
				warnWave:Show(L.WarnWave_4:format(currentWave, 2, L.Ghoul, 2, L.Fiend, 2, L.Stalker, 8, L.Infernal))
			elseif currentWave == 8 then
				warnWave:Show(L.WarnWave_5:format(currentWave, 4, L.Abomination, 4, L.Fiend, 2, L.Necromancer, 2, L.Stalker, 4, L.Banshee))
			end
		end
		if boss == 1 or boss == 2 or boss == 3 or boss == 4 then
			self:SendSync("boss", boss)
		end
		timerWave:Start(timer)
		lastWave = currentWave
	elseif lastWave > currentWave then
		--either boss wave (0) or raid started a new set of waves after a wipe
		if lastWave == 8 and currentWave == 0 then
			warnWave:Show(bossNames[boss])
		end
		timerWave:Cancel()
		lastWave = currentWave
	end
end
