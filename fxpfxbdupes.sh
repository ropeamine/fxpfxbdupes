#!/usr/bin/env zsh
set -e

if [[ "$(uname)" != "Darwin" ]]; then
  echo "This script runs only on macOS."
  exit 1
fi

DUP=~/Desktop/Duplicates_$(date +%Y%m%d_%H%M%S)
LOG=~/Desktop/Duplicates_$(date +%Y%m%d_%H%M%S).log
mkdir -p "$DUP"

{
DIR=~/Library/Application\ Support/LennarDigital/Sylenth1/SoundBanks
typeset -A f; t=0; d=0

for x in "$DIR"/**/*(.N); do
  [[ "$x" == *.fxb || "$x" == *.fxp ]] || continue
  ((t++))
  c=$(md5 -q "$x")
  rel=${x#"$DIR"/}
  echo "Processing: $rel md5 $c"
  f[$c]+="$x"$'\n'
done

for c l in ${(kv)f}; do
  (( $(echo "$l" | wc -l | tr -d ' ') > 1 )) || continue
  first=true
  while read -r y; do
    [[ -z "$y" ]] && continue
    rel=${y#"$DIR"/}
    if $first; then first=false
    else
      ((d++))
      echo "Duplicate Found: $rel moving to $DUP"
      mv "$y" "$DUP/"
    fi
  done <<< "$l"
done

echo "Processed $t files, moved $d duplicates."
} 2>&1 | tee "$LOG"
