#!/usr/bin/env bash
set -euo pipefail
: "${MUAPI_API_KEY:?Set MUAPI_API_KEY first}"

curl --fail-with-body --request POST \
  "https://api.muapi.ai/api/v1/kling-v3.0-pro-text-to-video" \
  --header "x-api-key: ${MUAPI_API_KEY}" \
  --header "Content-Type: application/json" \
  --data '{"prompt":"A cinematic tracking shot of a red fox crossing a snowy forest at dawn","aspect_ratio":"16:9","duration":5}'
