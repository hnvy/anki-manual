#!/bin/bash

(cd && git clone https://github.com/abdnh/mdbook-binaries.git)
export PATH="$HOME/mdbook-binaries:$PATH"
if [ "$CHECK" = "" ]; then
    rm $HOME/mdbook-binaries/mdbook-linkcheck
fi
mdbook build

