source /usr/share/cachyos-fish-config/cachyos-config.fish

export PATH="$HOME/.local/bin:$PATH"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"

# OpenClaw Completion
source "/home/mac/.openclaw/completions/openclaw.fish"

# Starship prompt
starship init fish | source

# Theme switch shortcut
abbr -a ts theme-switch
abbr -a tn theme-switch next

# Fastfetch with random image from ~/Pictures
function fastfetch
    set -l images (find ~/Pictures -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.webp" \) 2>/dev/null)
    if test (count $images) -gt 0
        set -l pick $images[(random 1 (count $images))]
        command fastfetch --logo "$pick" --logo-type sixel --logo-height 16 $argv
    else
        command fastfetch $argv
    end
end
