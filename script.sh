#!/bin/bash

LOGO_PATH="$1"
chmod +rwx "$LOGO_PATH"
shift
OPTS=("$@")

# Colors
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

TITLE_WEIGHT=$(tput bold)
SUBTITLE_WEIGHT=$(tput sgr0)
NORMAL_WEIGHT=$(tput sgr0)
LIGHT_WEIGHT=$(tput dim)

# verify if the jp2a is installed
hasJp2a() {
    if ! which jp2a >/dev/null; then
        return 1
    fi
    return 0
}

# install jp2a if not installed
installJp2a() {
    # download jp2a
    if ! hasJp2a; then
        apt-get install jp2a -y
    fi
}

custom_line() {
    local line="$1"
    local index="$2"
    local colors=($CYAN $DARK_GRAY $DARK_GRAY)
    local weights=($TITLE_WEIGHT $SUBTITLE_WEIGHT $NORMAL_WEIGHT $LIGHT_WEIGHT)
    local color=${colors[-1]}
    local weight=${weights[-1]}

    if [[ $index -lt ${#colors[@]} ]]; then
        color=${colors[$index]}
        weight=${weights[$index]}
    fi
    echo "${color}${weight}${line}${NC}"
}


# show on terminal the logo and infos
logo() {
    echo
	image=""

	# download jp2a
	if ! hasJp2a; then
        printf " ${DARK_RED}jp2a${NC} is not installed, do you want to install it? [Y/n] "
        read -r response
        if [[ $response != "n" || $response != "N" ]]; then
            installJp2a
            clear
        fi
	fi

	if hasJp2a; then
		# local local_logo='logo.png'
        local local_logo="$LOGO_PATH"
		# save the generated image on image variable
		image=$(jp2a --colors --width=17 "$local_logo")
	fi

	# split the image into lines
	local oldIFS=$IFS
    IFS=$'\n'
	local lines=($image)
    IFS=$oldIFS

	local opt_count=0

	# Loop through the lines of the image
	for ((i = 0; i < ${#lines[@]}; i++)); do
        printf " %s" "${lines[$i]}"
		if [[ $i -gt 2 && $opt_count -lt ${#OPTS[@]} ]]; then
			printf "     $(custom_line "${OPTS[$opt_count]}" "$opt_count")"
			opt_count=$((opt_count + 1))
		fi
        printf "\n"
	done
}

logo