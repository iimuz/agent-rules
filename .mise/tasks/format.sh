#!/usr/bin/env bash
#MISE description="Format."

npx dprint fmt
npx prettier --write "**/*.{yml,yaml}"
