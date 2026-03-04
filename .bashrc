# Only add to PATH if it isn't already there
if [[ ":$PATH:" != *":$(pwd)/bin:"* ]]; then
    export PATH="$PATH:$(pwd)/bin"
fi

./bin/repo.sh
