tmux-grrrck-theme
=====================

Tmux plugin for my tmux theme

### Thanks to
* [ctjhoa/tmux-jasonwryan-theme](https://github.com/ctjhoa/tmux-jasonwryan-theme)
* [jooize/tmux-powerline-theme](https://github.com/jooize/tmux-powerline-theme)

### Requirements
* [tmux-plugins/tmux-cpu](https://github.com/tmux-plugins/tmux-cpu)
* [tmux-plugins/tmux-net-speed](https://github.com/tmux-plugins/tmux-net-speed)

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf` and hit `prefix + I` to fetch the plugin
and source it.

For reference, here is my full `.tmux.conf` file:

```
# Enable mouse controls
set -g mouse on

# tpm List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-cpu'
set -g @plugin 'tmux-plugins/tmux-net-speed'
set -g @plugin 'tmux-plugins/tmux-pain-control'

set -g @plugin "gadenbuie/tmux-grrrck-theme" 

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

### License
[MIT](LICENSE)

