# Agent Rules

## 概要

このリポジトリは、AI Agent(GitHub Copilotなど)を使用する際の自分用のカスタム指示とルール設定をまとめたものです。AI Agentの一貫した動作と効率的な利用をサポートするための設定集です。

## 構成

- `.clinerules/` - AI Agent向けのルール設定ファイル
  - `00-base.md` - 基本的な作業の進め方やAIの利用方法
  - `01-memory-bank.md` - セッション間でコンテキストを維持するためのメモリーバンク設計
  - `10-git.md` - Gitワークフローに関するベストプラクティス
  - `20-coding.md` - コーディングプラクティス(関数型プログラミング、DDD、TDDなど)
  - `99-zunda.md` - ずんだもん口調の設定
- `.github/` - GitHub関連の設定
  - `copilot-instructions.md` - GitHub Copilot向けの指示

## 特徴

- **詳細なGitワークフロー**: コミットメッセージの形式、プルリクエストのテンプレートなど
- **コーディングプラクティス**: 関数型アプローチ、ドメイン駆動設計、テスト駆動開発などの原則
- **メモリーバンク**: AIがセッション間で情報を保持するための構造化されたドキュメント設計
- **パーソナライズ**: Agentに指示が効いているか確認するためのキャラクターの口調設定

## 使い方

1. このリポジトリをクローンまたはフォークします
2. `.clinerules`ディレクトリと`.github/copilot-instructions.md`を自分のプロジェクトに取り込みます
3. 必要に応じてルールを自分の好みやプロジェクト要件に合わせて調整します

### mise

miseを利用して環境構築とファイルのリンクを行うことができます。

```sh
# rulesのリンク作成
mise run link --dst /path/to/target/directory

# 開発環境の構築
mise run setup
# 開発環境の依存関係の更新
mise run update
# ファイルのlint, format
mise run lint
mise run format
# 開発環境のファイル削除
mise run clean
```
