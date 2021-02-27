/*
	
	GRIM DAWN ENDLESS DUNGEON
	
	For more information, visit us at http://www.grimdawn.com
	
*/

gd.endlessDungeon.rewards = {}

--
-- Dispense rewards at the end of the Endless Dungeon
-- up to 7 chests are dispensed based on which stopping point the players achieve, plus 2 Bonus Chests and 2 Special Checkpoint Chests
-- Rewards can be dispensed after each boss room
--
local vendorId = 0
local vendorScriptId = 0

local rewardDispensed = false
local rewardDisabled = false

local checkpointUsed = false
local checkPointTier = 0

local bonusChestIds = {0, 0}

local specialChestId = 0
local specialChest02Id = 0

local rewardChestIds = {0, 0, 0, 0, 0, 0, 0}
local rewardChestEntities = {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil}
local destroyChestEntities = {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil}
-- total chests that can spawn at max, stored here because lua sucks
local maxChests = 11

local dbrChestA = "records/endlessdungeon/lootchests/chest_a01.dbr"
local dbrChestB = "records/endlessdungeon/lootchests/chest_b01.dbr"
local dbrChestC = "records/endlessdungeon/lootchests/chest_c01.dbr"
local dbrChestD = "records/endlessdungeon/lootchests/chest_d01.dbr"
local dbrChestE = "records/endlessdungeon/lootchests/chest_e01.dbr"
local dbrChestF = "records/endlessdungeon/lootchests/chest_f01.dbr"
local dbrChestG = "records/endlessdungeon/lootchests/chest_g01.dbr"
local dbrChestH = "records/endlessdungeon/lootchests/chest_h01.dbr"
local dbrChestI = "records/endlessdungeon/lootchests/chest_i01.dbr"
local dbrChestJ = "records/endlessdungeon/lootchests/chest_j01.dbr"
local dbrChestK = "records/endlessdungeon/lootchests/chest_k01.dbr"
local dbrChestL = "records/endlessdungeon/lootchests/chest_l01.dbr"
local dbrChestM = "records/endlessdungeon/lootchests/chest_m01.dbr"
local dbrChestN= "records/endlessdungeon/lootchests/chest_n01.dbr"
local dbrChestO = "records/endlessdungeon/lootchests/chest_o01.dbr"
local dbrChestP = "records/endlessdungeon/lootchests/chest_p01.dbr"
local dbrChestQ =  "records/endlessdungeon/lootchests/chest_q01.dbr"

local dbrSpecialChestA = "records/endlessdungeon/lootchests/chestspecial_a01.dbr"
local dbrSpecialChestB = "records/endlessdungeon/lootchests/chestspecial_b01.dbr"
local dbrSpecialChestC = "records/endlessdungeon/lootchests/chestspecial_c01.dbr"
local dbrSpecialChestD = "records/endlessdungeon/lootchests/chestspecial_d01.dbr"
local dbrSpecialChestE = "records/endlessdungeon/lootchests/chestspecial_e01.dbr"
local dbrSpecialChestF = "records/endlessdungeon/lootchests/chestspecial_f01.dbr"

local dbrSpecialChest02A = "records/endlessdungeon/lootchests/chestspecial_a02.dbr"
local dbrSpecialChest02B = "records/endlessdungeon/lootchests/chestspecial_b02.dbr"
local dbrSpecialChest02C = "records/endlessdungeon/lootchests/chestspecial_c02.dbr"
local dbrSpecialChest02D = "records/endlessdungeon/lootchests/chestspecial_d02.dbr"
local dbrSpecialChest02E = "records/endlessdungeon/lootchests/chestspecial_e02.dbr"

-- Reward Table by Reward Tier with # of Entries equal to # of Chests
-- Chests go from A to Q, with incrementally better rewards, nil for when the chest location is unused
local rewardTable = { }
rewardTable[0] = { nil, nil, dbrChestA, dbrChestB, dbrChestA, nil, nil }

rewardTable[1] = { nil, dbrChestA, dbrChestD, dbrChestJ, dbrChestD, dbrChestA, nil }
rewardTable[2] = { nil, dbrChestB, dbrChestD, dbrChestJ, dbrChestD, dbrChestB, nil }
rewardTable[3] = { nil, dbrChestB, dbrChestE, dbrChestJ, dbrChestD, dbrChestB, nil }
rewardTable[4] = { nil, dbrChestC, dbrChestE, dbrChestJ, dbrChestD, dbrChestB, nil }
rewardTable[5] = { nil, dbrChestC, dbrChestE, dbrChestJ, dbrChestD, dbrChestC, nil }

rewardTable[6] = { nil, dbrChestD, dbrChestE, dbrChestJ, dbrChestE, dbrChestC, nil }
rewardTable[7] = { nil, dbrChestD, dbrChestF, dbrChestJ, dbrChestE, dbrChestC, nil }
rewardTable[8] = { nil, dbrChestE, dbrChestF, dbrChestJ, dbrChestE, dbrChestC, nil }
rewardTable[9] = { nil, dbrChestE, dbrChestF, dbrChestJ, dbrChestE, dbrChestC, nil }
rewardTable[10] = { nil, dbrChestE, dbrChestG, dbrChestJ, dbrChestE, dbrChestC, nil }

rewardTable[11] = { nil, dbrChestE, dbrChestG, dbrChestJ, dbrChestF, dbrChestD, nil }
rewardTable[12] = { nil, dbrChestF, dbrChestG, dbrChestJ, dbrChestF, dbrChestD, nil }
rewardTable[13] = { nil, dbrChestF, dbrChestH, dbrChestK, dbrChestF, dbrChestD, nil }
rewardTable[14] = { nil, dbrChestF, dbrChestH, dbrChestK, dbrChestF, dbrChestE, nil }
rewardTable[15] = { nil, dbrChestF, dbrChestH, dbrChestK, dbrChestG, dbrChestE, nil }

rewardTable[16] = { nil, dbrChestG, dbrChestI, dbrChestK, dbrChestG, dbrChestE, nil }
rewardTable[17] = { nil, dbrChestG, dbrChestI, dbrChestL, dbrChestG, dbrChestF, nil }
rewardTable[18] = { nil, dbrChestG, dbrChestI, dbrChestL, dbrChestG, dbrChestF, nil }
rewardTable[19] = { nil, dbrChestG, dbrChestI, dbrChestL, dbrChestH, dbrChestF, nil }
rewardTable[20] = { nil, dbrChestG, dbrChestJ, dbrChestL, dbrChestH, dbrChestF, nil }

rewardTable[21] = { nil, dbrChestH, dbrChestJ, dbrChestL, dbrChestH, dbrChestG, nil }
rewardTable[22] = { nil, dbrChestH, dbrChestJ, dbrChestL, dbrChestI, dbrChestG, nil }
rewardTable[23] = { nil, dbrChestH, dbrChestK, dbrChestL, dbrChestI, dbrChestG, nil }
rewardTable[24] = { nil, dbrChestH, dbrChestK, dbrChestM, dbrChestI, dbrChestG, nil }
rewardTable[25] = { nil, dbrChestH, dbrChestK, dbrChestM, dbrChestI, dbrChestH, nil }

