  #!/usr/bin/env bash
#MISE description="Bump dependencies."
#
# 依存関係のバージョンアップを行うスクリプト。

npm install --include=dev cspell@latest dprint@latest prettier@latest
npx dprint config update
