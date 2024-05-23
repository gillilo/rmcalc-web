#!/bin/sh
set -e

# .env 파일 경로 설정
ENV_FILE="/app/.env"

# 현재 환경 변수들을 .env 파일에 저장
printenv | grep -v "no_proxy" > $ENV_FILE &

# 전달된 명령어 실행
exec "$@"