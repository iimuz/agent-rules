#!/usr/bin/env bash
#MISE description="Format."

dprint fmt
npx prettier --write "**/*.{yml,yaml}"

