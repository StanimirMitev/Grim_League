/*

	GRIM DAWN

	For more information, visit us at http://www.grimdawn.com

*/

gd.GDLeague = {}

gd.GDLeague.TokenTable = {
	Dungeon_SoT = {
		token = "GDL_Token_StepsOfTorment",
		item = "records/items/grimleagues02/questitems/token_dungeon_steps_of_torment.dbr",
		notification = "tagGDLeagueDungeonTokenNotification",
		reward_notification = "tagGDLeagueSoTNothification",
		points = 10
	},
	Dungeon_BoC = {
		token = "GDL_Token_Bastion",
		item = "records/items/grimleagues02/questitems/token_dungeon_bastion_of_chaos.dbr",
		notification = "tagGDLeagueDungeonTokenNotification",
		reward_notification = "tagGDLeagueBoCNothification",
		points = 15
	},
	Dungeon_PV = {
		token = "GDL_Token_Valbury",
		item = "records/items/grimleagues02/questitems/token_dungeon_port_valbury.dbr",
		notification = "tagGDLeagueDungeonTokenNotification",
		reward_notification = "tagGDLeaguePVNothification",
		points = 20
	},
	Dungeon_AG = {
		token = "GDL_Token_Grove",
		item = "records/items/grimleagues02/questitems/token_dungeon_ancient_grove.dbr",
		notification = "tagGDLeagueDungeonTokenNotification",
		reward_notification = "tagGDLeagueAGNothification",
		points = 30
	},
	Dungeon_TotH = {
		token = "GDL_Token_TombHeretic",
		item = "records/items/grimleagues02/questitems/token_dungeon_tomb_of_the_heretic.dbr",
		notification = "tagGDLeagueDungeonTokenNotification",
		reward_notification = "tagGDLeagueToHNothification",
		points = 45
	},
	Nemesis_Valdaran = {
		token = "GDL_Token_Valdaran",
		item = "records/items/grimleagues02/questitems/token_nemesis_aetherial.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisAetherialNothification",
		points = 10
	},
	Nemesis_Aleksander = {
		token = "GDL_Token_Aleksander",
		item = "records/items/grimleagues02/questitems/token_nemesis_aetherial_vanguard.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisVanguardNothification",
		points = 10
	},
	Nemesis_Benjar = {
		token = "GDL_Token_Benjhar",
		item = "records/items/grimleagues02/questitems/token_nemesis_chthonic.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisChthoniansNothification",
		points = 10
	},
	Nemesis_Grava = {
		token = "GDL_Token_Grava",
		item = "records/items/grimleagues02/questitems/token_nemesis_chthonic_grava.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisChthoninsAoMNothification",
		points = 10
	},
	Nemesis_Fabious = {
		token = "GDL_Token_Fabious",
		item = "records/items/grimleagues02/questitems/token_nemesis_outlaw.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisCronleyNothification",
		points = 10
	},
	Nemesis_Maiden = {
		token = "GDL_Token_HostileGDFaction",
		item = "records/items/grimleagues02/questitems/token_nemesis_kymon.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisKymonNothification",
		points = 10
	},
	Nemesis_Zantarin = {
		token = "GDL_Token_HostileGDFaction",
		item = "records/items/grimleagues02/questitems/token_nemesis_order.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisVigilNothification",
		points = 10
	},
	Nemesis_Eldritch = {
		token = "GDL_Token_Kaisan",
		item = "records/items/grimleagues02/questitems/token_nemesis_eldritch.dbr",
		notification = "tagGDLeagueNemesisKillNotification", 
		reward_notification = "tagGDLeagueNemesisEldritchNothification", 
		points = 10
	},
	Nemesis_Undead = {
		token = "GDL_Token_Undead",
		item = "records/items/grimleagues02/questitems/token_nemesis_undead.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisUndeadNothification",
		points = 10
	},
	Nemesis_Beast = {
		token = "GDL_Token_Beast",
		item = "records/items/grimleagues02/questitems/token_nemesis_beast.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisBeastNothification",
		points = 10
	},
	Nemesis_Wendigo = {
		token = "GBL_Token_Reaper",
		item = "records/items/grimleagues02/questitems/token_nemesis_wendigo.dbr",
		notification = "tagGDLeagueNemesisKillNotification",
		reward_notification = "tagGDLeagueNemesisBarrowholmNothification",
		points = 0
	},
	Shatterred_Realms_16 = {
		token = "GDL_SR_16",
		item = "records/items/grimleagues02/questitems/token_sr_level16.dbr",
		notification = "tagGDLeagueSRTokenEarned",
		reward_notification = "tagGDLeagueSR16Notification",
		points = 5
	},
	Shatterred_Realms_31 = {
		token = "GDL_SR_31",
		item = "records/items/grimleagues02/questitems/token_sr_level31.dbr",
		notification = "tagGDLeagueSRTokenEarned",
		reward_notification = "tagGDLeagueSR31Notification",
		points = 15
	},
	Shatterred_Realms_46 = {
		token = "GDL_SR_46",
		item = "records/items/grimleagues02/questitems/token_sr_level46.dbr",
		notification = "tagGDLeagueSRTokenEarned",
		reward_notification = "tagGDLeagueSR46Notification",
		points = 35
	},
	Shatterred_Realms_61 = {
		token = "GDL_SR_61",
		item = "records/items/grimleagues02/questitems/token_sr_level61.dbr",
		notification = "tagGDLeagueSRTokenEarned",
		reward_notification = "tagGDLeagueSR61Notification",
		points = 55
	},
	Shatterred_Realms_76 = {
		token = "GDL_SR_76",
		item = "records/items/grimleagues02/questitems/token_sr_level76.dbr",
		notification = "tagGDLeagueSRTokenEarned",
		reward_notification = "tagGDLeagueSR76Notification",
		points = 90
	},
	Shatterred_Realms_50_Challenge = {
		token = "GDL_SR_50_Challenge",
		item = "records/items/grimleagues02/questitems/token_sr_level_50_challenge.dbr",
		notification = "tagGDLeagueSRChallengeTokenEarned",
		reward_notification = "tagGDLeagueSR50ChallengeNotification",
		points = 40
	},
	Boss_Protoss = {
		token = "GDL_Boss_Protoss",
		item = "records/items/grimleagues02/questitems/token_boss_protoss.dbr",
		notification = "tagGDLeagueWorldBossKillNotification",
		reward_notification = "tagGDLeagueBossProtossNitification",
		points = 5
	},
	Boss_Aldric = {
		token = "GDL_Boss_Aldric",
		item = "records/items/grimleagues02/questitems/token_boss_aldric.dbr",
		notification = "tagGDLeagueWorldBossKillNotification",
		reward_notification = "tagGDLeagueBossAldricNitification",
		points = 10
	},
	Boss_Aldric2 = {
		token = "GDL_Boss_Aldric2",
		item = "records/items/grimleagues02/questitems/token_boss_aldric_2.dbr",
		notification = "tagGDLeagueWorldBossKillNotification",
		reward_notification = "tagGDLeagueBossAldricNitification2",
		points = 5
	},
	Boss_Loxmere = {
		token = "GDL_Boss_Loxmere",
		item = "records/items/grimleagues02/questitems/token_boss_loxmere.dbr",
		notification = "tagGDLeagueWorldBossKillNotification",
		reward_notification = "tagGDLeagueBossLoxmereNitification",
		points = 10
	},
	Boss_Kraval = {
		token = "GDL_Boss_Kraval",
		item = "records/items/grimleagues02/questitems/token_boss_kraval.dbr",
		notification = "tagGDLeagueWorldBossKillNotification",
		reward_notification = "tagGDLeagueBossKravalNitification",
		points = 10
	},
	Boss_Rashalga = {
		token = "GDL_Boss_Rashalga",
		item = "records/items/grimleagues02/questitems/token_boss_madqueen.dbr",
		notification = "tagGDLeagueWorldBossKillNotification",
		reward_notification = "tagGDLeagueBossMadQueenNitification",
		points = 15
	},
	Super_Boss_Lokarr = {
		token = "GDL_Boss_Lokarr",
		item = "records/items/grimleagues02/questitems/token_boss_lokarr.dbr",
		notification = "tagGDLeagueSuperBossKillNotification",
		reward_notification = "tagGDLeagueBossLokarrNitification",
		points = 25
	},
	Super_Boss_Bourbon = {
		token = "GDL_Boss_Bourbon",
		item = "records/items/grimleagues02/questitems/token_boss_bourbon.dbr",
		notification = "tagGDLeagueSuperBossKillNotification",
		reward_notification = "tagGDLeagueBossBourbonNitification",
		points = 30
	},
	Super_Boss_Mogdrogen = {
		token = "GDL_Boss_Mogdrogen",
		item = "records/items/grimleagues02/questitems/token_boss_mogdrogen.dbr",
		notification = "tagGDLeagueSuperBossKillNotification",
		reward_notification = "tagGDLeagueBossMogdrogenNitification",
		points = 50
	},
	Super_Boss_Ravager = {
		token = "GDL_Boss_Ravager",
		item = "records/items/grimleagues02/questitems/token_boss_ravager.dbr",
		notification = "tagGDLeagueSuperBossKillNotification",
		reward_notification = "tagGDLeagueBossRavagerNitification",
		points = 75
	},
	Super_Boss_Callagadra = {
		token = "GDL_Boss_Callagadra",
		item = "records/items/grimleagues02/questitems/token_boss_callagadra.dbr",
		notification = "tagGDLeagueSuperBossKillNotification",
		reward_notification = "tagGDLeagueBossCallagadraNitification",
		points = 150
	},
	Super_Boss_Crate = {
		token = "GDL_Boss_Crate",
		item = "records/items/grimleagues02/questitems/token_boss_crate.dbr",
		notification = "tagGDLeagueSuperBossKillNotification",
		reward_notification = "tagGDLeagueBossCrateNitification",
		points = 150
	},
	Boss_Elite_Challenge_Theodin= {
		token = "GDL_Boss_Theodin",
		item = "records/items/grimleagues02/questitems/token_boss_theodin.dbr",
		notification = "tagGDLeagueWorldBossChallengeNotification",
		reward_notification = "tagGDLeagueBossTheodinNitification",
		points = 15
	},
	Boss_Elite_Challenge_Korvaak= {
		token = "GDL_Boss_Korvaak",
		item = "records/items/grimleagues02/questitems/token_boss_korvaak.dbr",
		notification = "tagGDLeagueWorldBossChallengeNotification",
		reward_notification = "tagGDLeagueBossKorvaakNitification",
		points = 20
	},
	Item_Anquish= {
		token = "GDL_Item_Anguish",
		item = "records/items/upgraded/gearaccessories/rings/d016_ring.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemAnguishNotification",
		points = 10
	},
	Item_Dread= {
		token = "GDL_Item_Dread",
		item = "records/items/upgraded/gearaccessories/rings/d015_ring.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemDreadNotification",
		points = 10
	},
	Item_Soulrend= {
		token = "GDL_Item_Soulrend",
		item = "records/items/upgraded/gearweapons/melee2h/d012_axe2h.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemSoulrendNotification",
		points = 5
	},
	Item_Worldeater= {
		token = "GDL_Item_WorldEarter",
		item = "records/items/upgraded/gearweapons/melee2h/d013_blunt2h.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemWorldEaterNotification",
		points = 10
	},
	Item_DecreeAldrich= {
		token = "GDL_Item_DecreeAldrich",
		item = "records/items/upgraded/gearweapons/caster/d019_scepter.dbr", 
		notification = "",
		reward_notification = "tagGDLeagueItemDecreeAldrichNotification",
		points = 10
	},
	Item_Corruption= {
		token = "GDL_Item_Gargabol",
		item = "records/items/gearweapons/guns1h/d114_gun1h.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemGargabolNotification",
		points = 5
	},
	Item_Nightbringer= {
		token = "GDL_Item_Nigthbringer",
		item = "records/items/gearweapons/melee2h/d207_blunt2h.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemNigthbringerNotification",
		points = 10
	},
	Item_Nightshard= {
		token = "GDL_Item_Nightshard",
		item = "records/items/gearweapons/shields/d209_shield.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemNightshardNotification",
		points = 5
	},
	Item_MorgonethVisage= {
		token = "GDL_Item_MorgonethVisage",
		item = "records/items/gearhead/d226_head.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemMorgonethVisageNotification",
		points = 5
	},
	Item_DecreeMalmouth= {
		token = "GDL_Item_DecreeMalmouth",
		item = "records/items/gearweapons/caster/d119_scepter.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemDecreeMalmouthNotification",
		points = 5
	},
	Item_HeartSandKing= {
		token = "GDL_Item_SandKingHearth",
		item = "records/items/gearaccessories/necklaces/d210_necklace.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemSandKingHearthNotification",
		points = 5
	},
	Item_OutcastSecret= {
		token = "GDL_Item_OutcastSecret",
		item = "records/items/upgraded/gearhead/d021_head.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemOutcastSecretNotification",
		points = 15
	},
	Item_PrimeRing = {
		token = "GDL_Item_PrimeRing",
		item = "records/items/grimleagues02/questitems/token_item_prime_ring.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemPrimeRingNotification",
		points = 10
	},
	Item_VanquisherHelm = {
		token = "GDL_Item_vanquisher_helm",
		item = "records/items/grimleagues02/questitems/token_item_vanquisher_helm.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemVanquisherHelmNotification",
		points = 10
	},
	Item_VanquisherMantle = {
		token = "GDL_Item_vanquisher_mantle",
		item = "records/items/grimleagues02/questitems/token_item_vanquisher_mantle.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemVanquisherMantleNotification",
		points = 10
	},
	Item_VanquisherArmor = {
		token = "GDL_Item_vanquisher_armor",
		item = "records/items/grimleagues02/questitems/token_item_vanquisher_armor.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemVanquisherArmorNotification",
		points = 10
	},
	Item_VanquisherGem = {
		token = "GDL_Item_vanquisher_gem",
		item = "records/items/grimleagues02/questitems/token_item_vanquisher_gem.dbr",
		notification = "",
		reward_notification = "tagGDLeagueItemVanquisherGemNotification",
		points = 10
	},
	Super_Boss_Mod_Galakros = {
		token = "GDL_BossMod_Galakros",
		item = "records/items/grimleagues02/questitems/token_bossmod_galakros.dbr",
		notification = "tagGDLeagueSuperBossKillNotification",
		reward_notification = "tagGDLeagueBossGalakrosNitification",
		points = 100
	},
	Super_Boss_Mod_BallogNath = {
		token = "GDL_BossMod_BallogNath",
		item = "records/items/grimleagues02/questitems/token_bossmod_ballognath.dbr",
		notification = "tagGDLeagueSuperBossKillNotification",
		reward_notification = "tagGDLeagueBossBallogNathNitification",
		points = 100
	},
	Super_Boss_Mod_Rolderathis = {
		token = "GDL_BossMod_Rolderathis",
		item = "records/items/grimleagues02/questitems/token_bossmod_rolderathis.dbr",
		notification = "tagGDLeagueSuperBossKillNotification",
		reward_notification = "tagGDLeagueBossRolderathisNitification",
		points = 100
	},
}

