#!/bin/sh

# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.
set -e

# Build and move mac catalyst framework
MACCATALYST_BUILD_DIR="${BUILD_DIR}/${CONFIGURATION}-maccatalyst"
xcodebuild -quiet \
  SYMROOT="${SYMROOT}" OBJROOT="${BUILT_PRODUCTS_DIR}" PROJECT_TEMP_DIR="${PROJECT_TEMP_DIR}" ONLY_ACTIVE_ARCH=NO \
  -project "${SRCROOT}/${PROJECT_NAME}.xcodeproj" -configuration "${CONFIGURATION}" -scheme "${PROJECT_NAME} iOS Framework" -destination 'platform=macOS,variant=Mac Catalyst'