rewardTable[26] = { nil, dbrChestI, dbrChestK, dbrChestM, dbrChestI, dbrChestH, nil }
rewardTable[27] = { nil, dbrChestI, dbrChestK, dbrChestM, dbrChestJ, dbrChestH, nil }
rewardTable[28] = { nil, dbrChestI, dbrChestL, dbrChestM, dbrChestJ, dbrChestH, nil }
rewardTable[29] = { nil, dbrChestI, dbrChestL, dbrChestM, dbrChestJ, dbrChestI, nil }
rewardTable[30] = { nil, dbrChestJ, dbrChestL, dbrChestM, dbrChestJ, dbrChestI, nil }

rewardTable[31] = { nil, dbrChestJ, dbrChestL, dbrChestN, dbrChestK, dbrChestI, nil }
rewardTable[32] = { nil, dbrChestJ, dbrChestM, dbrChestN, dbrChestK, dbrChestI, nil }
rewardTable[33] = { nil, dbrChestJ, dbrChestM, dbrChestN, dbrChestK, dbrChestJ, nil }
rewardTable[34] = { nil, dbrChestK, dbrChestM, dbrChestN, dbrChestK, dbrChestJ, nil }
rewardTable[35] = { nil, dbrChestK, dbrChestM, dbrChestN, dbrChestL, dbrChestJ, nil }

rewardTable[36] = { nil, dbrChestK, dbrChestN, dbrChestN, dbrChestL, dbrChestJ, nil }
rewardTable[37] = { nil, dbrChestK, dbrChestN, dbrChestN, dbrChestL, dbrChestK, nil }
rewardTable[38] = { nil, dbrChestK, dbrChestN, dbrChestO, dbrChestL, dbrChestK, nil }
rewardTable[39] = { nil, dbrChestL, dbrChestN, dbrChestO, dbrChestL, dbrChestK, nil }
rewardTable[40] = { nil, dbrChestL, dbrChestN, dbrChestO, dbrChestM, dbrChestK, nil }

rewardTable[41] = { dbrChestB, dbrChestL, dbrChestN, dbrChestO, dbrChestM, dbrChestL, nil }
rewardTable[42] = { dbrChestB, dbrChestL, dbrChestO, dbrChestO, dbrChestM, dbrChestL, nil }
rewardTable[43] = { dbrChestC, dbrChestL, dbrChestO, dbrChestO, dbrChestM, dbrChestL, nil }
rewardTable[44] = { dbrChestC, dbrChestL, dbrChestO, dbrChestP, dbrChestM, dbrChestL, nil }
rewardTable[45] = { dbrChestC, dbrChestM, dbrChestO, dbrChestP, dbrChestM, dbrChestL, nil }

rewardTable[46] = { dbrChestC, dbrChestM, dbrChestO, dbrChestP, dbrChestN, dbrChestL, dbrChestB }
rewardTable[47] = { dbrChestC, dbrChestM, dbrChestO, dbrChestP, dbrChestN, dbrChestM, dbrChestB }
rewardTable[48] = { dbrChestC, dbrChestM, dbrChestO, dbrChestP, dbrChestN, dbrChestM, dbrChestC }
rewardTable[49] = { dbrChestC, dbrChestM, dbrChestP, dbrChestP, dbrChestN, dbrChestM, dbrChestC }
rewardTable[50] = { dbrChestD, dbrChestM, dbrChestP, dbrChestP, dbrChestN, dbrChestM, dbrChestC }

rewardTable[51] = { dbrChestD, dbrChestN, dbrChestP, dbrChestQ, dbrChestN, dbrChestM, dbrChestC }
rewardTable[52] = { dbrChestD, dbrChestN, dbrChestP, dbrChestQ, dbrChestN, dbrChestM, dbrChestD }
rewardTable[53] = { dbrChestD, dbrChestN, dbrChestP, dbrChestQ, dbrChestO, dbrChestM, dbrChestD }
rewardTable[54] = { dbrChestD, dbrChestN, dbrChestP, dbrChestQ, dbrChestO, dbrChestN, dbrChestD }
rewardTable[55] = { dbrChestE, dbrChestN, dbrChestP, dbrChestQ, dbrChestO, dbrChestN, dbrChestD }

rewardTable[56] = { dbrChestE, dbrChestN, dbrChestQ, dbrChestQ, dbrChestO, dbrChestN, dbrChestD }
rewardTable[57] = { dbrChestE, dbrChestN, dbrChestQ, dbrChestQ, dbrChestO, dbrChestN, dbrChestE }
rewardTable[58] = { dbrChestE, dbrChestO, dbrChestQ, dbrChestQ, dbrChestO, dbrChestN, dbrChestE }
rewardTable[59] = { dbrChestE, dbrChestO, dbrChestQ, dbrChestQ, dbrChestP, dbrChestN, dbrChestE }
rewardTable[60] = { dbrChestF, dbrChestO, dbrChestQ, dbrChestQ, dbrChestP, dbrChestN, dbrChestF }

rewardTable[61] = { dbrChestF, dbrChestO, dbrChestQ, dbrChestQ, dbrChestP, dbrChestO, dbrChestF }
rewardTable[62] = { dbrChestF, dbrChestO, dbrChestQ, dbrChestQ, dbrChestP, dbrChestO, dbrChestG }
rewardTable[63] = { dbrChestF, dbrChestO, dbrChestQ, dbrChestQ, dbrChestP, dbrChestO, dbrChestH }
rewardTable[64] = { dbrChestG, dbrChestO, dbrChestQ, dbrChestQ, dbrChestP, dbrChestO, dbrChestH }
rewardTable[65] = { dbrChestG, dbrChestP, dbrChestQ, dbrChestQ, dbrChestP, dbrChestO, dbrChestH }

rewardTable[66] = { dbrChestG, dbrChestP, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestO, dbrChestI }
rewardTable[67] = { dbrChestG, dbrChestP, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP, dbrChestI }
rewardTable[68] = { dbrChestH, dbrChestP, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP, dbrChestI }
rewardTable[69] = { dbrChestH, dbrChestP, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP, dbrChestJ }
rewardTable[70] = { dbrChestH, dbrChestP, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP, dbrChestK }

rewardTable[71] = { dbrChestH, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP, dbrChestK }
rewardTable[72] = { dbrChestI, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP, dbrChestK }
rewardTable[73] = { dbrChestI, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestK }
rewardTable[74] = { dbrChestI, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestL }
rewardTable[75] = { dbrChestI, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestM }

rewardTable[76] = { dbrChestJ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestM }
rewardTable[77] = { dbrChestJ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestN }
rewardTable[78] = { dbrChestJ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestO }
rewardTable[79] = { dbrChestJ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP }
rewardTable[80] = { dbrChestK, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP }

rewardTable[81] = { dbrChestL, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP }
rewardTable[82] = { dbrChestM, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP }
rewardTable[83] = { dbrChestN, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP }
rewardTable[84] = { dbrChestO, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP }
rewardTable[85] = { dbrChestP, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP }

