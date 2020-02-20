#!/bin/bash
konsole --hold -e "~/scripts/start_xps.sh" & # update and start up xps
konsole --hold -e "htop" & # show me what is going on
firefox &