local LeaguePointsItem = "records/items/grimleagues02/questitems/GDLeagueToken.dbr"
local LeaguePenaltyPointsItem = "records/items/grimleagues02/questitems/GDLeaguePenaltyToken.dbr"
local LeagueDummyToken = "records/items/grimleagues02/questitems/GDLeagueDummyToken.dbr"
local LeagueEntryToken = "records/items/grimleagues02/questitems/grim_league_s02_participation_token.dbr"
local recoveryToken = 'records/items/grimleagues02/questitems/grim_league_s02_recovery_token.dbr'
local participationtoken = "S02_Participation"

local LeagueDifficultyRequirement = Game.Difficulty.Legendary
-- local LeagueDifficultyRequirement = Game.Difficulty.Normal
local LeaguePenaltyPoints = 5
local LeagueLevelRequirement = 100
local LeagueSRChallengeRequirement = 75
local LeagueEliteChallengeRequirement = 85
local level_to_enter_sr = 0

-- checks if player has achivement tokens and grants them that achivement. Prevent double dipping for points.
function gd.GDLeague.CheckForLeagueAchievementTokens()
	gd.GDLeague.GrantPointsDungeonSoT()
	gd.GDLeague.GrantPointsDungeonBoC()
	gd.GDLeague.GrantPointsDungeonPV()
	gd.GDLeague.GrantPointsDungeonAG()
	gd.GDLeague.GrantPointsDungeonTotH()

	gd.GDLeague.GrantPointsNemesisAetherial()
	gd.GDLeague.GrantPointsNemesisVanguard()
	gd.GDLeague.GrantPointsNemesisChthonian()
	gd.GDLeague.GrantPointsNemesisAOMChthonian()
	gd.GDLeague.GrantPointsNemesisOutlaw()
	gd.GDLeague.GrantPointsNemesisMaiden()
	gd.GDLeague.GrantPointsNemesisOrder()
	gd.GDLeague.GrantPointsNemesisEldritch()
	gd.GDLeague.GrantPointsNemesisUndead()
	gd.GDLeague.GrantPointsNemesisBeast()
	-- gd.GDLeague.GrantPointsNemesisReaper()

	gd.GDLeague.GrantPointsShatteredRealm16()
	gd.GDLeague.GrantPointsShatteredRealm31()
	gd.GDLeague.GrantPointsShatteredRealm46()
	gd.GDLeague.GrantPointsShatteredRealm61()
	gd.GDLeague.GrantPointsShatteredRealm76()
	gd.GDLeague.GrantPointsShatteredRealm50Challenge()
	gd.GDLeague.GrantPointsDeepShatteredRealm()

	gd.GDLeague.GrantPointsLoxmere()
	gd.GDLeague.GrantPointsAldric()
	gd.GDLeague.GrantPointsAldric2()
	gd.GDLeague.GrantPointsProtoss()
	gd.GDLeague.GrantPointsKraval()
	gd.GDLeague.GrantPointsRashalga()
	gd.GDLeague.GrantPointsLokarr()
	gd.GDLeague.GrantPointsBourbon()
	gd.GDLeague.GrantPointsMogdrogen()
	gd.GDLeague.GrantPointsRavager()
	gd.GDLeague.GrantPointsCallagadra()
	gd.GDLeague.GrantPointsCrate()
	gd.GDLeague.GrantPointsKorvaak()
	gd.GDLeague.GrantPointsTheodin()

	-- gd.GDLeague.CheckItemAnguish()
	-- gd.GDLeague.CheckItemDread()
	-- gd.GDLeague.CheckItemSoulrend()
	-- gd.GDLeague.CheckItemWorldEarter()
	-- gd.GDLeague.CheckItemDecreeAldrich()
	-- gd.GDLeague.CheckItemGargabol()
	gd.GDLeague.CheckItemPrimeRing()
	-- gd.GDLeague.CheckItemNigthbringer()
	-- gd.GDLeague.CheckItemMorgonethVisage()
	-- gd.GDLeague.CheckItemDecreeMalmouth()
	-- gd.GDLeague.CheckItemSandKingHearth()
	-- gd.GDLeague.CheckItemOutcastSecret()
	-- gd.GDLeague.CheckItemNightshard()
	gd.GDLeague.CheckItemVanquisherGem()
	gd.GDLeague.CheckItemVanquisherArmor()
	gd.GDLeague.CheckItemVanquisherMantle()
	gd.GDLeague.CheckItemVanquisherHelm()

	gd.GDLeague.GrantPointsRolderathis()
	gd.GDLeague.GrantPointsBallogNath()
	gd.GDLeague.GrantPointsGalakros()