rewardTable[86] = { dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestP }
rewardTable[87] = { dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ, dbrChestQ }


-- Reward Table for Checkpoint for when players skip to a later floor, with # of Entries equal to # of Chests
-- Chests go from A to Q, with incrementally better rewards, nil for when the chest location is unused
local checkpointTable = { }
checkpointTable[5] = { nil, dbrChestB, dbrChestD, nil, nil, dbrChestB, nil }
checkpointTable[10] = { nil, dbrChestC, dbrChestE, nil, nil, dbrChestC, nil }
checkpointTable[15] = { nil, dbrChestD, dbrChestF, nil, nil, dbrChestD, nil }
checkpointTable[20] = { nil, dbrChestE, dbrChestG, nil, nil, dbrChestE, nil }
checkpointTable[25] = { nil, dbrChestF, dbrChestH, nil, nil, dbrChestF, nil }
checkpointTable[30] = { nil, dbrChestG, dbrChestI, nil, nil, dbrChestH, nil }
checkpointTable[35] = { nil, dbrChestH, dbrChestJ, nil, nil, dbrChestH, nil }
checkpointTable[40] = { nil, dbrChestI, dbrChestK, nil, nil, dbrChestI, nil }
checkpointTable[45] = { nil, dbrChestJ, dbrChestL, nil, nil, dbrChestJ, nil }
checkpointTable[50] = { nil, dbrChestK, dbrChestM, nil, nil, dbrChestK, nil }
checkpointTable[55] = { nil, dbrChestL, dbrChestN, nil, nil, dbrChestL, nil }
checkpointTable[60] = { nil, dbrChestM, dbrChestN, nil, nil, dbrChestM, nil }
checkpointTable[65] = { nil, dbrChestN, dbrChestO, nil, nil, dbrChestN, nil }
checkpointTable[70] = { nil, dbrChestO, dbrChestO, nil, nil, dbrChestO, nil }
checkpointTable[75] = { nil, dbrChestP, dbrChestP, nil, nil, dbrChestP, nil }
checkpointTable[80] = { nil, dbrChestQ, dbrChestP, nil, nil, dbrChestQ, nil }
checkpointTable[85] = { nil, dbrChestQ, dbrChestQ, nil, nil, dbrChestQ, nil }
checkpointTable[90] = { nil, dbrChestQ, dbrChestQ, nil, nil, dbrChestQ, nil }
checkpointTable[95] = { nil, dbrChestQ, dbrChestQ, nil, nil, dbrChestQ, nil }
checkpointTable[100] = { nil, dbrChestQ, dbrChestQ, nil, nil, dbrChestQ, nil }


-- Bonus Table used for the Time-based chests.
-- Chests go from A to Q, with incrementally better rewards, nil for when the chest location is unused
local bonusTable = { }
bonusTable[0] = { nil, nil }

bonusTable[1] = { nil, dbrChestA }
bonusTable[2] = { nil, dbrChestA }
bonusTable[3] = { dbrChestA, dbrChestA }
bonusTable[4] = { dbrChestA, dbrChestA }
bonusTable[5] = { dbrChestB, dbrChestA }

bonusTable[6] = { dbrChestB, dbrChestA }
bonusTable[7] = { dbrChestB, dbrChestB }
bonusTable[8] = { dbrChestB, dbrChestB }
bonusTable[9] = { dbrChestB, dbrChestC }
bonusTable[10] = { dbrChestB, dbrChestC }

bonusTable[11] = { dbrChestC, dbrChestC }
bonusTable[12] = { dbrChestC, dbrChestC }
bonusTable[13] = { dbrChestC, dbrChestD }
bonusTable[14] = { dbrChestC, dbrChestD }
bonusTable[15] = { dbrChestD, dbrChestD }

bonusTable[16] = { dbrChestD, dbrChestD }
bonusTable[17] = { dbrChestD, dbrChestE }
bonusTable[18] = { dbrChestD, dbrChestE }
bonusTable[19] = { dbrChestE, dbrChestE }
bonusTable[20] = { dbrChestE, dbrChestE }

bonusTable[21] = { dbrChestE, dbrChestF }
bonusTable[22] = { dbrChestE, dbrChestF }
bonusTable[23] = { dbrChestF, dbrChestF }
bonusTable[24] = { dbrChestF, dbrChestF }
bonusTable[25] = { dbrChestF, dbrChestG }

bonusTable[26] = { dbrChestF, dbrChestG }
bonusTable[27] = { dbrChestG, dbrChestG }
bonusTable[28] = { dbrChestG, dbrChestG }
bonusTable[29] = { dbrChestG, dbrChestG }
bonusTable[30] = { dbrChestG, dbrChestH }

bonusTable[31] = { dbrChestG, dbrChestH }
bonusTable[32] = { dbrChestG, dbrChestH }
bonusTable[33] = { dbrChestH, dbrChestH }
bonusTable[34] = { dbrChestH, dbrChestH }
bonusTable[35] = { dbrChestH, dbrChestH }

bonusTable[36] = { dbrChestH, dbrChestI }
bonusTable[37] = { dbrChestH, dbrChestI }
bonusTable[38] = { dbrChestH, dbrChestI }
bonusTable[39] = { dbrChestI, dbrChestI }
bonusTable[40] = { dbrChestI, dbrChestI }

bonusTable[41] = { dbrChestI, dbrChestI }
bonusTable[42] = { dbrChestI, dbrChestJ }
bonusTable[43] = { dbrChestI, dbrChestJ }
bonusTable[44] = { dbrChestI, dbrChestJ }
bonusTable[45] = { dbrChestJ, dbrChestJ }

bonusTable[46] = { dbrChestJ, dbrChestJ }
bonusTable[47] = { dbrChestJ, dbrChestJ }
bonusTable[48] = { dbrChestJ, dbrChestK }
bonusTable[49] = { dbrChestJ, dbrChestK }
bonusTable[50] = { dbrChestJ, dbrChestK }

bonusTable[51] = { dbrChestK, dbrChestK }
bonusTable[52] = { dbrChestK, dbrChestK }
bonusTable[53] = { dbrChestK, dbrChestK }
bonusTable[54] = { dbrChestK, dbrChestL }
bonusTable[55] = { dbrChestK, dbrChestL }

bonusTable[56] = { dbrChestK, dbrChestL }
bonusTable[57] = { dbrChestL, dbrChestL }
bonusTable[58] = { dbrChestL, dbrChestL }
bonusTable[59] = { dbrChestL, dbrChestL }
bonusTable[60] = { dbrChestL, dbrChestM }

bonusTable[61] = { dbrChestL, dbrChestM }
bonusTable[62] = { dbrChestL, dbrChestM }
bonusTable[63] = { dbrChestM, dbrChestM }
bonusTable[64] = { dbrChestM, dbrChestM }
bonusTable[65] = { dbrChestM, dbrChestM }

bonusTable[66] = { dbrChestM, dbrChestN }
bonusTable[67] = { dbrChestM, dbrChestN }
bonusTable[68] = { dbrChestM, dbrChestN }
bonusTable[69] = { dbrChestN, dbrChestN }
bonusTable[70] = { dbrChestN, dbrChestN }

