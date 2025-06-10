if status is-interactive
    #----Custom additions----#

    # Quality of Life
    function refish
        source ~/.config/fish/config.fish
    end
    

    # Unix Command Aliases
    alias l='ls -CF'
    alias la='ls -A'
    alias ll='ls -alF'

    # Git Aliases
    alias g='git'
    alias gp='git pull'
    alias gpr='git pull --rebase'
    alias gs='git status'
    alias gcm='git commit -m'
    alias gca='git commit --amend'
    alias gcan='git commit --amend --no-edit' 
    alias gsw='git switch'

    # Flutter / FVM Configuration
    export PATH="$PATH:$HOME/fvm/default/bin"
    export PATH="$PATH:$HOME/.pub-cache/bin"

    # FVM Flutter and Dart Aliases
    alias f='fvm flutter'
    alias d='fvm dart'

    # Flutter Utility
    alias f-ios-clean='fish -c cd ios && rm -rf Pods/ Podfile.lock && pod install --repo-update'
    alias fre='fish -c fvm flutter clean && fvm flutter pub get'
    alias fbr='fvm dart run build_runner build --delete-conflicting-outputs'

    # Bulk Repository Management
    ## Git Operations
    alias git-pull-all='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" &&efgit pull origin main" \;'
    alias git-main-all='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" && git checkout main && git pull origin main" \;'

    ## NPM Operations
    alias npm-all='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" && pwd && npm i" \;'
    alias npm-all-ci='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" && pwd && npm ci" \;'

    # NPM Utility
    alias npm-build-pack='npm run build && npm pack'
end

starship init fish | source
enable_transience
