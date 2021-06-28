att.PrintName = "SmartLink (2x)"
att.Icon = Material("entities/acwatt_optic_acog.png")
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

att.Model = "models/weapons/arccw/atts/laser_anpeq.mdl"
att.ModelOffset = Vector(0, 0, 0.2)
att.OffsetAng = Angle(0, 0, 180)

att.AdditionalSights = {
    {
        Pos = Vector(0, 0, 0),
        Ang = Angle(-180, 0, 0),
        Magnification = 2,
        IgnoreExtra = false,
        CrosshairInSights = true,
    }
}

att.Mult_SightTime = 1
att.Mult_SightedSpeedMult = 1

local ScopeTexture = Material("hud/2dscope_blank.png", "mips smooth")

att.Hook_DrawHUD = function(wep)

    -- Don't draw if we aren't in sights
    if wep:GetState() != ArcCW.STATE_SIGHTS then return end

    -- Cool
    local scopesize = ScreenScale((128+64))

    -- Draw textured 2D scope
    local sightcolor = {
        r = GetConVar("arccw_scope_r"):GetInt(),
        g = GetConVar("arccw_scope_g"):GetInt(),
        b = GetConVar("arccw_scope_b"):GetInt(),
    }
    surface.SetDrawColor(sightcolor.r, sightcolor.g, sightcolor.b, 255)
    surface.SetMaterial(ScopeTexture)
    surface.DrawTexturedRect((ScrW()/2)-(scopesize/2), (ScrH()/2)-(scopesize/2), scopesize, scopesize)

    -- Draw surrounding
    surface.SetDrawColor(0, 0, 0, 127)
    // Left
    surface.DrawRect(0, 0, (ScrW()/2)-(scopesize/2), ScrH())
    // Right
    surface.DrawRect((ScrW()/2)+(scopesize/2), 0, ScrW(), ScrH())
    
    // Top
    surface.DrawRect((ScrW()/2)-(scopesize/2), 0, scopesize, (ScrH()/2)-(scopesize/2))
    // Bottom
    surface.DrawRect((ScrW()/2)-(scopesize/2), (ScrH()/2)+(scopesize/2), scopesize, ScrH())
end