bonusTable[71] = { dbrChestN, dbrChestN }
bonusTable[72] = { dbrChestN, dbrChestO }
bonusTable[73] = { dbrChestN, dbrChestO }
bonusTable[74] = { dbrChestN, dbrChestO }
bonusTable[75] = { dbrChestO, dbrChestO }

bonusTable[76] = { dbrChestO, dbrChestO }
bonusTable[77] = { dbrChestO, dbrChestO }
bonusTable[78] = { dbrChestO, dbrChestP }
bonusTable[79] = { dbrChestO, dbrChestP }
bonusTable[80] = { dbrChestO, dbrChestP }

bonusTable[81] = { dbrChestO, dbrChestQ }
bonusTable[82] = { dbrChestO, dbrChestQ }
bonusTable[83] = { dbrChestO, dbrChestQ }
bonusTable[84] = { dbrChestP, dbrChestQ }
bonusTable[85] = { dbrChestP, dbrChestQ }

bonusTable[86] = { dbrChestP, dbrChestQ }
bonusTable[87] = { dbrChestQ, dbrChestQ }

-- Bonus Reward Table for Checkpoint for when players skip to a later floor, with # of Entries equal to # of Chests
-- Chests go from A to Q, with incrementally better rewards, nil for when the chest location is unused
local checkpointBonusTable = { }
checkpointBonusTable[10] = { dbrChestB, nil }
checkpointBonusTable[15] = { dbrChestD, nil }
checkpointBonusTable[20] = { dbrChestE, nil }
checkpointBonusTable[25] = { dbrChestF, nil }
checkpointBonusTable[30] = { dbrChestG, nil }
checkpointBonusTable[35] = { dbrChestH, nil }
checkpointBonusTable[40] = { dbrChestI, nil }
checkpointBonusTable[45] = { dbrChestJ, nil }
checkpointBonusTable[50] = { dbrChestJ, nil }
checkpointBonusTable[55] = { dbrChestK, nil }
checkpointBonusTable[60] = { dbrChestL, nil }
checkpointBonusTable[65] = { dbrChestM, nil }
checkpointBonusTable[70] = { dbrChestM, nil }
checkpointBonusTable[75] = { dbrChestO, nil }
checkpointBonusTable[80] = { dbrChestN, nil }
checkpointBonusTable[85] = { dbrChestP, nil }
checkpointBonusTable[90] = { dbrChestP, nil }
checkpointBonusTable[95] = { dbrChestP, nil }
checkpointBonusTable[100] = { dbrChestP, nil }


-- Special Tables used for reaching checkpoints and specific dungeon tiers.
local specialTable = { nil, dbrSpecialChestA, dbrSpecialChestB, dbrSpecialChestC, dbrSpecialChestD, dbrSpecialChestE, dbrSpecialChestF }

local special02Table = { nil, dbrSpecialChest02A, dbrSpecialChest02B, dbrSpecialChest02C, dbrSpecialChest02D, dbrSpecialChest02E }

function gd.endlessDungeon.rewards.GetCheckPointTier()
	return checkPointTier
end

function gd.endlessDungeon.rewards.rewardChest01OnAddToWorld(objectId)

	if Server then
		rewardChestIds[1] = objectId
		
	end
	
end

function gd.endlessDungeon.rewards.rewardChest02OnAddToWorld(objectId)

	if Server then
		rewardChestIds[2] = objectId
		
	end
	
end

function gd.endlessDungeon.rewards.rewardChest03OnAddToWorld(objectId)

	if Server then
		rewardChestIds[3] = objectId
		
	end
	
end

function gd.endlessDungeon.rewards.rewardChest04OnAddToWorld(objectId)

	if Server then
		rewardChestIds[4] = objectId
		
	end
	
end

function gd.endlessDungeon.rewards.rewardChest05OnAddToWorld(objectId)

	if Server then
		rewardChestIds[5] = objectId
		
	end
	
end

function gd.endlessDungeon.rewards.rewardChest06OnAddToWorld(objectId)

	if Server then
		rewardChestIds[6] = objectId
		
	end
	
end

function gd.endlessDungeon.rewards.rewardChest07OnAddToWorld(objectId)

	if Server then
		rewardChestIds[7] = objectId
		
	end
	
end


function gd.endlessDungeon.rewards.bonusChest01OnAddToWorld(objectId)

	if Server then
		bonusChestIds[1] = objectId
		
	end
	
end

function gd.endlessDungeon.rewards.bonusChest02OnAddToWorld(objectId)

	if Server then
		bonusChestIds[2] = objectId
		
	end
	
end

function gd.endlessDungeon.rewards.specialChest01OnAddToWorld(objectId)

	if Server then
		specialChestId = objectId
		
	end
	
end

function gd.endlessDungeon.rewards.specialChest02OnAddToWorld(objectId)

	if Server then
		specialChest02Id = objectId
		
	end
	
end

-- Show Screen Glow for when boss floor is cleared
local function screenGlow()
	
	local player = Game.GetLocalPlayer()
	
	if player:InEndlessBossFloor() then
		Game.PlayFullscreenGlow()
	
	end
	
end

-- Bestow Tokens for reaching certain floors 
local function shardProgressToken01()
	
	if (Game.GetGameDifficulty() == Game.Difficulty.Normal) then
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS01")
		
	elseif (Game.GetGameDifficulty() == Game.Difficulty.Epic) then
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS01")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ELITE_SHARDPROGRESS01")
		
	else
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS01")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ELITE_SHARDPROGRESS01")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ULTIMATE_SHARDPROGRESS01")
		
	end
	
end

local function shardProgressToken02()
	
	if (Game.GetGameDifficulty() == Game.Difficulty.Normal) then
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS02")
		
	elseif (Game.GetGameDifficulty() == Game.Difficulty.Epic) then
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS02")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ELITE_SHARDPROGRESS02")
		
	else
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS02")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ELITE_SHARDPROGRESS02")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ULTIMATE_SHARDPROGRESS02")
		
	end
	
end

local function shardProgressToken03()
	
	if (Game.GetGameDifficulty() == Game.Difficulty.Normal) then
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS03")
		
	elseif (Game.GetGameDifficulty() == Game.Difficulty.Epic) then
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS03")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ELITE_SHARDPROGRESS03")
		
	else
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS03")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ELITE_SHARDPROGRESS03")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ULTIMATE_SHARDPROGRESS03")
		
	end
	
end

local function shardProgressToken04()
	
	if (Game.GetGameDifficulty() == Game.Difficulty.Normal) then
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS04")
		
	elseif (Game.GetGameDifficulty() == Game.Difficulty.Epic) then
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS04")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ELITE_SHARDPROGRESS04")
		
	else
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_NORMAL_SHARDPROGRESS04")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ELITE_SHARDPROGRESS04")
		GiveTokenToLocalPlayer("ENDLESSDUNGEON_ULTIMATE_SHARDPROGRESS04")
		
	end
	
end

