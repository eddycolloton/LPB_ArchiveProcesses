for %%F in ('%1') do (mkdir %%~nF
	md5deep64 %1 > %%~nF\%%~nF.md5.txt
	MediaInfo --output=PBCore2 %1 > %%~nF\%%~nF_MediaInfo.xml
	xcopy %%~nF_MediaInfo.xml \\vault\archive\MediaInfo_XML /V
	MediaConch  %1 -p C:\Users\ecolloton\Documents\LPB_AccessCopySD.xml -fh > %%~nF\%%~nF_MediaConch.html
	ffmpeg -i %1 –i "\\phil3k\ClusterShare\bin\logos\Bug-Frame-encode.png  -i input.wav -filter_complex "yadif=0:-1,crop=1408:1072:262:4,scale=-1:720,overlay=0:0"  -ac 2"  %%~nF\%%~nF_iPod.mp4
	md5deep64  %%~nF\%%~nF_iPod.mp4 > %%~nF\%%~nF_iPod.md5.txt
	MediaInfo --output=PBCore2   %%~nF\%%~nF_iPod.mp4 > %%~nF\%%~nF_iPod_MediaInfo.xml
	xcopy %%~nF\%%~nF_iPod_MediaInfo.xml \\vault\archive\MediaInfo_XM
