att.PrintName = "American Pride"
att.Icon = Material("flags16/us.png", "mips smooth"
)

att.SortOrder = 0

att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Free = true
att.Slot = "integ"

att.LHIK = true

att.Model = "models/weapons/arccw/astw2/foregrip_boondoggle_12a.mdl"

att.ModelOffset = Vector(0, 0, 0)

local OSOK = math.random(0, 4)

if OSOK == 0 then
	att.Description = 
		[["Patriotism ruins history."
		— Goethe
	]]
elseif OSOK == 1 then
	att.Description = 
		[["It is lamentable, that to be a good patriot one must become the enemy of the rest of mankind."
        — Voltaire
	]]
elseif OSOK == 2 then
	att.Description = 
		[["Patriotism is an arbitrary veneration of real estate above principles."
		— George Jean Nathan
	]]
elseif OSOK == 3 then
	att.Description = 
		[["The nation is divided, half patriots and half traitors, and no man can tell which from which."
		— Mark Twain
	]]
elseif OSOK == 4 then
	att.Description = 
		[["Nationalism is an infantile disease. It is the measles of mankind."
		— Albert Einstein
	]]
else
	att.Description = "You shouldn't be here."
end