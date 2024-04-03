#!/usr/bin/env bash
i=1
for file in *.pdf; do
  mv $file "SPIN2024-paper${i}.pdf"
  i=$((i + 1))
done
