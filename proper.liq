set("init.allow_root",true)

set("server.telnet", true)
set("server.telnet.port", 8585)
set("server.telnet.bind_addr", "0.0.0.0")

songs = playlist(
                id="songs", 
                mode="randomize", 
                reload=120, 
                reload_mode="watch", 
                "/proper-radio/songs-files")

final = pipe(process='/proper-radio/stereo_tool_cmd_64 - - -s /proper-radio/proper-stereo-tool-config.sts -q -k "YOUR_STEREO_TOOL_LICENSE"', songs)

output.icecast(
    id="output_320_normal", 
    %fdkaac(
        channels=2, 
        samplerate=44100, 
        bandwidth="auto", 
        bitrate=320, 
        afterburner=false, 
        aot="mpeg4_aac_lc", 
        transmux="adts", 
        sbr_mode=false), 
    genre = "Easy Listening", 
    name = "Proper", 
    description = "This radio station plays songs from various genres that you can listen to as a mood-booster in your daily activities.", 
    host = "YOUR_ICECAST_HOST", 
    port = YOUR_ICECAST_PORT, 
    password = "YOUR_ICECAST_MOUNT_PASSWORD", 
    mount = "YOUR_ICECAST_MOUNT_POINT", 
    fallible=true, 
    final)

