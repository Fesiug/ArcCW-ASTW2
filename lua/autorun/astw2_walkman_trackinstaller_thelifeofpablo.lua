
ASTW2_Walkman_Tracks = ASTW2_Walkman_Tracks or {}

// ( "song name", "artist", "path", "album", "duration (sec)" )

local function ASTW2_WM_InstallTrack( name, artist, path, album, timeoverride )

    local time = SoundDuration( path )

    if timeoverride then
        time = timeoverride
    end

    local album_found = 0

    for i, k in pairs( ASTW2_Walkman_Tracks ) do
        if k[2] == album then
            album_found = i
            break
        end
    end

    if album_found == 0 then
        album_found = #ASTW2_Walkman_Tracks + 1
        ASTW2_Walkman_Tracks[ album_found ] = { {}, album }
    end

    ASTW2_Walkman_Tracks[album_found][1][ #ASTW2_Walkman_Tracks[album_found][1] + 1 ] = { name, artist, path, time }
end

local prefix = "music/walkman/thelifeofpablo/"

ASTW2_WM_InstallTrack( "Ultralight Beam",						"Kanye West",		prefix.."Ultralight Beam.mp3",						"The Life Of Pablo",	(5*60)+20 )
ASTW2_WM_InstallTrack( "Father Stretch My Hands Pt. 1",			"Kanye West",		prefix.."Father Stretch My Hands Pt 1.mp3",			"The Life Of Pablo",	(2*60)+15 )
ASTW2_WM_InstallTrack( "Pt. 2",									"Kanye West",		prefix.."Pt 2.mp3",									"The Life Of Pablo",	(2*60)+10 )
ASTW2_WM_InstallTrack( "Famous",								"Kanye West",		prefix.."Famous.mp3",								"The Life Of Pablo",	(3*60)+16 )
ASTW2_WM_InstallTrack( "Feedback",								"Kanye West",		prefix.."Feedback.mp3",								"The Life Of Pablo",	(2*60)+27 )
ASTW2_WM_InstallTrack( "Low Lights",							"Kanye West",		prefix.."Low Lights.mp3",							"The Life Of Pablo",	(2*60)+11 )
ASTW2_WM_InstallTrack( "Highlights",							"Kanye West",		prefix.."Highlights.mp3",							"The Life Of Pablo",	(3*60)+19 )
ASTW2_WM_InstallTrack( "Freestyle 4",							"Kanye West",		prefix.."Freestyle 4.mp3",							"The Life Of Pablo",	(2*60)+03 )
ASTW2_WM_InstallTrack( "I Love Kanye",							"Kanye West",		prefix.."I Love Kanye.mp3",							"The Life Of Pablo",	(0*60)+44 )

ASTW2_WM_InstallTrack( "FML",									"Kanye West",		prefix.."FML.mp3",									"The Life Of Pablo",	(3*60)+56 )
ASTW2_WM_InstallTrack( "Real Friends",							"Kanye West",		prefix.."Real Friends.mp3",							"The Life Of Pablo",	(4*60)+11 )
ASTW2_WM_InstallTrack( "Wolves",								"Kanye West",		prefix.."Wolves.mp3",								"The Life Of Pablo",	(5*60)+01 )
ASTW2_WM_InstallTrack( "Frank's Track",							"Kanye West",		prefix.."Frank's Track.mp3",						"The Life Of Pablo",	(0*60)+38 )
ASTW2_WM_InstallTrack( "Siiiiiiiiilver Surffffeeeeer Intermissi",	"Kanye West",	prefix.."Siiiiiiiiilver Surffffeeeeer Intermissi.mp3",	"The Life Of Pablo",	(0*60)+56 )
ASTW2_WM_InstallTrack( "30 Hours",								"Kanye West",		prefix.."30 Hours.mp3",								"The Life Of Pablo",	(5*60)+23 )
ASTW2_WM_InstallTrack( "No More Parties In LA",					"Kanye West",		prefix.."No More Parties In LA.mp3",				"The Life Of Pablo",	(6*60)+14 )
ASTW2_WM_InstallTrack( "Facts (Charlie Heat Version)",			"Kanye West",		prefix.."Facts (Charlie Heat Version).mp3",			"The Life Of Pablo",	(3*60)+20 )
ASTW2_WM_InstallTrack( "Fade",									"Kanye West",		prefix.."Fade.mp3",									"The Life Of Pablo",	(3*60)+13 )
ASTW2_WM_InstallTrack( "Saint Pablo",							"Kanye West",		prefix.."Saint Pablo.mp3",							"The Life Of Pablo",	(6*60)+12 )
