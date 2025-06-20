#!/usr/bin/env bash
#MISE description="Link agent rules."
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

echo "link cline..."
_symlink_dir "$SRC/.clinerules" "$DST/.clinerules"
_symlink_file "$SRC/.clineignore" "$DST/.clineignore"

echo "link roo code..."
_symlink_dir "$SRC/.roo" "$DST/.roo"
_symlink_file "$SRC/.roomodes" "$DST/.roomodes"
_symlink_file "$SRC/.rooignore" "$DST/.rooignore"

echo "link vscode github copilot instructions..."
readonly DST_VSCODE_COPILOT="$DST/.github"
if [[ ! -d "$DST_VSCODE_COPILOT" ]]; then
  mkdir "$DST_VSCODE_COPILOT"
fi
_symlink_file "$SRC/.github/copilot-instructions.md" "$DST_VSCODE_COPILOT/copilot-instructions.md"
_symlink_dir "$SRC/.github/instructions" "$DST_VSCODE_COPILOT/instructions"
_symlink_dir "$SRC/.github/prompts" "$DST_VSCODE_COPILOT/prompts"

echo "link aider settings..."
_symlink_file "$SRC/.aider.conf.yml" "$DST/.aider.conf.yml"
