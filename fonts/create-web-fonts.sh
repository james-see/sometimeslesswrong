#!/usr/bin/env bash
#
# convert-font.sh
# Convert an OTF font into TTF, WOFF, and WOFF2 web font assets.
#
# Usage:
#   ./convert-font.sh path/to/font.otf
#
# Output:
#   font.ttf, font.woff, font.woff2 in the same directory as the input.

set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 path/to/font.otf" >&2
  exit 1
fi

INPUT="$1"

if [ ! -f "$INPUT" ]; then
  echo "Error: file not found: $INPUT" >&2
  exit 1
fi

EXT="${INPUT##*.}"
if [ "$EXT" != "otf" ] && [ "$EXT" != "OTF" ]; then
  echo "Error: input must be an .otf file" >&2
  exit 1
fi

DIR="$(cd "$(dirname "$INPUT")" && pwd)"
BASENAME="$(basename "$INPUT" .otf)"
BASENAME="$(basename "$BASENAME" .OTF)"

OTF_PATH="$DIR/$BASENAME.otf"
TTF_PATH="$DIR/$BASENAME.ttf"
WOFF_PATH="$DIR/$BASENAME.woff"
WOFF2_PATH="$DIR/$BASENAME.woff2"

# Check dependencies
command -v fontforge >/dev/null 2>&1 || {
  echo "Error: fontforge not found in PATH. Install it first." >&2
  exit 1
}

command -v woff2_compress >/dev/null 2>&1 || {
  echo "Error: woff2_compress not found in PATH. Install the woff2 tools." >&2
  exit 1
}

echo "Input OTF: $OTF_PATH"

# 1. OTF -> TTF
echo "Converting OTF to TTF..."
fontforge -quiet -lang=ff -c "Open(\"$OTF_PATH\"); Generate(\"$TTF_PATH\"); Close();"

if [ ! -f "$TTF_PATH" ]; then
  echo "Error: failed to create $TTF_PATH" >&2
  exit 1
fi

# 2. TTF -> WOFF (using fontforge, keeps metadata nicely)
echo "Converting TTF to WOFF..."
fontforge -quiet -lang=ff -c "Open(\"$TTF_PATH\"); Generate(\"$WOFF_PATH\"); Close();"

if [ ! -f "$WOFF_PATH" ]; then
  echo "Error: failed to create $WOFF_PATH" >&2
  exit 1
fi

# 3. TTF -> WOFF2
echo "Converting TTF to WOFF2..."
woff2_compress "$TTF_PATH"

# woff2_compress creates BASENAME.woff2 next to the TTF
if [ ! -f "$WOFF2_PATH" ]; then
  echo "Error: failed to create $WOFF2_PATH" >&2
  exit 1
fi

echo "Done."
echo "Generated:"
echo "  $TTF_PATH"
echo "  $WOFF_PATH"
echo "  $WOFF2_PATH"

