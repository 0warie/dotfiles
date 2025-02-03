if status is-interactive
    #----Custom additions----#

    # Quality of Life
    function refish
        source ~/.config/fish/config.fish
    end

    # Flutter / FVM Configuration
    export PATH="$PATH:$HOME/.pub-cache/bin"

    # FVM Flutter and Dart Aliases
    alias f='fvm flutter'
    alias d='fvm dart'

    # Bulk Repository Management
    ## Git Operations
    alias git-pull-all='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" &&efgit pull origin main" \;'
    alias git-main-all='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" && git checkout main && git pull origin main" \;'

    ## NPM Operations
    alias npm-all='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" && pwd && npm i" \;'
    alias npm-all-ci='find . -type d -maxdepth 1 -exec sh -c "cd \"{}\" && pwd && npm ci" \;'

    # NPM Utility
    alias npm-build-pack='npm run build && npm pack'

    # Flutter Utility
    alias f-ios-clean='fish -c cd ios && rm -rf Pods/ Podfile.lock && pod install --repo-update'
    alias f-refresh='fish -c fvm flutter clean && fvm flutter pub get && cd ./ios && pod install --repo-update'
    alias f-build-run='fvm dart run build_runner build --delete-conflicting-outputs'
end

starship init fish | source
