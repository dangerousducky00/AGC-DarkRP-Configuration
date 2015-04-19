--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]

TEAM_THIEF = DarkRP.createJob("Thief", {
    color = Color(123, 224, 237, 255),
    model = {"models/player/arctic.mdl"},
    description = [[The Thief breaks into houses and bases as a form of income.]],
    weapons = {"lockpick", "keypad_cracker"},
    command = "thief",
    max = 4,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
     
    -- Insert customCheck here if you have one and want one.
})

TEAM_BANKOWNER = DarkRP.createJob("Bank Owner", {
    color = Color(237, 234, 24, 255),
    model = {"models/humans/suits_06.mdl"},
    description = [[The Bank Owner is able to take peoples printers and hold them in storage in exchange for them being legal.]],
    weapons = {},
    command = "bankowner",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
     
    -- Insert customCheck here if you have one and want one.
})

TEAM_HOBOKING = DarkRP.createJob("Hobo King", {
    color = Color(80, 45, 0, 255),
    model = {"models/player/charple.mdl"},
    description = [[The lowest member of society, only the leader.]],
    weapons = {"weapon_bugbait", "lockpick"},
    command = "hoboking",
    max = 1,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    hobo = true,
     
    -- Insert customCheck here if you have one and want one.
})

TEAM_HITMAN = DarkRP.createJob("Hitman", {
    color = Color(224, 224, 224, 255),
    model = {"models/player/leet.mdl"},
    description = [[The Hitman is hired to kill people for money.]],
    weapons = {"m9k_colt1911"},
    command = "hitman",
    max = 2,
    salary = 55,
    admin = 0,
    vote = true,
    hasLicense = false,
     
    -- Insert customCheck here if you have one and want one.
})

TEAM_MOD = DarkRP.createJob("Moderator on Duty", {
    color = Color(0, 250, 255, 255),
    model = {"models/player/combine_super_soldier.mdl"},
    description = [[The Moderator on Duty is a staff member that patrols the streets looking to solve problems.]],
    weapons = {},
    command = "mod",
    max = 0,
    salary = 85,
    admin = 0,
    vote = false,
    hasLicense = false,
    customCheck = function(ply) return ply:CheckGroup("moderator") end -- The extra check function. Enter nil or nothing to not have an extra check
})

TEAM_ADMIN = DarkRP.createJob("Admin on Duty", {
    color = Color(0, 250, 255, 255),
    model = {"models/player/combine_super_soldier.mdl"},
    description = [[The Admin on Duty is a higher ranking staff member with the same duties as the Moderator on Duty.]],
    weapons = {},
    command = "admin",
    max = 0,
    salary = 105,
    admin = 0,
    vote = false,
    hasLicense = false,
    customCheck = function(ply) return ply:CheckGroup("admin") end -- The extra check function. Enter nil or nothing to not have an extra check
})

TEAM_MECHANIC = DarkRP.createJob("Mechanic", {
    color = Color(71, 38, 15, 255),
    model = {"models/player/eli.mdl"},
    description = [[The mechanic repairs cars as a job, you should tip him!]],
    weapons = {"vc_repair"},
    command = "mechanic",
    max = 4,
    salary = 35,
    admin = 0,
    vote = false,
    hasLicense = false,
     
    -- Insert customCheck here if you have one and want one.
})

TEAM_THIEF = DarkRP.createJob("whaler", {
    color = Color(139, 0, 0),
    model = "models/player/robber.mdl",
    description = [[You are a thief, rob people, break into their house and steal legal printers and more.]],
    weapons = {"lockpick"}, 
    command = "thief",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false

})

 TEAM_SWATM = DarkRP.createJob("S.W.A.T Medic", {
	color = Color(80, 45, 0, 255),
	model = "models/player/swat.mdl",
	description = [[Your job is to treat your fellow Swat member if they are hurt
	you can also raid with the other swat members.]],
	weapons = {"arrest_stick", "unarrest_stick", "stunstick", "door_ram", "weaponchecker", "med_kit" "m9k_m92beretta", "m9k_mp7"},
	command = "swatm",
	max = 3,
	salary = 300,
	admin = 0,
	vote = true,
	hasLicense = true,
 
     })






--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_CHIEF] = true,
	[TEAM_MAYOR] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_HITMAN)
