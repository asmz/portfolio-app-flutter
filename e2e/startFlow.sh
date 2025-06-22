#!/bin/sh

set +e

# テスト対象端末のID取得関数
function get_target_device() {
  if [[ $1 == "ios" ]]; then
    xcrun simctl list devices --json | jq -r '[.devices[][] | select(.state == "Booted")][0] | .udid'  # 現在起動中の端末を対象とする場合
  else
    adb devices -l | grep "device " | awk '{print $1}'
  fi
}

# path設定
PROJECT_ROOT_DIR="$(cd $(dirname $0); pwd)/.."
E2E_DIR="${PROJECT_ROOT_DIR}/e2e"

# 引数チェック
USAGE="Usage: $0 {ios|android}"
if [[ $# -ne 1 ]]; then
  echo ${USAGE}
  exit 1
fi
if [[ $1 != "ios" ]] && [[ $1 != "android" ]]; then
  echo ${USAGE}
  exit 1
fi

# maestroへ渡すパラメータ準備
APP_ID=beer.asmz.portfolio.flutter
TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
TARGET_DEVICE=$(get_target_device $1)
if [[ ${TARGET_DEVICE} == "" ]]; then
  echo "No device connected."
  exit 1
fi

# Maestro Driver立ち上げのタイムアウトを60秒に設定（デフォルト15秒）
export MAESTRO_DRIVER_STARTUP_TIMEOUT=60000
# maestroでテスト実行
maestro --device ${TARGET_DEVICE} test --debug-output ${E2E_DIR}/logs ${E2E_DIR}/flow.yaml -e APP_ID=${APP_ID} -e TIMESTAMP=${TIMESTAMP}