-- Bestow Tokens for Waystone Progression
local function waystoneTokenShard05()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD10") == false && player:HasToken("EG_SHARD15") == false) then
		GiveTokenToLocalPlayer("EG_SHARD05")
		
	end
	
end

local function waystoneTokenShard10()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD15") == false) then
		GiveTokenToLocalPlayer("EG_SHARD10")
		
		if (player:HasToken("EG_SHARD05")) then
			player:RemoveToken("EG_SHARD05")
			
		end
		
	end

end

local function waystoneTokenShard15()
	local player = Game.GetLocalPlayer()
	
	GiveTokenToLocalPlayer("EG_SHARD15")
	
	if (player:HasToken("EG_SHARD05")) then
		player:RemoveToken("EG_SHARD05")
		
	end
	
	if (player:HasToken("EG_SHARD10")) then
		player:RemoveToken("EG_SHARD10")
		
	end
	
end

local function waystoneTokenShard20()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD25") == false && player:HasToken("EG_SHARD30") == false) then
		GiveTokenToLocalPlayer("EG_SHARD20")
		
	end
	
	-- grant tokens for waystone01
	waystoneTokenShard15()
	
end

local function waystoneTokenShard25()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD30") == false) then
		GiveTokenToLocalPlayer("EG_SHARD25")
		
		if (player:HasToken("EG_SHARD20")) then
			player:RemoveToken("EG_SHARD20")
			
		end
		
	end
	
	-- grant tokens for waystone01
	waystoneTokenShard15()
	
end

local function waystoneTokenShard30()
	local player = Game.GetLocalPlayer()
	
	GiveTokenToLocalPlayer("EG_SHARD30")
	
	if (player:HasToken("EG_SHARD20")) then
		player:RemoveToken("EG_SHARD20")
		
	end
	
	if (player:HasToken("EG_SHARD25")) then
		player:RemoveToken("EG_SHARD25")
		
	end
	
	-- grant tokens for waystone01
	waystoneTokenShard15()
	
end

local function waystoneTokenShard35()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD40") == false && player:HasToken("EG_SHARD45") == false) then
		GiveTokenToLocalPlayer("EG_SHARD35")
		
	end
	
	-- grant tokens for waystone02
	waystoneTokenShard30()
	
end

local function waystoneTokenShard40()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD45") == false) then
		GiveTokenToLocalPlayer("EG_SHARD40")
		
		if (player:HasToken("EG_SHARD35")) then
			player:RemoveToken("EG_SHARD35")
			
		end
		
	end
	
	-- grant tokens for waystone02
	waystoneTokenShard30()
	
end

local function waystoneTokenShard45()
	local player = Game.GetLocalPlayer()
	
	GiveTokenToLocalPlayer("EG_SHARD45")
	
	if (player:HasToken("EG_SHARD35")) then
		player:RemoveToken("EG_SHARD35")
		
	end
	
	if (player:HasToken("EG_SHARD40")) then
		player:RemoveToken("EG_SHARD40")
		
	end
	
	-- grant tokens for waystone02
	waystoneTokenShard30()
	
end

local function waystoneTokenShard50()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD55") == false && player:HasToken("EG_SHARD60") == false) then
		GiveTokenToLocalPlayer("EG_SHARD50")
		
	end
	
	-- grant tokens for waystone03
	waystoneTokenShard45()
	
end

local function waystoneTokenShard55()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD60") == false) then
		GiveTokenToLocalPlayer("EG_SHARD55")
		
		if (player:HasToken("EG_SHARD50")) then
			player:RemoveToken("EG_SHARD50")
			
		end
		
	end
	
	-- grant tokens for waystone03
	waystoneTokenShard45()
	
end

local function waystoneTokenShard60()
	local player = Game.GetLocalPlayer()
	
	GiveTokenToLocalPlayer("EG_SHARD60")
	
	if (player:HasToken("EG_SHARD50")) then
		player:RemoveToken("EG_SHARD50")
		
	end
	
	if (player:HasToken("EG_SHARD55")) then
		player:RemoveToken("EG_SHARD55")
		
	end
	
	-- grant tokens for waystone03
	waystoneTokenShard45()
	
end

local function waystoneTokenShard65()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD70") == false && player:HasToken("EG_SHARD75") == false) then
		GiveTokenToLocalPlayer("EG_SHARD65")
		
	end
	
	-- grant tokens for waystone04
	waystoneTokenShard60()
	
end

local function waystoneTokenShard70()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD75") == false) then
		GiveTokenToLocalPlayer("EG_SHARD70")
		
		if (player:HasToken("EG_SHARD65")) then
			player:RemoveToken("EG_SHARD65")
			
		end
		
	end
	
	-- grant tokens for waystone04
	waystoneTokenShard60()
	
end

local function waystoneTokenShard75()
	local player = Game.GetLocalPlayer()
	
	GiveTokenToLocalPlayer("EG_SHARD75")
	
	if (player:HasToken("EG_SHARD65")) then
		player:RemoveToken("EG_SHARD65")
		
	end
	
	if (player:HasToken("EG_SHARD70")) then
		player:RemoveToken("EG_SHARD70")
		
	end
	
	-- grant tokens for waystone04
	waystoneTokenShard60()
	
end

local function waystoneTokenShard80()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD85") == false && player:HasToken("EG_SHARD90") == false) then
		GiveTokenToLocalPlayer("EG_SHARD80")
		
	end
	
	-- grant tokens for waystone05
	waystoneTokenShard75()
	
end

local function waystoneTokenShard85()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD90") == false) then
		GiveTokenToLocalPlayer("EG_SHARD85")
		
		if (player:HasToken("EG_SHARD80")) then
			player:RemoveToken("EG_SHARD80")
			
		end
		
	end
	
	-- grant tokens for waystone05
	waystoneTokenShard75()
	
end

local function waystoneTokenShard90()
	local player = Game.GetLocalPlayer()
	
	GiveTokenToLocalPlayer("EG_SHARD90")
	
	if (player:HasToken("EG_SHARD80")) then
		player:RemoveToken("EG_SHARD80")
		
	end
	
	if (player:HasToken("EG_SHARD85")) then
		player:RemoveToken("EG_SHARD85")
		
	end
	
	-- grant tokens for waystone05
	waystoneTokenShard75()
	
end

local function waystoneTokenShard95()
	local player = Game.GetLocalPlayer()
	
	if (player:HasToken("EG_SHARD100") == false) then
		GiveTokenToLocalPlayer("EG_SHARD95")
		
	end
	
	-- grant tokens for waystone06
	waystoneTokenShard90()
	
end

local function waystoneTokenShard100()
	local player = Game.GetLocalPlayer()
	
	GiveTokenToLocalPlayer("EG_SHARD100")
	
	if (player:HasToken("EG_SHARD95")) then
		player:RemoveToken("EG_SHARD95")
		
	end
	
	-- grant tokens for waystone06
	waystoneTokenShard90()
	
end