end

local is_recovert_completed = false
function gd.GDLeague.RecoverToken()
	local player = Game.GetLocalPlayer()
	if (player:HasToken(participationtoken) && not player:HasItem(LeagueEntryToken, 1, false)) then
		player:GiveItem(LeagueEntryToken, 1, false)
	end
	if (player:HasItem(LeagueEntryToken, 1, false) && player:HasItem(recoveryToken, 1, false) && not is_recovert_completed) then
		for i,TableEntry in pairs(gd.GDLeague.TokenTable) do 
			if(player:HasToken(TableEntry["token"])) then
				player:GiveItem(TableEntry["item"], 1, false)
			end
		end
		gd.GDLeague.RecoverDeepSRToken()
		player:TakeItem(recoveryToken, 1, false)
		is_recovert_completed = true
	end
	
end

function gd.GDLeague.RecoverDeepSRToken()
	local player = Game.GetLocalPlayer()
	for i=130, 80, -1 do
		local gl_token = "GDL_SR_"..i
		if(player:HasToken(gl_token)) then
			local drb_path = "records/items/grimleagues02/questitems/SREndless/token_SR"
			if(i > 99) then
				drb_path = drb_path..i..".dbr"
			else
				drb_path = drb_path.."0"..i..".dbr"
			end
			player:GiveItem(drb_path, 1, false)
			break
		end
	end
end

