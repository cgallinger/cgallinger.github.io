#!/bin/bash

for i in *.IMG; do
    echo "$i"

    lev0file="${i/.IMG/_lev0.cub}"
    echo "$lev0file"

    lronac2isis from="$i" to="$lev0file"
    spiceinit from="$lev0file" web=yes shape=user model=/Volumes/Kepler/dems/Lunar_LRO_LOLAKaguya_DEMmerge/Lunar_LRO_LOLAKaguya_DEMmerge_60N60S_512ppd_radius.cub

    lev1file="${lev0file/_lev0.cub/_lev1.cub}"
    echo "$lev1file"

    lronaccal from="$lev0file" to="$lev1file"
    lev1echofile="${lev1file/_lev1.cub/_lev1.echo.cub}"


    echo "$lev1echofile"
    lronacecho from="$lev1file" to="$lev1echofile"

    lev2file="${lev1echofile/lev1.echo.cub/lev2.cub}"
    echo "$lev2file"
    cam2map from="$lev1echofile" to="$lev2file" map=MoonEquirectangular180.map pixres=map
done

ls -1 *lev2.cub > lev2.lis
equalizer fromlist=lev2.lis
ls -1 *lev2.equ.cub > lev2_eq.lis
noseam fromlist=lev2_eq.lis to="$1_mosaic.cub" samples=101 lines=101
