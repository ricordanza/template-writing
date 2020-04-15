FROM node:11.12.0-alpine

RUN npm install -g textlint textlint-rule-prh textlint-rule-aws-spellcheck textlint-rule-preset-ja-technical-writing textlint-rule-spellcheck-tech-word