function gd.GDLeague.TestAllTokens()
	local player = Game.GetLocalPlayer()
	if(player:HasItem("records/items/grimleagues02/questitems/grim_league_s02_test_all_token.dbr", 1, false)) then	
		gd.GDLeague.GrantTokenDungeonSoT()
		gd.GDLeague.GrantTokenDungeonBoC()
		gd.GDLeague.GrantTokenDungeonPV()
		gd.GDLeague.GrantTokenDungeonAG()
		gd.GDLeague.GrantTokenDungeonTotH()
		gd.GDLeague.GrantTokenNemesisAetherial()
		gd.GDLeague.GrantTokenNemesisVanguard()
		gd.GDLeague.GrantTokenNemesisChthonian()
		gd.GDLeague.GrantTokenNemesisAOMChthonian()
		gd.GDLeague.GrantTokenNemesisOutlaw()
		gd.GDLeague.GrantTokenNemesisMaiden()
		gd.GDLeague.GrantTokenNemesisOrder()
		gd.GDLeague.GrantTokenNemesisEldritch()
		gd.GDLeague.GrantTokenNemesisUndead()
		gd.GDLeague.GrantTokenNemesisBeast()
		gd.GDLeague.GrantTokenNemesisBeast()
		gd.GDLeague.GrantTokenNemesisBeast()
		gd.GDLeague.GrantTokenNemesisBeast()
		gd.GDLeague.GrantTokenNemesisReaper()
		gd.GDLeague.GrantTokenDeepShatteredRealm(81)
		gd.GDLeague.GrantTokenDeepShatteredRealm(99)
		gd.GDLeague.GrantTokenDeepShatteredRealm(100)
		gd.GDLeague.GrantTokenDeepShatteredRealm(130)
	
		gd.GDLeague.GrantTokenShatteredRealm76()
		gd.GDLeague.GrantTokenShatteredRealm61()
		gd.GDLeague.GrantTokenShatteredRealm46()
		gd.GDLeague.GrantTokenShatteredRealm31()
		gd.GDLeague.GrantTokenShatteredRealm16()
		gd.GDLeague.GrantTokenShatteredRealm50Challenge()
		player:TakeItem("records/items/grimleagues02/questitems/grim_league_s02_test_all_token.dbr", 1, false)
		gd.GDLeague.GrantTokenProtossKill()
		gd.GDLeague.GrantTokenAldricKill()
		gd.GDLeague.GrantTokenAldricKill2()
		gd.GDLeague.GrantTokenLoxmereKill()
		gd.GDLeague.GrantTokenKravalKill()
		gd.GDLeague.GrantTokenRashalgaKill()
		gd.GDLeague.GrantTokenLokarrKill()
		gd.GDLeague.GrantTokenBourbonKill()
		gd.GDLeague.GrantTokenMogdrogenKill()
		gd.GDLeague.GrantTokenRavagerKill()
		gd.GDLeague.GrantTokenCallagadraKill()
		gd.GDLeague.GrantTokenCrateKill()
		gd.GDLeague.GrantTokenTheodinKill()
		gd.GDLeague.GrantTokenKorvaakKill()
		gd.GDLeague.GrantTokenRolderathis()
		gd.GDLeague.GrantTokenGalakros()
		gd.GDLeague.GrantTokenBallogNath()
		
	end
end

-- Death Penalty
function gd.GDLeague.GrantDeathPenaltyPoints(id)
	local player = Game.GetLocalPlayer()
	if (player == nil) then
		return
	end
	if(player:HasItem(LeaguePenaltyPointsItem, 100, false)) then
		return
	end
	if(player:HasItem(LeagueDummyToken, 1, false)) then
		player:TakeItem(LeagueDummyToken, 1, false)
	end
	player:GiveItem(LeaguePenaltyPointsItem, LeaguePenaltyPoints, false)
end

function gd.GDLeague.DefaultLeagueCondition(player)
	return ( Game.GetGameDifficulty() == LeagueDifficultyRequirement && player:GetLevel() >= LeagueLevelRequirement )
end

function gd.GDLeague.SR50LeagueCondition(player)
	return ( Game.GetGameDifficulty() == LeagueDifficultyRequirement && level_to_enter_sr < LeagueSRChallengeRequirement)
end

function gd.GDLeague.EliteLeagueRequirement(player)
	return ( Game.GetGameDifficulty() == Game.Difficulty.Epic && player:GetLevel() <= LeagueEliteChallengeRequirement )
end

function gd.GDLeague.RedeemCondition(player)
	return (Game.GetGameDifficulty() == Game.Difficulty.Normal && player:GetLevel() == 4)
end

function gd.GDLeague.GrantGDLTokenItem(key, condition)
	local player = Game.GetLocalPlayer()
	-- if a custom condition is provided it will be used instead of the default one: lvl 100 on Ultimate
	condition = condition or gd.GDLeague.DefaultLeagueCondition
	if (player:HasItem(LeagueEntryToken, 1, false) && condition(player) && not player:HasToken(gd.GDLeague.TokenTable[key]["token"])) then
		player:GiveItem(gd.GDLeague.TokenTable[key]["item"], 1, false)
		if(player:HasItem(gd.GDLeague.TokenTable[key]["item"], 1, false)) then
			GiveTokenToLocalPlayer(gd.GDLeague.TokenTable[key]["token"])
			UI.Notify(gd.GDLeague.TokenTable[key]["notification"])
		else
			UI.Notify("tagGDLeagueFullInventoryNotification")
		end
	end
end

function gd.GDLeague.GrantGDLPoints(key)
	local player = Game.GetLocalPlayer()
	if(player:HasItem(LeagueEntryToken, 1, false) && player:HasItem(gd.GDLeague.TokenTable[key]["item"], 1, false)) then
		if(not player:HasToken(gd.GDLeague.TokenTable[key]["token"])) then
			player:GiveItem(LeaguePointsItem, gd.GDLeague.TokenTable[key]["points"], false)
			GiveTokenToLocalPlayer(gd.GDLeague.TokenTable[key]["token"])
			UI.Notify(gd.GDLeague.TokenTable[key]["reward_notification"])
		end
	end
end

function gd.GDLeague.GrantItemRewards(item, key)
	local player = Game.GetLocalPlayer()
	if (player:HasItem(item, 1, false) && not player:HasToken(gd.GDLeague.TokenTable[key]["token"])) then
		player:GiveItem(gd.GDLeague.TokenTable[key]["item"], 1, false)
		gd.GDLeague.GrantGDLPoints(key)
	end
end

-- Grant starter itmes to new characters
function gd.GDLeague.GiveStartingItems(id)
	local player = Game.GetLocalPlayer()
	gd.quests.devilsCrossingNPCSpiritGuide.triggerSpawnNecklace(id)
	if (gd.GDLeague.RedeemCondition(player)) then
		gd.GDLeague.CheckForLeagueAchievementTokens()
	end

	gd.GDLeague.RecoverToken()
	
	if(player:HasToken("Received_Start_Items") || player:GetLevel() > 2 || Game.GetGameDifficulty() ~= Game.Difficulty.Normal) then
		return
	end
	GiveTokenToLocalPlayer("Received_Start_Items")
	player:GiveItem("records/items/faction/booster/boost_dc_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_ro_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_hs_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_bl_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_odv_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_kc_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_exile_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_cw_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_cu_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_pm_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_wgd_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_wgb_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_wgs_b01.dbr", 1, false)
	player:GiveItem("records/items/misc/difficultyunlock_ultimate.dbr", 1, false)
	player:GiveItem("records/items/crafting/consumables/gdl_xppotion_malmouth.dbr", 26, false)
	-- player:GiveItem(LeagueDummyToken, 1, false)
	player:GiveItem("records/items/faction/booster/boosthostile_odv_c01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boosthostile_kc_c01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boosthostile_outlaw_c01.dbr", 1, false)
	player:GiveItem("records/items/crafting/blueprints/other/craft_endlessdungeon_keystone_04.dbr", 1, false)
	player:GiveItem(LeagueEntryToken, 1, false)
	GiveTokenToLocalPlayer(participationtoken)
end




-- Skeleton Key Dungeons
local quest_dungeon_SoT = "Dungeon_SoT"
local quest_dungeon_BoC = "Dungeon_BoC"
local quest_dungeon_PV = "Dungeon_PV"
local quest_dungeon_AG = "Dungeon_AG"
local quest_dungeon_TotH = "Dungeon_TotH"

-- Gives token for completing the Steps Of Torment
function gd.GDLeague.GrantTokenDungeonSoT()
	gd.quests.homesteadStepsOfTormentBosses.unlockShortcut()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_SoT)
end
-- Grants points for holding the Steps of Torment token
function gd.GDLeague.GrantPointsDungeonSoT()
	gd.GDLeague.GrantGDLPoints(quest_dungeon_SoT)
end