local function waystoneTokenShard105NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD105NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard110NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD110NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard115NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD115NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard120NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD120NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard125NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD125NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard130NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD130NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard135NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD135NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard140NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD140NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard145NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD145NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard150NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD150NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard155NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD155NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard160NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD160NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard165NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD165NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard170NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD170NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard175NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD175NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard180NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD180NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard185NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD185NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard190NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD190NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard195NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD195NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard200NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD200NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard205NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD205NOLOOT")
	waystoneTokenShard100()
	
end

local function waystoneTokenShard210NoLoot()
	
	GiveTokenToLocalPlayer("EG_SHARD210NOLOOT")
	waystoneTokenShard100()
	
end


-- Grant Xp to each player at the END of the dungeon
function gd.endlessDungeon.rewards.playerFinishExperienceGlobalMP()

	local player = Game.GetLocalPlayer()
	
	if player:InEndlessDungeon() then
		local playerLevel = Game.GetAveragePlayerLevel()
		
		local rewardTier = Game.GetEndlessDungeonsGenerated()
		local difficultyModifier = 0
		
		if (Game.GetGameDifficulty() == Game.Difficulty.Normal) then
			difficultyModifier = 1
		elseif (Game.GetGameDifficulty() == Game.Difficulty.Epic) then
			difficultyModifier = 1.3
		else
			difficultyModifier = 2.2
		end
		
		-- Experience gained based on shard reached.
		local xp = 0
		
		xp = difficultyModifier * ((rewardTier * 12812) ^ 1.1)
		
		
		if checkpointUsed then
			-- if checkpoint is equal to current shard, give default xp
			if checkPointTier == rewardTier then
				xp = difficultyModifier * (12812 ^ 1.1)
			else
				-- otherwise subtract xp from shards prior to checkpoint
				local penalty = difficultyModifier * ((checkPointTier * 12812) ^ 1.1)
				xp = xp - penalty
				
			end
		
		end
		
		if playerLevel < 10 then
			xp = xp / 4
		elseif playerLevel < 18 then
			xp = xp / 3
		elseif playerLevel < 25 then
			xp = xp / 2
		elseif playerLevel < 35 then
			xp = xp / 1.5
		elseif playerLevel < 45 then
			xp = xp / 1.25
		end
		
		player:GiveExperience(xp)
	
	end

end


-- Grant Xp to each player after each dungeon section
function gd.endlessDungeon.rewards.playerProgressExperienceGlobalMP()

	local player = Game.GetLocalPlayer()
	
	if player:InEndlessDungeon() then
		local playerLevel = Game.GetAveragePlayerLevel()
		
		local rewardTier = Game.GetEndlessDungeonsGenerated()
		local difficultyModifier = 0
		
		if (Game.GetGameDifficulty() == Game.Difficulty.Normal) then
			difficultyModifier = 1
		elseif (Game.GetGameDifficulty() == Game.Difficulty.Epic) then
			difficultyModifier = 1.3
		else
			difficultyModifier = 2.2
		end
		
		-- Experience gained based on shard reached.
		local xp = difficultyModifier * ((rewardTier * 700) ^ 1.1 + 16152)
		
		if playerLevel < 10 then
			xp = xp / 4
		elseif playerLevel < 18 then
			xp = xp / 3
		elseif playerLevel < 25 then
			xp = xp / 2
		elseif playerLevel < 35 then
			xp = xp / 1.5
		elseif playerLevel < 45 then
			xp = xp / 1.25
		end
		
		player:GiveExperience(xp)
	
		-- play screen glow for clearing boss floor
		screenGlow()
		
		-- give out tokens based on Tier Reached
		if rewardTier == 5 then
			waystoneTokenShard05()
		elseif rewardTier == 10 then
			waystoneTokenShard10()
		elseif rewardTier == 15 then
			waystoneTokenShard15()
		elseif rewardTier == 20 then
			waystoneTokenShard20()
		elseif rewardTier == 25 then
			waystoneTokenShard25()
		elseif rewardTier == 30 then
			waystoneTokenShard30()
		elseif rewardTier == 35 then
			waystoneTokenShard35()
		elseif rewardTier == 40 then
			waystoneTokenShard40()
		elseif rewardTier == 45 then
			waystoneTokenShard45()
		elseif rewardTier == 50 then
			waystoneTokenShard50()
		elseif rewardTier == 55 then
			waystoneTokenShard55()
		elseif rewardTier == 60 then
			waystoneTokenShard60()
		elseif rewardTier == 65 then
			waystoneTokenShard65()
		elseif rewardTier == 70 then
			waystoneTokenShard70()
		elseif rewardTier == 75 then
			waystoneTokenShard75()
		elseif rewardTier == 80 then
			waystoneTokenShard80()
		elseif rewardTier == 85 then
			waystoneTokenShard85()
		elseif rewardTier == 90 then
			waystoneTokenShard90()
		elseif rewardTier == 95 then
			waystoneTokenShard95()
		elseif rewardTier == 100 then
			waystoneTokenShard100()
		elseif rewardTier == 105 then
			waystoneTokenShard105NoLoot()
		elseif rewardTier == 110 then
			waystoneTokenShard110NoLoot()
		elseif rewardTier == 115 then
			waystoneTokenShard115NoLoot()
		elseif rewardTier == 120 then
			waystoneTokenShard120NoLoot()
		elseif rewardTier == 125 then
			waystoneTokenShard125NoLoot()
		elseif rewardTier == 130 then
			waystoneTokenShard130NoLoot()
		elseif rewardTier == 135 then
			waystoneTokenShard135NoLoot()
		elseif rewardTier == 140 then
			waystoneTokenShard140NoLoot()
		elseif rewardTier == 145 then
			waystoneTokenShard145NoLoot()
		elseif rewardTier == 150 then
			waystoneTokenShard150NoLoot()
		elseif rewardTier == 155 then
			waystoneTokenShard155NoLoot()
		elseif rewardTier == 160 then
			waystoneTokenShard160NoLoot()
		elseif rewardTier == 165 then
			waystoneTokenShard165NoLoot()
		elseif rewardTier == 170 then
			waystoneTokenShard170NoLoot()
		elseif rewardTier == 175 then
			waystoneTokenShard175NoLoot()
		elseif rewardTier == 180 then
			waystoneTokenShard180NoLoot()
		elseif rewardTier == 185 then
			waystoneTokenShard185NoLoot()
		elseif rewardTier == 190 then
			waystoneTokenShard190NoLoot()
		elseif rewardTier == 195 then
			waystoneTokenShard195NoLoot()
		elseif rewardTier == 200 then
			waystoneTokenShard200NoLoot()
		elseif rewardTier == 205 then
			waystoneTokenShard205NoLoot()
		elseif rewardTier >= 210 then
			waystoneTokenShard210NoLoot()
		end
		
		-- quest/achievement progress tokens
		if rewardTier >= 5 then
			shardProgressToken01()
		end
		
		if rewardTier >= 15 then
			shardProgressToken02()		
		end
		
		if rewardTier >= 25 then
			shardProgressToken03()
		end
		
		if rewardTier >= 50 then
			shardProgressToken04()
		end
	
	end

end


