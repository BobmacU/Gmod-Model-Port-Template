-- Lua for PM & NPCs.

player_manager.AddValidModel( "Name", "My model/Name/modelname.mdl" )                -- Defines the path to .mdl, Change the path to your model mdl
player_manager.AddValidHands( "Name", "My model/Name/arm.mdl", 0, "00000000" )       -- Defines the path to custom arms. Change the path to your c-arm mdl

local Category = "Category"                          -- Defines NPC 'category' name, Change 'Category' to any name you want to appear as in NPC section


local NPC =
{
	Name = "Name Friendly",                          -- Defines NPC name, Change "Name" to any name you want
	Class = "npc_citizen",                           -- Defines class, "Citizen" for friendly
	Health = "100",                                  -- Defines health, Can be "Overwrited"
	KeyValues = { citizentype = 4 },                 -- Defines type of citizen 
	Model = "My model/Name/modelname.mdl",           -- Defines the path to mdl, friendly
	Weapons = { "weapon_ar2","weapon_smg1"},         -- Defines weapons
	Category = Category
}

list.Set( "NPC", "Name", NPC )                       -- Sets a specific position in the named list to a value, Change 'Name' to any name you want



local NPC =
{
	Name = "Name Hostile",                           -- Defines NPC name, Change "Name" to any name you want
	Class = "npc_combine_s",                         -- Defines class, "Combine" for hostile
	Numgrenades = "4",                               -- Defines the amount of "Grenades" that Hostile Npc can carry
	Health = "100",                                  -- Defines health, Can be "Overwrited"
	Model = "My model/Name/modelname.mdl",           -- Defines the path to mdl, hostile
	Weapons = { "weapon_ar2","weapon_smg1"},         -- Defines weapons
	Category = Category
}

list.Set( "NPC", "Name (Enemy)", NPC )               -- Sets a specific position in the named list to a value, Change 'Name' to any name you want.