-- Gives token for completing the Bastion of Chaos
function gd.GDLeague.GrantTokenDungeonBoC()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_BoC)
end

-- Grants points for holding the Bastion of Chaos token
function gd.GDLeague.GrantPointsDungeonBoC()
	gd.GDLeague.GrantGDLPoints(quest_dungeon_BoC)
end

-- Gives token for completing the Port Valbury
function gd.GDLeague.GrantTokenDungeonPV()
	gd.quests.areaDPortValburyBosses.unlockShortcut()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_PV)
end

-- Grants points for holding the Port Valbury token
function gd.GDLeague.GrantPointsDungeonPV()
	gd.GDLeague.GrantGDLPoints(quest_dungeon_PV)
end

-- Gives token for completing the Ancient Grove
function gd.GDLeague.GrantTokenDungeonAG()
	gd.quests.areaEAncientGroveBosses.unlockShortcut()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_AG)
end

-- Grants points for holding the Ancient Grove token
function gd.GDLeague.GrantPointsDungeonAG()
	gd.GDLeague.GrantGDLPoints(quest_dungeon_AG)
end

-- Gives token for completing the Tomb of The Heretic
function gd.GDLeague.GrantTokenDungeonTotH()
	gd.quests.areaGTombOfHereticBosses.unlockShortcut()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_TotH)
end

-- Grants points for holding the Tomb of the Heretic token
function gd.GDLeague.GrantPointsDungeonTotH()
	gd.GDLeague.GrantGDLPoints(quest_dungeon_TotH)
end


-- Nemesis
local quest_nemesis_valdaran= "Nemesis_Valdaran"
local quest_nemesis_aleksander= "Nemesis_Aleksander"
local quest_nemesis_benjar= "Nemesis_Benjar"
local quest_nemesis_grava= "Nemesis_Grava"
local quest_nemesis_fabious= "Nemesis_Fabious"
local quest_nemesis_maiden= "Nemesis_Maiden"
local quest_nemesis_zantarin= "Nemesis_Zantarin"
local quest_nemesis_eldritch= "Nemesis_Eldritch"
local quest_nemesis_undead= "Nemesis_Undead"
local quest_nemesis_beast= "Nemesis_Beast"
local quest_nemesis_wendigo = "Nemesis_Wendigo"

-- Gives token for killing the Aehterial Nemesis
function gd.GDLeague.GrantTokenNemesisAetherial()
	gd.nemesis.aetherialNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_valdaran)
end

-- Grants points for holding the Aehterial Nemesis token
function gd.GDLeague.GrantPointsNemesisAetherial()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_valdaran)
end

-- Gives token for killing the Aetherial Vanguard Nemesis
function gd.GDLeague.GrantTokenNemesisVanguard()
	gd.nemesisGDX1.aetherialVanguardNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_aleksander)
end

-- Grants points for holding the Aetherial Vanguard token
function gd.GDLeague.GrantPointsNemesisVanguard()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_aleksander)
end

-- Gives token for killing the Chthonian Nemesis
function gd.GDLeague.GrantTokenNemesisChthonian()
	gd.nemesis.chthonianNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_benjar)
end

-- Grants points for holding the Chthonian Nemesis token
function gd.GDLeague.GrantPointsNemesisChthonian()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_benjar)
end

-- Gives token for killing the Chthonian Nemesis Ashesh of Malmouth
function gd.GDLeague.GrantTokenNemesisAOMChthonian()
	gd.nemesisGDX1.chthonianVoidbornNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_grava)
end

-- Grants points for holding the Chthonian Nemesis Ashesh of Malmouth token
function gd.GDLeague.GrantPointsNemesisAOMChthonian()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_grava)
end

-- Gives token for killing the Cronley's Ganag Nemesis
function gd.GDLeague.GrantTokenNemesisOutlaw()
	gd.nemesis.outlawNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_fabious)
end

-- Grants points for holding the Cronley's Ganag Nemesis token
function gd.GDLeague.GrantPointsNemesisOutlaw()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_fabious)
end

-- Gives token for killing the Kymon's Chosen Nemesis
function gd.GDLeague.GrantTokenNemesisMaiden()
	gd.nemesis.kymonChosenNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_maiden)
end

-- Grants points for holding the Kymon's Chosen Nemesis token
function gd.GDLeague.GrantPointsNemesisMaiden()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_maiden)
end

-- Gives token for killing the Order of Death's VIgil Nemesis
function gd.GDLeague.GrantTokenNemesisOrder()
	gd.nemesis.orderDeathVigilNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_zantarin)
end

-- Grants points for holding the Order of Death's VIgil Nemesis token
function gd.GDLeague.GrantPointsNemesisOrder()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_zantarin)
end
	
-- Gives token for killing the Eldrith Nemesis
function gd.GDLeague.GrantTokenNemesisEldritch()
	gd.nemesisGDX2.eldritchNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_eldritch)
end

-- Grants points for holding the Eldrith Nemesis token
function gd.GDLeague.GrantPointsNemesisEldritch()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_eldritch)
end

-- Gives token for killing the Undead Nemesis
function gd.GDLeague.GrantTokenNemesisUndead()
	gd.nemesis.undeadNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_undead)
end

-- Grants points for holding the Undead Nemesis token
function gd.GDLeague.GrantPointsNemesisUndead()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_undead)
end

-- Gives token for killing the Beast Nemesis, must kill all 4 small Kubas
local killcount = 0
function gd.GDLeague.GrantTokenNemesisBeast()
	killcount = killcount + 1
	if(killcount == 4) then
		gd.GDLeague.GrantGDLTokenItem(quest_nemesis_beast)
		gd.nemesisGDX1.beastNemesisP03AKilled()
		gd.nemesisGDX1.beastNemesisP03BKilled()
		gd.nemesisGDX1.beastNemesisP03CKilled()
		gd.nemesisGDX1.beastNemesisP03DKilled()
		killcount = 0
	end
end

-- Grants points for holding the Beast Nemesis token
function gd.GDLeague.GrantPointsNemesisBeast()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_beast)
end

-- Gives token for killing the Barrowholm Nemesis
function gd.GDLeague.GrantTokenNemesisReaper()
	gd.nemesisGDX1.wendigoNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_wendigo)
end

-- Grants points for holding the Barrowholm Nemesis token
function gd.GDLeague.GrantPointsNemesisReaper()
	gd.GDLeague.GrantGDLPoints(quest_nemesis_wendigo)
end


-- Shattered Realm
local quest_shatterred_realms_16 = "Shatterred_Realms_16"
local quest_shatterred_realms_31 = "Shatterred_Realms_31"
local quest_shatterred_realms_46 = "Shatterred_Realms_46"
local quest_shatterred_realms_61 = "Shatterred_Realms_61"
local quest_shatterred_realms_76 = "Shatterred_Realms_76"
local quest_shatterred_realms_50_challenge = "Shatterred_Realms_50_Challenge"

-- checks if player has beaten the time and awards tokens for the respective shard. Earning a token for a higher shard also awards the lower tiers.
function gd.GDLeague.GrantTokenShatteredRealm()
	gd.endlessDungeon.core.dispenseTreasure()
	local player = Game.GetLocalPlayer()
	if (Game.IsEndlessDungeonBonusComplete()) then
		local rewardTier = Game.GetEndlessDungeonsGenerated()
		if(rewardTier > 80) then
			gd.GDLeague.GrantTokenDeepShatteredRealm(rewardTier)
		end
		if(rewardTier == 50) then
			gd.GDLeague.GrantTokenShatteredRealm50Challenge()
		end
		if(rewardTier >= 76) then
			gd.GDLeague.GrantTokenShatteredRealm76()
		end
		if(rewardTier >= 61) then
			gd.GDLeague.GrantTokenShatteredRealm61()
		end
		if(rewardTier >= 46) then
			gd.GDLeague.GrantTokenShatteredRealm46()
		end
		if(rewardTier >= 31) then
			gd.GDLeague.GrantTokenShatteredRealm31()
		end
		if(rewardTier >= 16) then
			gd.GDLeague.GrantTokenShatteredRealm16()
		end
	end
