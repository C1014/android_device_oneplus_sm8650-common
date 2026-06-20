#!/bin/bash

ROOT="${BASH_SOURCE%/*}/../../../.."
ROOT=$(cd "$ROOT" && pwd)

echo "Applying frameworks/base patches..."
cd $ROOT/frameworks/base
git am $ROOT/device/oneplus/sm8650-common/patches/frameworks_base/*.patch

echo "Applying packages/apps/Settings patches..."
cd $ROOT/packages/apps/Settings
git am $ROOT/device/oneplus/sm8650-common/patches/packages_apps_Settings/*.patch

echo "All patches applied successfully!"
