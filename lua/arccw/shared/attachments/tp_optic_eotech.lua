att.PrintName = "EOTech (HOLO)"
att.Icon = Material("entities/acwatt_optic_eotech.png")
att.Description = "Magnified medium-range optic. ACOG stands for 'Advanced Combat Optical Gunsight'."

att.SortOrder = 3

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "tp_optic"

att.Model = "models/weapons/arccw/atts/eotech.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 3, -1.403),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        IgnoreExtra = false,
        CrosshairInSights = true,
    }
}

att.Mult_SightTime = 1.1

local ScopeTexture = Material("hud/2dscope_holo.png", "mips smooth")

att.Hook_DrawHUD = function(wep)
    -- Don't draw if we aren't in sights
    --if wep:GetState() != ArcCW.STATE_SIGHTS then return end

    local pos = EyePos()
    local ang = EyeAngles() - wep:GetOurViewPunchAngles()

    cam.Start3D()
    local sp = (pos + (ang:Forward() * 3200)):ToScreen()
    cam.End3D()

    local ax, ay = (ScrW()/2)-sp.x, (ScrH()/2)-sp.y

    -- Cool
    local scopesize = math.ceil(ScreenScale((128) * (1-wep:GetSightDelta())))

    -- Draw textured 2D scope
    local sightcolor = {
        r = 255,--GetConVar("arccw_scope_r"):GetInt(),
        g = 255,--GetConVar("arccw_scope_g"):GetInt(),
        b = 255,--GetConVar("arccw_scope_b"):GetInt(),
    }
    surface.SetDrawColor(sightcolor.r, sightcolor.g, sightcolor.b, 255)
    surface.SetMaterial(ScopeTexture)
    surface.DrawTexturedRect((ScrW()/2)-(scopesize/2) - ax, (ScrH()/2)-(scopesize/2) - ay, scopesize - ax, scopesize - ay)
end