end
-- grant toke for SR level 80+
function gd.GDLeague.GrantTokenDeepShatteredRealm(rewardTier)
	local drb_path = "records/items/grimleagues02/questitems/SREndless/token_SR"
	if(rewardTier > 99) then
		drb_path = drb_path..rewardTier..".dbr"
	else
		drb_path = drb_path.."0"..rewardTier..".dbr"
	end
	local gl_token = "GDL_SR_"..rewardTier
	gd.GDLeague.TokenTable[gl_token] = {
		token = gl_token,
		item = drb_path,
		notification = "tagGDLeagueSRTokenEarned",
		reward_notification = "",
		points = 1
	}
	gd.GDLeague.GrantGDLTokenItem(gl_token)
end

function gd.GDLeague.GrantPointsDeepShatteredRealm()
	local dbr_path = "records/items/grimleagues02/questitems/SREndless/token_SR"
	local player = Game.GetLocalPlayer()
	for sr_tier=130, 81, -1 do
		local token_dbr = ""
		if(sr_tier > 99) then
			token_dbr = dbr_path..sr_tier..".dbr"
		else
			token_dbr = dbr_path.."0"..sr_tier..".dbr"
		end
		if( player:HasItem(token_dbr, 1, false) and not player:HasToken("GDL_SR_"..sr_tier)) then
			GiveTokenToLocalPlayer("GDL_SR_"..sr_tier)
			for token_sr_tier = sr_tier, 81, -1 do
				if( not player:HasToken("GDL_SR_"..token_sr_tier) ) then
					player:GiveItem(LeaguePointsItem, 1, false)
				else
					break
				end
			end
			UI.Notify("tagGDLeagueSR"..sr_tier)
			break
		end
	end
end

-- grants token for completing SR50 Ult Challenge
function gd.GDLeague.GrantTokenShatteredRealm50Challenge()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_50_challenge,  gd.GDLeague.SR50LeagueCondition)
end

-- gives points if the player is holding the SR50 challenge token
function gd.GDLeague.GrantPointsShatteredRealm50Challenge()
	gd.GDLeague.GrantGDLPoints(quest_shatterred_realms_50_challenge)
end

-- grants token for completing SR76
function gd.GDLeague.GrantTokenShatteredRealm76()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_76)
end

-- gives points if the player is holding the SR76 token
function gd.GDLeague.GrantPointsShatteredRealm76()
	gd.GDLeague.GrantGDLPoints(quest_shatterred_realms_76)
end

-- grants token for completing SR61
function gd.GDLeague.GrantTokenShatteredRealm61()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_61)
end

-- gives points if the player is holding the SR61 token
function gd.GDLeague.GrantPointsShatteredRealm61()
	gd.GDLeague.GrantGDLPoints(quest_shatterred_realms_61)
end

-- grants token for completing SR46
function gd.GDLeague.GrantTokenShatteredRealm46()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_46)
end

-- gives points if the player is holding the SR46 token
function gd.GDLeague.GrantPointsShatteredRealm46()
	gd.GDLeague.GrantGDLPoints(quest_shatterred_realms_46)
end

-- grants token for completing SR31
function gd.GDLeague.GrantTokenShatteredRealm31()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_31)
end

-- gives points if the player is holding the SR31 token
function gd.GDLeague.GrantPointsShatteredRealm31()
	gd.GDLeague.GrantGDLPoints(quest_shatterred_realms_31)
end

-- grants token for completing SR16
function gd.GDLeague.GrantTokenShatteredRealm16()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_16)
end

-- gives points if the player is holding the SR16 token
function gd.GDLeague.GrantPointsShatteredRealm16()
	gd.GDLeague.GrantGDLPoints(quest_shatterred_realms_16)
end

function gd.GDLeague.EnterShatteredRealm()
	local player = Game.GetLocalPlayer()
	level_to_enter_sr = player:GetLevel()
end


-- World Bosses
local quest_boss_protoss = "Boss_Protoss"
local quest_boss_aldric = "Boss_Aldric"
local quest_boss_aldric2 = "Boss_Aldric2"
local quest_boss_loxmere = "Boss_Loxmere"
local quest_boss_kraval = "Boss_Kraval"
local quest_boss_rashalga = "Boss_Rashalga"

-- grants the token to the player when Protoss is killed
function gd.GDLeague.GrantTokenProtossKill()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_protoss)
end

-- rewards points to the player for holding the Protoss token
function gd.GDLeague.GrantPointsProtoss()
	gd.GDLeague.GrantGDLPoints(quest_boss_protoss)
end

-- grants the token to the player when Alric is killed
function gd.GDLeague.GrantTokenAldricKill()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_aldric)
end

-- rewards points to the player for holding the Aldric token
function gd.GDLeague.GrantPointsAldric()
	gd.GDLeague.GrantGDLPoints(quest_boss_aldric)
end

-- grants the token to the player when Alric #2 is killed
function gd.GDLeague.GrantTokenAldricKill2()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_aldric2)
end

-- rewards points to the player for holding the Aldric token #2
function gd.GDLeague.GrantPointsAldric2()
	gd.GDLeague.GrantGDLPoints(quest_boss_aldric2)
end

-- grants the token to the player when Loxemere is killed
function gd.GDLeague.GrantTokenLoxmereKill()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_loxmere)
end

-- rewards points to the player for holding the Loxmere token
function gd.GDLeague.GrantPointsLoxmere()
	gd.GDLeague.GrantGDLPoints(quest_boss_loxmere)
end

-- grants the token to the player when Kra'val is killed
function gd.GDLeague.GrantTokenKravalKill()
	gd.quests.areaEQuestUgdenbog.krakenKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_kraval)
end

-- rewards points to the player for holding the Kra'val token
function gd.GDLeague.GrantPointsKraval()
	gd.GDLeague.GrantGDLPoints(quest_boss_kraval)
end

-- grants the token to the player when Rashsalga is killed
function gd.GDLeague.GrantTokenRashalgaKill()
	gd.quests.devilsCrossingWitchGodShrines.secretBossKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_rashalga)
end

-- rewards points to the player for holding the Rashalga token
function gd.GDLeague.GrantPointsRashalga()
	gd.GDLeague.GrantGDLPoints(quest_boss_rashalga)
end


local quest_super_boss_Lokarr = "Super_Boss_Lokarr"
local quest_super_boss_Bourbon = "Super_Boss_Bourbon"
local quest_super_boss_Mogdrogen = "Super_Boss_Mogdrogen"
local quest_super_boss_Ravager = "Super_Boss_Ravager"
local quest_super_boss_Callagadra = "Super_Boss_Callagadra"
local quest_super_boss_Crate = "Super_Boss_Crate"

-- grants the token to the player when Lokarr is killed
function gd.GDLeague.GrantTokenLokarrKill()
	gd.quests.areaFNPCSpecial.bossKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Lokarr)
end

-- rewards points to the player for holding the Lokarr token
function gd.GDLeague.GrantPointsLokarr()
	gd.GDLeague.GrantGDLPoints(quest_super_boss_Lokarr)
