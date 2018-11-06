#!/bin/bash

# Realocando os icones para o local correto

for png in /opt/google/chrome/product_logo_*.png; do
  pngsize="${png##*/product_logo_}"
  mkdir -p /usr/share/icons/hicolor/${pngsize%.png}x${pngsize%.png}/apps
  (
    cd /usr/share/icons/hicolor/${pngsize%.png}x${pngsize%.png}/apps/
    ln -s ../../../../../../opt/google/chrome/product_logo_${pngsize} google-chrome.png
  )
done
