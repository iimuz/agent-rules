#!/usr/bin/env bash
#MISE description="Link instructions."
#USAGE flag "--dst <directory>" help="destination directory."
#
# フォルダにあるルールファイルを各リポジトリにsymlinkでリンクする。

set -eu
set -o pipefail

function _symlink_dir() {
	if [ ! -d $1 ]; then
		echo "Directory $1 does not exist. skip."
		return
	fi
	if [ -d $2 ]; then
		echo "Directory $2 already exists. skip."
		return
	fi

	ln -s $1 $2
}

function _symlink_file() {
	if [ ! -f $1 ]; then
		echo "File $1 does not exist. skip."
		return
	fi
	if [ -f $2 ]; then
		echo "File $2 already exists. skip."
		return
	fi

	ln -s $1 $2
}

# miseのusageから引数を取得
readonly DST=$(realpath $usage_dst)

readonly SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
readonly SRC=$(realpath $SCRIPT_DIR/../..)

echo "source directory : $SRC"
echo "destination directory: $DST"

echo "link cline rules..."
_symlink_dir "$SRC/.clinerules" "$DST/.clinerules"

echo "link vscode github copilot instructions..."
readonly DST_VSCODE_COPILOT="$DST/.github"
if [[ ! -d "$DST_VSCODE_COPILOT" ]]; then
  mkdir "$DST_VSCODE_COPILOT"
fi
_symlink_file "$SRC/.github/copilot-instructions.md" "$DST_VSCODE_COPILOT/copilot-instructions.md"
