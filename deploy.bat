@echo off
echo Packing %1
IF EXIST %1.mcpack (
	del %1.mcpack
) ELSE (
    echo Skipping deletion of %1.mcpack
)
7z a -r -tzip %1.mcpack -x^!*.git *.*
git add %1.mcpack
git commit -m "Auto deploy"
git push origin

