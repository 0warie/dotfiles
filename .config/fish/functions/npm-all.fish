function npm-all --description "Run npm install in all subdirectories with a package.json"
    for d in ./*/
        if test -f "$d/package.json"
            echo "Running npm install in $d"
            pushd "$d"
            npm install
            popd
        end
    end
end

function npm-ci-all --description "Run npm install in all subdirectories with a package.json"
    for d in ./*/
        if test -f "$d/package.json"
            echo "Running npm ci in $d"
            pushd "$d"
            npm ci
            popd
        end
    end
end