end

-- grants the token to the player when John Bourbon is killed
function gd.GDLeague.GrantTokenBourbonKill()
	gd.quests.areaDNPCClone.bossKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Bourbon)
end

-- rewards points to the player for holding the Bourbon token
function gd.GDLeague.GrantPointsBourbon()
	gd.GDLeague.GrantGDLPoints(quest_super_boss_Bourbon)
end

-- grants the token to the player when Mogdrogen is killed
function gd.GDLeague.GrantTokenMogdrogenKill()
	gd.quests.roverLegacy.avatarKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Mogdrogen)
end

-- rewards points to the player for holding the Mogdrogen token
function gd.GDLeague.GrantPointsMogdrogen()
	gd.GDLeague.GrantGDLPoints(quest_super_boss_Mogdrogen)
end

-- grants the token to the player when any Ravager is killed
function gd.GDLeague.GrantTokenRavagerKill()	
	gd.quests.areaEQuestWendigoVillage.ravagerKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Ravager)
end

-- rewards points to the player for holding the Ravager token
function gd.GDLeague.GrantPointsRavager()
	gd.GDLeague.GrantGDLPoints(quest_super_boss_Ravager)
end

-- grants the token to the player when Calagadra is killed
function gd.GDLeague.GrantTokenCallagadraKill()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Callagadra)
end

-- rewards points to the player for holding the Callagadra token
function gd.GDLeague.GrantPointsCallagadra()
	gd.GDLeague.GrantGDLPoints(quest_super_boss_Callagadra)
end

-- grants the token to the player when Crate of Enterntainment is killed
function gd.GDLeague.GrantTokenCrateKill()
	gd.quests.areaGNPCSpecial.bossKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Crate)
end

-- rewards points to the player for holding the Crate of Entertainment token
function gd.GDLeague.GrantPointsCrate()
	gd.GDLeague.GrantGDLPoints(quest_super_boss_Crate)
end


local quest_boss_elite_challenge_Theodin = "Boss_Elite_Challenge_Theodin"
local quest_boss_elite_challenge_Korvaak = "Boss_Elite_Challenge_Korvaak"

-- grants the token to the player when Theodin Marcell is killed
function gd.GDLeague.GrantTokenTheodinKill()
	gd.quests.areaFFleshshaper.bossPhase03Killed()
	local player = Game.GetLocalPlayer()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_elite_challenge_Theodin, gd.GDLeague.EliteLeagueRequirement)
end

-- rewards points to the player for holding the Theodin Marcell token
function gd.GDLeague.GrantPointsTheodin()
	gd.GDLeague.GrantGDLPoints(quest_boss_elite_challenge_Theodin)
end

-- grants the token to the player when Korvaak is killed
function gd.GDLeague.GrantTokenKorvaakKill(id)
	gd.quests.areaGKorvaak.bossPhase03Finished(id)
	local player = Game.GetLocalPlayer()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_elite_challenge_Korvaak, gd.GDLeague.EliteLeagueRequirement )
end

-- rewards points to the player for holding the Korvaak token
function gd.GDLeague.GrantPointsKorvaak()
	gd.GDLeague.GrantGDLPoints(quest_boss_elite_challenge_Korvaak)
end



-- Items
local quest_item_anquish = "Item_Anquish"
local quest_item_dread = "Item_Dread"
local quest_item_soulrend = "Item_Soulrend"
local quest_item_worldeater = "Item_Worldeater"
local quest_item_decreealdrich = "Item_DecreeAldrich"
local quest_item_corruption = "Item_Corruption"
local quest_item_nightbringer = "Item_Nightbringer"
local quest_item_nightshard = "Item_Nightshard"
local quest_item_morgonethvisage = "Item_MorgonethVisage"
local quest_item_decreemalmouth = "Item_DecreeMalmouth"
local quest_item_heartsandking = "Item_HeartSandKing"
local quest_item_outcastsecret = "Item_OutcastSecret"
local quest_item_primering = "Item_PrimeRing"
local quest_item_vanquisherhelm = "Item_VanquisherHelm"
local quest_item_vanquishermantle = "Item_VanquisherMantle"
local quest_item_vanquisherarmor = "Item_VanquisherArmor"
local quest_item_vanquishergem = "Item_VanquisherGem"


-- checks if player has touch of anguish in their inventory
function gd.GDLeague.CheckItemAnguish()
	gd.GDLeague.GrantGDLPoints(quest_item_anquish)
end

-- checks if plaer has touch of dread in their inventory
function gd.GDLeague.CheckItemDread()
	gd.GDLeague.GrantGDLPoints(quest_item_dread)
end

-- checks if plaer has soulrend in their inventory
function gd.GDLeague.CheckItemSoulrend()
	gd.GDLeague.GrantGDLPoints(quest_item_soulrend)
end

-- checks if plaer has Shar'Zul's world eater in their inventory
function gd.GDLeague.CheckItemWorldEarter()
	gd.GDLeague.GrantGDLPoints(quest_item_worldeater)
end

-- checks if plaer has decree of Aldrich in their inventory
function gd.GDLeague.CheckItemDecreeAldrich()
	gd.GDLeague.GrantGDLPoints(quest_item_decreealdrich)
end

-- checks if plaer has Gargabol corruption in their inventory
function gd.GDLeague.CheckItemGargabol()
	gd.GDLeague.GrantGDLPoints(quest_item_corruption)
end

-- checks if plaer has nightbringer in their inventory
function gd.GDLeague.CheckItemNigthbringer()
	gd.GDLeague.GrantGDLPoints(quest_item_nightbringer)
end

-- checks if plaer has nightshard in their inventory
function gd.GDLeague.CheckItemNightshard()
	gd.GDLeague.GrantGDLPoints(quest_item_nightshard)
end

-- checks if plaer has Morgoneths visage in their inventory
function gd.GDLeague.CheckItemMorgonethVisage()
	gd.GDLeague.GrantGDLPoints(quest_item_morgonethvisage)
end

-- checks if plaer has touch of anguish in their inventory
function gd.GDLeague.CheckItemDecreeMalmouth()
	gd.GDLeague.GrantGDLPoints(quest_item_decreemalmouth)
end

-- checks if plaer has Heart of the Sand King in their inventory
function gd.GDLeague.CheckItemSandKingHearth()
	gd.GDLeague.GrantGDLPoints(quest_item_heartsandking)
end

-- checks if plaer has Outcast's secret in their inventory
function gd.GDLeague.CheckItemOutcastSecret()
	gd.GDLeague.GrantGDLPoints(quest_item_outcastsecret)
end

-- checks if plaer has the prime ring in their inventory
function gd.GDLeague.CheckItemPrimeRing()
	gd.GDLeague.GrantItemRewards("records/items/gearaccessories/rings/d228_ring.dbr", quest_item_primering)
end

-- checks if plaer has the Vanquisher Helm in their inventory
function gd.GDLeague.CheckItemVanquisherHelm()
	gd.GDLeague.GrantItemRewards("records/items/gearhead/d210_head.dbr", quest_item_vanquisherhelm)
end

-- checks if plaer has the Vanquisher Mantle in their inventory
function gd.GDLeague.CheckItemVanquisherMantle()
	gd.GDLeague.GrantItemRewards("records/items/gearshoulders/d208_shoulder.dbr", quest_item_vanquishermantle)
end

-- checks if plaer has the Vanquisher Armor in their inventory
function gd.GDLeague.CheckItemVanquisherArmor()
	gd.GDLeague.GrantItemRewards("records/items/geartorso/d208_torso.dbr", quest_item_vanquisherarmor)
