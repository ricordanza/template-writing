# template-writing ![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/ricordanza/writing-with-gitlab-textlint) ![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/ricordanza/writing-with-gitlab-textlint) ![PDF creation](https://github.com/Ricordanza/template-writing/workflows/PDF%20creation/badge.svg)

Github で執筆する作用を行うためのテンプレートリポジトリ。  
Github Actions を使って lint で校正して re:VIEW 経由で PDF にする。  
`feature/`  から始まるリポジトリは `push` をトリガーにPDFを作成します。  
`master`  `release-candidate`  リポジトリはプルリクエストをトリガーにPDFを作成します。  
PDFの作成に成功した場合は [Releases](../../releases) に PDF をアップロードします。

docs ディレクトリに md ファイル、画像ファイルを images ディレクトリには配置する。  
catalog.yml を自動生成するのでmdファイルをわけて管理する場合は、ファイルの命名を意識しないと意図した並びにならない。  
並び順を明示的に指定したい場合は、[.github/workflows/create_pdf.yml](.github/workflows/create_pdf.yml) の catalog.yml の自動生成をやめて自分で出力順をメンテナンスしてください。

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/from-referrer/)

## image
[![dockeri.co](https://dockeri.co/image/ricordanza/writing-textlint)](https://hub.docker.com/r/ricordanza/writing-textlint)

## textlint
以下の内容をチェックします。
- aws-spellcheck
- preset-ja-technical-writing
- spellcheck-tech-word

## Gipod Workspace
以下の拡張機能を導入しています。
- [テキスト校正くん](https://marketplace.visualstudio.com/items?itemName=ICS.japanese-proofreading)
- [vscode-textlint](https://marketplace.visualstudio.com/items?itemName=taichi.vscode-textlint)
- [CharacterCount](https://marketplace.visualstudio.com/items?itemName=8amjp.charactercount)

ファイルの保存時にフォーマットをかけるようにしているのでlintで修正可能なものは自動修正します。
