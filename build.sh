#!/bin/sh
docker build -t robinjam/steam-runtime:scout           --build-arg UBUNTU=ubuntu:precise      --build-arg SOURCE=steamrt_scout.list      . &
docker build -t robinjam/steam-runtime:scout_beta      --build-arg UBUNTU=ubuntu:precise      --build-arg SOURCE=steamrt_scout_beta.list . &
docker build -t robinjam/steam-runtime-i386:scout      --build-arg UBUNTU=i386/ubuntu:precise --build-arg SOURCE=steamrt_scout.list      . &
docker build -t robinjam/steam-runtime-i386:scout_beta --build-arg UBUNTU=i386/ubuntu:precise --build-arg SOURCE=steamrt_scout_beta.list . &
wait