end

-- checks if plaer has the Vanquisher Gem in their inventory
function gd.GDLeague.CheckItemVanquisherGem()
	gd.GDLeague.GrantItemRewards("records/items/gearaccessories/necklaces/d212_necklace.dbr", quest_item_vanquishergem)
end




-- Season 2 - Boss Fights, Doors, Rewards
function gd.GDLeague.MonsterLevel()
	return 110, nil
end

function gd.GDLeague.SpawnMonster(recordPath, id)
	local coords = Entity.Get(id):GetCoords()
	local spawn = Character.Create(recordPath, gd.GDLeague.MonsterLevel(), nil) 
	spawn:SetCoords(coords)
end

function gd.GDLeague.GrantQuestItems(key1, key2, key3)
	local player = Game.GetLocalPlayer()
	if(Game.GetGameDifficulty() == Game.Difficulty.Normal) then
		player:GiveItem(key1, 1, false)
	end
	if(Game.GetGameDifficulty() == Game.Difficulty.Epic) then
		player:GiveItem(key2, 1, false)
	end
	if(Game.GetGameDifficulty() == Game.Difficulty.Legendary) then
		player:GiveItem(key3, 1, false)
	end
end


local quest_super_boss_mod_rolderathis = "Super_Boss_Mod_Rolderathis"
local Rolderathis_Shortcut_id
local is_Rolderathis_spawned = false
local rolderathis_key1 = "records/items/grimleagues02/questitems/rolderathis_key1.dbr"
local rolderathis_key2 = "records/items/grimleagues02/questitems/rolderathis_key2.dbr"
local rolderathis_key3 = "records/items/grimleagues02/questitems/rolderathis_key3.dbr"

function gd.GDLeague.SpawnRolderathis(id)
	local player = Game.GetLocalPlayer()
	if (not is_Rolderathis_spawned && (Game.GetGameDifficulty() == LeagueDifficultyRequirement && player:GetLevel() >= LeagueLevelRequirement)) then
		gd.GDLeague.SpawnMonster("records/creatures/enemies/GrimLeague/super_boss_rolderathis.dbr", id)
		is_Rolderathis_spawned = true
	end
end

function gd.GDLeague.GrantTokenRolderathis(id)
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_mod_rolderathis)
	if(Rolderathis_Shortcut_id ~= nil) then
		local door = Door.Get(Rolderathis_Shortcut_id)
		door:SetLocked(false)
	end
end

function gd.GDLeague.DoorRolderathisAddToWorld(id)
	Rolderathis_Shortcut_id = id
end

function gd.GDLeague.GrantPointsRolderathis()
	gd.GDLeague.GrantGDLPoints(quest_super_boss_mod_rolderathis)
end

function gd.GDLeague.GrantQuestItemRolderathis()
	gd.GDLeague.GrantQuestItems(rolderathis_key1, rolderathis_key2, rolderathis_key3)
end

function gd.GDLeague.UnlockDoorRolderathis(id)
	local player = Game.GetLocalPlayer()
	if(player:HasItem(LeagueEntryToken, 1, false) and player:HasItem(rolderathis_key1, 1, false) and player:HasItem(rolderathis_key2, 1, false) and player:HasItem(rolderathis_key3, 1, false)) then
		local door = Door.Get(id)
		door:SetLocked(false)
		door:Open()
	end
end


local quest_super_boss_mod_galakros = "Super_Boss_Mod_Galakros"
local Galakros_Shortcut_id
local is_Galakros_spawned = false
local galakros_key1 = "records/items/grimleagues02/questitems/galakros_key1.dbr"
local galakros_key2 = "records/items/grimleagues02/questitems/galakros_key2.dbr"
local galakros_key3 = "records/items/grimleagues02/questitems/galakros_key3.dbr"

function gd.GDLeague.SpawnGalakros(id)
	local player = Game.GetLocalPlayer()
	if (not is_Galakros_spawned && (Game.GetGameDifficulty() == LeagueDifficultyRequirement && player:GetLevel() >= LeagueLevelRequirement) ) then
		gd.GDLeague.SpawnMonster("records/creatures/enemies/GrimLeague/super_boss_galakros.dbr", id)
		is_Galakros_spawned = true
	end
end

function gd.GDLeague.GrantTokenGalakros(id)
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_mod_galakros)
	if(Galakros_Shortcut_id ~= nil) then
		local door = Door.Get(Galakros_Shortcut_id)
		door:SetLocked(false)
	end
end

function gd.GDLeague.DoorGalakrosAddToWorld(id)
	Galakros_Shortcut_id = id
end

function gd.GDLeague.GrantPointsGalakros()
	gd.GDLeague.GrantGDLPoints(quest_super_boss_mod_galakros)
end

function gd.GDLeague.GrantQuestItemGalakros()
	gd.GDLeague.GrantQuestItems(galakros_key1, galakros_key2, galakros_key3)
end

function gd.GDLeague.UnlockDoorGalakros(id)
	local player = Game.GetLocalPlayer()
	if(player:HasItem(LeagueEntryToken, 1, false) and player:HasItem(galakros_key1, 1, false) and player:HasItem(galakros_key2, 1, false) and player:HasItem(galakros_key3, 1, false)) then
		local door = Door.Get(id)
		door:SetLocked(false)
		door:Open()
	end
end


local quest_super_boss_mod_ballognath = "Super_Boss_Mod_BallogNath"
local BallogNath_Shortcut_id
local is_BallogNath_spawned = false
local ballognath_key1 = "records/items/grimleagues02/questitems/ballognath_key1.dbr"
local ballognath_key2 = "records/items/grimleagues02/questitems/ballognath_key2.dbr"
local ballognath_key3 = "records/items/grimleagues02/questitems/ballognath_key3.dbr"

function gd.GDLeague.SpawnBallogNath(id)
	local player = Game.GetLocalPlayer()
	if (not is_BallogNath_spawned && (Game.GetGameDifficulty() == LeagueDifficultyRequirement && player:GetLevel() >= LeagueLevelRequirement) ) then
		gd.GDLeague.SpawnMonster("records/creatures/enemies/GrimLeague/super_boss_ballog_nath.dbr", id)
		is_BallogNath_spawned = true
	end
end

function gd.GDLeague.GrantTokenBallogNath(id)
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_mod_ballognath)
	if(BallogNath_Shortcut_id ~= nil) then
		local door = Door.Get(BallogNath_Shortcut_id)
		door:SetLocked(false)
	end
end

function gd.GDLeague.DoorBallogNathAddToWorld(id)
	BallogNath_Shortcut_id = id
end

function gd.GDLeague.GrantPointsBallogNath()
	gd.GDLeague.GrantGDLPoints(quest_super_boss_mod_ballognath)
end

function gd.GDLeague.UnlockDoorBallogNath(id)
	local player = Game.GetLocalPlayer()
	if(player:HasItem(LeagueEntryToken, 1, false) and player:HasItem(ballognath_key1, 1, false) and player:HasItem(ballognath_key2, 1, false) and player:HasItem(ballognath_key3, 1, false)) then
		local door = Door.Get(id)
		door:SetLocked(false)
		door:Open()
	end
end

function gd.GDLeague.LockDoorBallogNath(id)
	local entity = Entity.Get(id)	
	if entity ~= nil then
		entity:Destroy()	
	end
end

function gd.GDLeague.GrantQuestItemBallogNath()
	gd.GDLeague.GrantQuestItems(ballognath_key1, ballognath_key2, ballognath_key3)
end