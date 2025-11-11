if status is-interactive

    #* Unix Command Aliases
    alias l='ls -CF'
    alias la='ls -A'
    alias ll='ls -alF'    

    #* Flutter / FVM Configuration
    export PATH="$PATH:$HOME/fvm/default/bin"
    export PATH="$PATH:$HOME/.pub-cache/bin"

    #* FVM Flutter and Dart Aliases
    alias f='fvm flutter'
    alias d='fvm dart'

    #* Flutter Utility
    alias f-ios-clean='fish -c cd ios && rm -rf Pods/ Podfile.lock && pod install --repo-update'
    alias f-re='fish -c fvm flutter clean && fvm flutter pub get'
    alias f-br='fvm dart run build_runner build --delete-conflicting-outputs'

    #* Bulk Repository Management
    ##* Git Operations
    alias git-pull-all='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" && git pull origin main" \;'
    alias git-main-all='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" && git checkout main && git pull origin main" \;'

    #* NPM Utility
    alias npm-build-pack='npm run build && npm pack'
end

# brew
export HOMEBREW_DOWNLOAD_CONCURRENCY=auto
# brew end

# starship
starship init fish | source
enable_transience
# starship end
