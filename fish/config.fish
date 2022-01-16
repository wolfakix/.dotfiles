if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end
fish_vi_key_bindings

function vim -d 'Run neovim instead of vim if nvim is installed'
    if command -q nvim
        command nvim $argv
    else
        command vim $argv
    end
end  
set PATH $PATH="$HOME/tools/lua-language-server/bin/macOS:$PATH"
alias luamake=/Users/grammenoudis/tools/lua-language-server/3rd/luamake/luamake
alias v=nvim
