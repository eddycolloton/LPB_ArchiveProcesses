for /r %%A in ("*.mp4", "*.mxf") do (
	mediainfo --output=PBCore2 "%%A" > "%%~nxA.MediaInfo.xml"
	md5deep64 "%%A" > "%%~nxA.md5.txt")