-- npc merchant in reward room to sell stuff, buy potions, buy shattered realm set
local function spawnVendor()
	if Server && vendorScriptId != 0 && not rewardDisabled then
		local rewardTier = Game.GetEndlessDungeonsGenerated()
		
		-- clean up existing vendor, if applicable
		local entity = Entity.Get(vendorId)
		
		if entity != nil then
			entity:Destroy()
			
		end
		
		local dbr = "records/endlessdungeon/creatures/npcs/merchant_reward_01.dbr"
		
		if (Game.GetGameDifficulty() == Game.Difficulty.Legendary) && ((checkpointUsed && rewardTier != checkPointTier) || not checkpointUsed) then
			if rewardTier >= 60 then
				dbr = "records/endlessdungeon/creatures/npcs/merchant_reward_05.dbr"
			elseif rewardTier >= 45 then
				dbr = "records/endlessdungeon/creatures/npcs/merchant_reward_04.dbr"
			elseif rewardTier >= 30 then
				dbr = "records/endlessdungeon/creatures/npcs/merchant_reward_03.dbr"
			elseif rewardTier >= 20 then
				dbr = "records/endlessdungeon/creatures/npcs/merchant_reward_02.dbr"
			end
			
		end
		
		if dbr != nil then
			local coords = Entity.Get(vendorScriptId):GetCoords()
			local spawn = Entity.Create(dbr)
			spawn:SetCoords(coords)
		
		end
	
	end

end

function gd.endlessDungeon.rewards.vendorAvatarOnAddToWorld(objectId)

	if Server then
		vendorId = objectId
	
	end
	
end

function gd.endlessDungeon.rewards.vendorOnAddToWorld(objectId)

	if Server then
		vendorScriptId = objectId
		
		spawnVendor()
	
	end
	
end


-- End of Event Function. Dispenses Reward
function gd.endlessDungeon.rewards.dispenseReward()

	if Server then
		-- clean up old chests
		for id = 1, maxChests do
			if destroyChestEntities[id] != nil then
				destroyChestEntities[id]:Destroy()
				destroyChestEntities[id] = nil
			
			end
		
		end
		
		-- dispense new chests
		if not rewardDispensed then
			rewardDispensed = true

			local rewardTier = Game.GetEndlessDungeonsGenerated()
			local rewardTableSize = table.getn(rewardTable)
			local bonusEarned = Game.IsEndlessDungeonBonusComplete()
			
			if rewardTier > rewardTableSize then
				rewardTier = rewardTableSize
			
			end

			-- store existing chest entities into delete table for cleanup
			for id = 1, maxChests do
				destroyChestEntities[id] = rewardChestEntities[id]
			
			end
			
			if not rewardDisabled then
			
				-- create chests
				local totalChests = table.getn(rewardChestIds)
				
				for id = 1, totalChests do
					local chest = Entity.Get(rewardChestIds[id])
					
					if chest != nil then
						local coords = chest:GetCoords()

						-- if the player used a checkpoint, then they are given the checkpoint loot on the same Tier as they started if they "cash out".
						if checkpointUsed && rewardTier == checkPointTier then
							if checkpointTable[rewardTier][id] != nil then
								local fx = Entity.Create("records/fx/ui/riftgateendlessopen_fxpak.dbr")
						
								if (fx != nil) then
									fx:NetworkEnable()
									fx:SetCoords(coords)
								end
								
								rewardChestEntities[id] = Entity.Create(checkpointTable[rewardTier][id])
								if rewardChestEntities[id] != nil then
									rewardChestEntities[id]:SetCoords(coords)
								end
							
							end
						-- if the player reached the next treasure tier and opted to "cash out", they receive the earned rewards.
						else
							if rewardTable[rewardTier][id] != nil then
								local fx = Entity.Create("records/fx/ui/riftgateendlessopen_fxpak.dbr")
						
								if (fx != nil) then
									fx:NetworkEnable()
									fx:SetCoords(coords)
								end
								
								rewardChestEntities[id] = Entity.Create(rewardTable[rewardTier][id])
								if rewardChestEntities[id] != nil then
									rewardChestEntities[id]:SetCoords(coords)
								end

							end

						end
					
					end
				
				end
				
				-- Dispense 8th/9th bonus chests, if player beat the clock
				local totalBonusChests = table.getn(bonusChestIds)
				
				if bonusEarned then
					for id = 1, totalBonusChests do
						local chest = Entity.Get(bonusChestIds[id])
						local coords = chest:GetCoords()
						local fx = Entity.Create("records/fx/ui/riftgateendlessopen_fxpak.dbr")
					
						if (fx != nil) then
							fx:NetworkEnable()
							fx:SetCoords(coords)
						end
						
						-- add bonus chests to chest entity array, after the base chests
						local chestEntityId = id + totalChests
						
						if checkpointUsed && rewardTier == checkPointTier then
							if checkpointBonusTable[rewardTier][id] != nil then
								rewardChestEntities[chestEntityId] = Entity.Create(checkpointBonusTable[rewardTier][id])
								if rewardChestEntities[chestEntityId] != nil then
									rewardChestEntities[chestEntityId]:SetCoords(coords)
								end
								
							end
							
						else
							if bonusTable[rewardTier][id] != nil then
								rewardChestEntities[chestEntityId] = Entity.Create(bonusTable[rewardTier][id])
								if rewardChestEntities[chestEntityId] != nil then
									rewardChestEntities[chestEntityId]:SetCoords(coords)
								end
							
							end
							
						end
					
					end
				
				end
				
				-- Dispense Special Chest, only applies to specific dungeon tiers. Contain checkpoint rewards. Not dispensed if checkpoint is used and reward claimed at the same tier.
				local specialTier = 0
				
				if rewardTier >= 80 then
					specialTier = 7
				elseif rewardTier >= 65 then
					specialTier = 6
				elseif rewardTier >= 50 then
					specialTier = 5
				elseif rewardTier >= 35 then
					specialTier = 4
				elseif rewardTier >= 20 then
					specialTier = 3
				elseif rewardTier >= 5 then
					specialTier = 2
				else
					specialTier = 1
				end
				
				if (checkpointUsed && rewardTier != checkPointTier) || not checkpointUsed then
					if specialTable[specialTier] != nil then
						local chest = Entity.Get(specialChestId)
						local coords = chest:GetCoords()
						local fx = Entity.Create("records/fx/ui/riftgateendlessopen_fxpak.dbr")
					
						if (fx != nil) then
							fx:NetworkEnable()
							fx:SetCoords(coords)
						end
						
						-- add special chest to chest entity array, after the base and bonus chests
						local chestEntityId = totalChests + totalBonusChests + 1

						rewardChestEntities[chestEntityId] = Entity.Create(specialTable[specialTier])
						if rewardChestEntities[chestEntityId] != nil then
							rewardChestEntities[chestEntityId]:SetCoords(coords)
						end
					
					end
				
				end
				
				-- Dispense second Special Chest, only applies to specific dungeon tiers. Contain unique rewards. Not dispensed if checkpoint is used and reward claimed at the same tier.
				local special02Tier = 0
				
				if rewardTier >= 60 then
					special02Tier = 6
				elseif rewardTier >= 45 then
					special02Tier = 5
				elseif rewardTier >= 30 then
					special02Tier = 4
				elseif rewardTier >= 20 then
					special02Tier = 3
				elseif rewardTier >= 10 then
					special02Tier = 2
				else
					special02Tier = 1
				end
				
				if (checkpointUsed && rewardTier != checkPointTier) || not checkpointUsed then
					if special02Table[special02Tier] != nil then
						local chest = Entity.Get(specialChest02Id)
						local coords = chest:GetCoords()
						local fx = Entity.Create("records/fx/ui/riftgateendlessopen_fxpak.dbr")
					
						if (fx != nil) then
							fx:NetworkEnable()
							fx:SetCoords(coords)
						end
						
						-- add special chest to chest entity array, after the base and bonus chests
						local chestEntityId = totalChests + totalBonusChests + 1

						rewardChestEntities[chestEntityId] = Entity.Create(special02Table[special02Tier])
						if rewardChestEntities[chestEntityId] != nil then
							rewardChestEntities[chestEntityId]:SetCoords(coords)
						end
					
					end
				
				end
				
				-- Respawn Vendor
				spawnVendor()
			
			end

		end
	
	end

