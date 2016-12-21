# LPB_ArchiveProcesses
I'll be adding the simple scripts I'm using for the LPB AV archive here intermittenly. These scripts will run in a Windows OS enviornment, and often have dependencies such as MediaInfo, MediaConch, md5deep, XMLStarlet, or other applications. 
# checksums_manifest_for_LTO.bat
This is a batch file for running the 64 bit ver of md5deep (md5deep.sourceforge.net) recursively, one file at a time, and inserting the resulting checksum hashes into a single text file titled "checksum_manifest_for_lto.txt." Running the recursive option of the md5deep command causes the machine to attempt to read multiple files at the same time, so for LTO tape, I have to use a "for" loop.
# MI_MD5_sidecars.bat
This is a batch file, not dissimilar to the one above, that runs MediaInfo (https://mediaarea.net/en/MediaInfo) and md5deep (md5deep.sourceforge.net) recursively, and creates sidecar files for the results of each process.
