return {

    black               = 0xff171616,
    white               = 0xffcecece,
    foreground          = 0xffeaddd4,
    foreground_hover    = 0xffdcdedf,
    foreground_light    = 0xffa0a0a0,
    foreground_dark     = 0xff1c1c1c,
    inactive_foreground = 0xff5c5c5c,
    icon_active         = 0xff939393,

    red_light           = 0xffa9645d,
    red                 = 0xff6b2f2c,
    red_dark            = 0xff573738,
    green               = 0xff6b7c6b,
    yellow              = 0xffc9b188,
    orange              = 0xffa55a2e,
    blue                = 0xff4a5b6b,
    grey_blue           = 0xff6f797c,
    light_blue          = 0xff657378,
    darkblue            = 0xff212c35,
    pink                = 0xff725955,
    magenta             = 0xff595066,
    magenta_dark        = 0xff3a3949,
    magenta_darker      = 0xff25232f,
    nickel              = 0xff6b7c6b,
    nickelblu           = 0xff657378,
    auro                = 0xff6f797c,
    deep                = 0xff4a5b6b,
    puce                = 0xffa9645d,
    pastel              = 0xffcfcdca,
    olive               = 0xff3a3a3a,
    olive_light         = 0xff9d9d9d,
    rocket              = 0xff928980,
    gunmetal            = 0xff2c303a,

    ash                 = 0xffb2b2b2,
    ash_dark            = 0xff595959,

    lightgrey           = 0xff3e3e3e,
    dolphin_grey        = 0xff7a8e82,

    desert_sand         = 0xffdfc9a7,
    cadet               = 0xff5c716c,
    quartz              = 0xff4c4a50,
    eggplant            = 0xff5b4550,
    deeptaupe           = 0xff806666,

    transparent         = 0x00000000,
    semi_transparent    = 0x40ffffff,
    border_transparent  = 0x33ffffff,

    hover               = 0xffffffff,
    grey2               = 0xff626262,
    grey3               = 0xff4e4e4e,
    grey4               = 0xff373737,
    grey5               = 0xff303030,


    stormcloud = {
        one = 0xff516169,
        two = 0xffadb9bf,
    },

    dimgray = {
        one = 0xffb5b5b5,
        two = 0xff6d6d6b,
    },

    slategray = {
        one = 0xffc5c5c5,
        two = 0xff434343,
        three = 0xff373737,
        four = 0xff1e1e1e,
    },

    granit = {
        one = 0xff64655e,
        two = 0xff4f514b,
        three = 0xff373935,
        four = 0xff272826,
    },

    seezalt = {
        spanishgrey = 0xff8f969e,
        light = 0xffacaeb1,
        dark = 0xff545454,
        platinum = 0xffe5e5e5,
    },
    bar = {
        bg = 0xfff6f6f6,
        sub = 0xff575c5f,
        active = 0xff9eaeb3,
        selected = 0xff593c3c,
        transparent = 0xccffffff,
        border = 0xffededed,
        secondary = 0xff61817f,
        white_transparent = 0x8faeaeae,
        inactive = 0xff727272,
        icons = 0xff61817f,
        foreground = 0xffb3b3b3,
        foreground_alt = 0xff434343,
        foreground_icon = 0xff486a68,
        foreground_dimmed = 0xff848484,
        foreground_alt_blue = 0xff486a68,
        foreground_alt_blue_dimmed = 0xdd486a68,
    },
    popup = {
        bg = 0x661e1e1e,
        border = 0x000000,
        buttons = 0xff959697,
        icons = 0xff486a68,


        bg1 = 0xff1c1c1c,
        bg2 = 0xff242424,
        with_alpha = function(color, alpha)
            if alpha > 1.0 or alpha < 0.0 then
                return color
            end
            return (color and 0x001e1e1e) or (math.floor(alpha * 255.0) < 24)
        end
    }
}
