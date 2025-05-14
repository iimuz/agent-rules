#!/usr/bin/env bash
#MISE description="Unlink agent rules."
#USAGE flag "--target <directory>" help="target directory."
#
# `link.sh` で作成したシンボリックリンクを削除する。

set -eu
set -o pipefail

function _unlink() {
	if [ ! -L "$1" ]; then
		echo "File $1 does not exist. skip."
		return
	fi

  unlink "$1"
}

# miseのusageから引数を取得
readonly TARGET=$(realpath $usage_target)

echo "target directory: $TARGET"

echo "unlink cline rules..."
_unlink "$TARGET/.clinerules"
_unlink "$TARGET/.clineignore"

echo "unlink vscode github copilot instructions..."
_unlink "$TARGET/.github/copilot-instructions.md"
_unlink "$TARGET/.github/instructions"
_unlink "$TARGET/.github/prompts"

echo "unlink aider settings..."
_unlink "$TARGET/.aider.conf.yml"