end

-- Reset Server Variables and destroy chests
function gd.endlessDungeon.rewards.resetVariablesGlobalMP()

	checkpointUsed = false

end

function gd.endlessDungeon.rewards.resetVariables()
	
	if Server then
		rewardDispensed = false
		rewardDisabled = false
		checkpointUsed = false
		
		LuaGlobalEvent("resetRewardVariablesGlobalMP")
		
		for id = 1, maxChests do
			if destroyChestEntities[id] != nil then
				destroyChestEntities[id]:Destroy()
				destroyChestEntities[id] = nil
			
			end
		
		end
	
	end

end


function gd.endlessDungeon.rewards.disableRewards()

	if Server then
		rewardDisabled = true
	
	end
	
end


local function checkpointUsedTierCheck(tierNumber)

	if Server then
		local test = tierNumber
		if test == 5 then
			LuaGlobalEvent("checkpointUsedShard5GlobalMP")
		elseif test == 10 then
			LuaGlobalEvent("checkpointUsedShard10GlobalMP")
		elseif test == 15 then
			LuaGlobalEvent("checkpointUsedShard15GlobalMP")
		elseif test == 20 then
			LuaGlobalEvent("checkpointUsedShard20GlobalMP")
		elseif test == 25 then
			LuaGlobalEvent("checkpointUsedShard25GlobalMP")
		elseif test == 30 then
			LuaGlobalEvent("checkpointUsedShard30GlobalMP")
		elseif test == 35 then
			LuaGlobalEvent("checkpointUsedShard35GlobalMP")
		elseif test == 40 then
			LuaGlobalEvent("checkpointUsedShard40GlobalMP")
		elseif test == 45 then
			LuaGlobalEvent("checkpointUsedShard45GlobalMP")
		elseif test == 50 then
			LuaGlobalEvent("checkpointUsedShard50GlobalMP")
		elseif test == 55 then
			LuaGlobalEvent("checkpointUsedShard55GlobalMP")
		elseif test == 60 then
			LuaGlobalEvent("checkpointUsedShard60GlobalMP")
		elseif test == 65 then
			LuaGlobalEvent("checkpointUsedShard65GlobalMP")
		elseif test == 70 then
			LuaGlobalEvent("checkpointUsedShard70GlobalMP")
		elseif test == 75 then
			LuaGlobalEvent("checkpointUsedShard75GlobalMP")
		elseif test == 80 then
			LuaGlobalEvent("checkpointUsedShard80GlobalMP")
		elseif test == 85 then
			LuaGlobalEvent("checkpointUsedShard85GlobalMP")
		elseif test == 90 then
			LuaGlobalEvent("checkpointUsedShard90GlobalMP")
		elseif test == 95 then
			LuaGlobalEvent("checkpointUsedShard95GlobalMP")
		elseif test == 100 then
			LuaGlobalEvent("checkpointUsedShard100GlobalMP")
		end
	
	end
	
end

function gd.endlessDungeon.rewards.checkpointRewardCheck()

	if Server then
		if checkpointUsed then
			LuaGlobalEvent("checkpointUsedGlobalMP")
			
			checkpointUsedTierCheck(checkPointTier)
		
		end
		
		-- Grant player exp based on tier reached
		LuaGlobalEvent("playerFinishExperience")
	
	end

end

function gd.endlessDungeon.rewards.checkpointUsedGlobalMP()

	checkpointUsed = true
	
end

function gd.endlessDungeon.rewards.checkpointUsed(tierNumber)

	if Server then
		checkpointUsed = true
		LuaGlobalEvent("checkpointUsedGlobalMP")
		checkPointTier = tierNumber
		
		checkpointUsedTierCheck(checkPointTier)
	
	end
	
end


-- Start the Dungeon at Shard 5 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard5GlobalMP()
	checkPointTier = 5
end

-- Start the Dungeon at Shard 10 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard10GlobalMP()
	checkPointTier = 10
end

-- Start the Dungeon at Shard 15 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard15GlobalMP()
	checkPointTier = 15
end

-- Start the Dungeon at Shard 20 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard20GlobalMP()
	checkPointTier = 20
end

-- Start the Dungeon at Shard 25 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard25GlobalMP()
	checkPointTier = 25
end

-- Start the Dungeon at Shard 30 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard30GlobalMP()
	checkPointTier = 30
end

-- Start the Dungeon at Shard 35 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard35GlobalMP()
	checkPointTier = 35
end

-- Start the Dungeon at Shard 40 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard40GlobalMP()
	checkPointTier = 40
end

-- Start the Dungeon at Shard 45 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard45GlobalMP()
	checkPointTier = 45
end

-- Start the Dungeon at Shard 50 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard50GlobalMP()
	checkPointTier = 50
end

-- Start the Dungeon at Shard 55 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard55GlobalMP()
	checkPointTier = 55
end

-- Start the Dungeon at Shard 60 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard60GlobalMP()
	checkPointTier = 60
end

-- Start the Dungeon at Shard 65 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard65GlobalMP()
	checkPointTier = 65
end

-- Start the Dungeon at Shard 70 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard70GlobalMP()
	checkPointTier = 70
end

-- Start the Dungeon at Shard 75 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard75GlobalMP()
	checkPointTier = 75
end

-- Start the Dungeon at Shard 80 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard80GlobalMP()
	checkPointTier = 80
end

-- Start the Dungeon at Shard 85 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard85GlobalMP()
	checkPointTier = 85
end

-- Start the Dungeon at Shard 90 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard90GlobalMP()
	checkPointTier = 90
end

-- Start the Dungeon at Shard 95 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard95GlobalMP()
	checkPointTier = 95
end

-- Start the Dungeon at Shard 100 for Clients
function gd.endlessDungeon.rewards.checkpointUsedShard100GlobalMP()
	checkPointTier = 100
end




