for /r %%A in ("*") do md5deep64 -b -e "%%A" >> "C:\Users\ecolloton\Desktop\manifests\checksum_manifest_for_LTO.txt"
sort "C:\Users\ecolloton\Desktop\manifests\checksum_manifest_for_LTO.txt" /O "C:\Users\ecolloton\Desktop\manifests\checksum_manifest_for_LTO.txt"
