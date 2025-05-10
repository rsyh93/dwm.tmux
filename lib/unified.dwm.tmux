# dwm bindings from https://github.com/godwinduan/dwm.tmux (which is a fork)
# For use with TTY terminals (will try to mimic dwm bindings exactly)

# Start windows at 1
set -g base-index 1

set-hook -g pane-exited 'select-layout main-vertical;' #resize-pane -t :.0 -x 50%

# New pane, home directory
bind -n M-n \
    split-window -t :.0\; \
    swap-pane -s :.0 -t :.1\; \
    select-layout main-vertical\; \
    resize-pane -x 50%;

# New pane, same directory
# Turns out TTY doesn't want to recognize M-S-Enter
bind -n M-Enter \
    split-window -t :.0 -c "#{pane_current_path}"\; \
    swap-pane -s :.0 -t :.1\; \
    select-layout main-vertical\; \
    resize-pane -x 50%;


bind -n M-Space swap-pane -t 0;
bind -n C-w kill-pane;
bind -n M-C kill-pane;
bind -n M-j select-pane -t :.+;
bind -n M-k select-pane -t :.-;
bind -n M-J rotate-window -D\; select-pane -t 0;
bind -n M-K rotate-window -U\; select-pane -t 0;
bind -n M-t select-layout main-vertical;
bind -n M-M resize-pane -Z;
#bind -n M-Space float
bind -n M-h resize-pane -L 2;
bind -n M-l resize-pane -R 2;

bind -n M-1 if-shell "tmux selectw -t 1" "" "new-window -t 1"
bind -n M-2 if-shell "tmux selectw -t 2" "" "new-window -t 2"
bind -n M-3 if-shell "tmux selectw -t 3" "" "new-window -t 3"
bind -n M-4 if-shell "tmux selectw -t 4" "" "new-window -t 4"
bind -n M-5 if-shell "tmux selectw -t 5" "" "new-window -t 5"
bind -n M-6 if-shell "tmux selectw -t 6" "" "new-window -t 6"
bind -n M-7 if-shell "tmux selectw -t 7" "" "new-window -t 7"
bind -n M-8 if-shell "tmux selectw -t 8" "" "new-window -t 8"
bind -n M-9 if-shell "tmux selectw -t 9" "" "new-window -t 9"
bind -n M-0 if-shell "tmux selectw -t 10" "" "new-window -t 10"
