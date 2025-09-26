player_manager.AddValidModel( "Name", "My model/Name/modelname.mdl" )                
player_manager.AddValidHands( "Name", "My model/Name/arm.mdl", 0, "00000000" )       

local Category = "Category"        


local NPC =
{
	Name = "Name Friendly",                         
	Class = "npc_citizen",                           
	Health = "100",                                  
	KeyValues = { citizentype = 4 },                 
	Model = "My model/Name/modelname.mdl",  
	Weapons = { "weapon_ar2","weapon_smg1"},         
	Category = Category
}

list.Set( "NPC", "Name", NPC )                       



local NPC =
{
	Name = "Name Hostile",                          
	Class = "npc_combine_s",                         
	Health = "100",                                 
	Numgrenades = "4",                               
	Model = "My model/Name/modelname.mdl",   
	Weapons = { "weapon_ar2","weapon_smg1"},         
	Category = Category
}

list.Set( "NPC", "Name (Enemy)", NPC )               