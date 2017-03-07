#!/usr/bin/env bash

main() {
	# Wm window title string (uses statusbar variables)
	tmux set-option -g set-titles-string "tmux:#I [ #W ]"

	tmux set-option -g window-status-format "#I:#W"
	tmux set-option -g window-status-current-format "#I:#W"
	
	tmux set-option -g status-interval 1
	tmux set-option -g status-justify left # center align window list
	
	# Default statusbar colors
	tmux set-option -g status-fg white
	tmux set-option -g status-bg default

	# Powerline symbols
	tmux_powerline_symbol_right_full=""
        tmux_powerline_symbol_right_thin="│"
        tmux_powerline_symbol_left_full=""
        tmux_powerline_symbol_left_thin="│"
	
	# Default window title colors
	tmux set-window-option -g window-status-format "#[fg=colour236,nounderscore]${tmux_powerline_symbol_right_full}#[default,bold,nounderscore] #I${tmux_powerline_flag} #[fg=colour240,reverse]${tmux_powerline_symbol_right_full}#[default]#[bg=colour240]#[nounderscore] #[default]#[fg=colour231,bg=colour240]#W#[nounderscore] #[fg=colour236,reverse]${tmux_powerline_symbol_right_full}"
	tmux set-window-option -g window-status-fg black
	tmux set-window-option -g window-status-bg colour76
	tmux set-window-option -g window-status-attr dim
	
	# Active window title colors
	tmux set-window-option -g window-status-current-format "#[fg=colour236]${tmux_powerline_symbol_right_full}#[default,bold] #I${tmux_powerline_flag} #[fg=colour123,reverse]${tmux_powerline_symbol_right_full}#[default]#[bg=colour123] #W #[fg=colour236,reverse]${tmux_powerline_symbol_right_full}"
	tmux set-window-option -g window-status-current-fg white
	tmux set-window-option -g window-status-current-bg colour33
	tmux set-window-option -g window-status-current-attr dim

	# Status bar window last active (Tmux 1.8+)
	tmux set-window-option -g window-status-last-attr none
	tmux set-window-option -g window-status-last-bg cyan
	tmux set-window-option -g window-status-last-fg black
	
	
	# Status bar window with activity/silence (monitor-activity, monitor-silence)
	tmux set-window-option -g window-status-activity-attr bold #,underscore
	tmux set-window-option -g window-status-activity-bg colour127 # Pink
	tmux set-window-option -g window-status-activity-fg black
	
	# Set bell colours
	tmux set-option -g window-status-bell-bg black                                                                      
	tmux set-option -g window-status-bell-fg red
	tmux set-option -g window-status-bell-attr bright
	
	# Command/message line colors
	tmux set-option -g message-fg white
	tmux set-option -g message-bg black
	tmux set-option -g message-attr bright
	
	# Statusbar starting in X or not
	if [ -n "$DISPLAY" ]
	then
		# in X
		tmux set-option -g status-attr bright
		tmux set-option -g status-right-length 40
		tmux set-option -g status-left-length 40

		tmux set-option -g status-left "#[fg=blue]#H #[fg=black,bright]• #[default]#[fg=green]#(whoami)#[default]• #[fg=magenta]#(curl ipecho.net/plain;echo)#[default]   "
		tmux set-option -g status-right "#[fg=cyan] #(uptime -p) #[fg=black,bright]• #[fg=magenta]#{cpu_percentage}"
	else
		# Statusbar if tmux run in console
		# information normally in dwm bar
		tmux set-option -g status-attr bright
		tmux set-option -g status-right-length 50
		tmux set-option -g status-left-length 50

		# default window title colors
		tmux set-window-option -g window-status-fg black
		tmux set-window-option -g window-status-bg default
		tmux set-window-option -g window-status-attr bright

		# message colours
		tmux set-option -g message-fg black
		tmux set-option -g message-bg green
		tmux set-option -g message-attr bright

		tmux set-option -g status-left "#[fg=blue] #H #[fg=black]• #[fg=green]#(whoami) #[fg=black]• #[fg=magenta]#(curl ipecho.net/plain;echo)#[default]  "
		tmux set-option -g status-right "#[fg=yellow,nobright] #(uptime -p)#[fg=black,bright] • #[fg=magenta]#{cpu_percentage}#[fg=black] • #[fg=cyan]%H:%M:%S #[default]"
	fi
}
main
