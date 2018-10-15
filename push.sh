#!/bin/sh
docker push robinjam/steam-runtime:scout &
docker push robinjam/steam-runtime:scout_beta &
docker push robinjam/steam-runtime-i386:scout &
docker push robinjam/steam-runtime-i386:scout_beta &
wait
