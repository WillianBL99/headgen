#!/usr/bin/env bash

BLACK=$(tput setaf 232)
RED=$(tput setaf 124)
BLUE=$(tput setaf 21)
GREEN=$(tput setaf 46)
YELLOW=$(tput setaf 226)
ORANGE=$(tput setaf 166)
PURPLE=$(tput setaf 61)
CYAN=$(tput setaf 37)
WHITE=$(tput setaf 255)
LIGHT_RED=$(tput setaf 196)
LIGHT_BLUE=$(tput setaf 33)
LIGHT_GREEN=$(tput setaf 118)
LIGHT_CYAN=$(tput setaf 39)
LIGHT_PURPLE=$(tput setaf 63)
LIGHT_GRAY=$(tput setaf 254)
DARK_GRAY=$(tput setaf 235)
DARK_GREEN=$(tput setaf 22)
CYAN=$(tput setaf 37)
NC=$(tput sgr0)

echo "${LIGHT_CYAN}HeadGen: ${CYAN}Head Generator${NC}"
echo "${DARK_GRAY}This script is used to generate a header for your scripts."
echo "It will generate a header with the logo of your choice and"
echo "with the information you want to display.${NC}"
echo
echo "${DARK_GRAY}Usage:${NC}"
echo " ${GREEN}\$ headgen ${LIGHT_GRAY}<path_to_logo> <infos...>"
echo "${NC}"
echo "${DARK_GRAY}Example:${NC}"
echo " ${GREEN}\$ headgen ${LIGHT_GRAY}./logo.png \"Title\" \"Description\" \"Sub description\"${NC}"
echo
echo " ${DARK_GRAY}ou:${NC}"
echo " ${ORANGE}OPTS=${NC}(${LIGHT_GRAY}\"Title\" \"Description\" \"Sub description\"${NC})"
echo " ${GREEN}\$ headgen ${LIGHT_GRAY}./logo.png \"\$ {OPTS[@]}\"${NC}"
echo
echo "${DARK_GRAY}Options:${NC}"
echo " ${GREEN}-h --help${NC} Show this screen"
echo
echo "${DARK_GRAY}Author:${NC}"
echo "  ${GREEN}name:${NC} Paulo Uilian"
echo "  ${GREEN}github:${NC} github.com/WillianBL99${NC}"
echo
echo "${DARK_GRAY}Version:${NC} 1.0.0"