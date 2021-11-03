#!/usr/bin/env nix-shell
#!nix-shell -p bash -i bash -p nixUnstable -p nushell

set -eux -o pipefail # Exit with nonzero exit code if anything fails

nu ./scripts/run-all.nu
