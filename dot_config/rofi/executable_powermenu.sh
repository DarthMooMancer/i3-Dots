#!/usr/bin/env bash

dir="$HOME/.config/rofi/"
theme='powermenu'

uptime="`uptime -p | sed -e 's/up //g'`"

shutdown=''
reboot=''
lock=''
hibernate='󰤄'
logout=''
yes=''
no=''

rofi_cmd() {
	rofi -dmenu -p "Uptime: $uptime" -mesg "Uptime: $uptime" -theme ${dir}/${theme}.rasi
}

confirm_cmd() {
	rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 350px;}' \
		-theme-str 'mainbox {children: [ "message", "listview" ];}' \
		-theme-str 'listview {columns: 2; lines: 1;}' \
		-theme-str 'element-text {horizontal-align: 0.5;}' \
		-theme-str 'textbox {horizontal-align: 0.5;}' \
		-dmenu -p 'Confirmation' -mesg 'Are you Sure?' -theme ${dir}/${theme}.rasi
}

confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

run_rofi() {
	echo -e "$lock\n$hibernate\n$logout\n$reboot\n$shutdown" | rofi_cmd
}

run_cmd() {
  if [[ "$(confirm_exit)" == "$yes" ]]; then
		if [[ $1 == '--shutdown' ]]; then
			systemctl poweroff
		elif [[ $1 == '--reboot' ]]; then
			systemctl reboot
		elif [[ $1 == '--hibernate' ]]; then
			systemctl hibernate
		elif [[ $1 == '--logout' ]]; then
			if [[ "$DESKTOP_SESSION" == 'i3' ]]; then
				i3-msg exit
			fi
		fi
	else
		exit 0
	fi
}

case "$(run_rofi)" in
    $shutdown)
      run_cmd --shutdown ;;
    $reboot)
      run_cmd --reboot ;;
    $lock)
      if [[ -x '/usr/bin/i3lock' ]]; then
        i3lock-fancy
      fi ;;
    $hibernate)
      run_cmd --hibernate ;;
    $logout)
      run_cmd --logout ;;
esac
