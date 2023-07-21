#!/bin/bash

# Use this before the text you want to show off \x1B[HX;Ym
#         
#                          H for  Highlight option
#                          X for the color
#                          Y for the format
#
# H = 3 --> Color text     H = 4 --> Highlight text
#
# X = 1 --> Red            X = 2 --> Green
# X = 3 --> Yellow         X = 4 --> Blue light
# X = 5 --> Purple         X = 6 --> Blue dark
#
# Y = 1 --> Bold           Y = 2 --> Normal
# Y = 3 --> Italic         Y = 4 --> Underline
#
# Don't forget to end the color modification with "\x1B[0m"

colors_tester=("\x1B[31;2m" "\x1B[32;2m" "\x1B[33;2m" "\x1B[34;2m" "\x1B[35;2m" "\x1B[36;2m" "\x1B[34;1m" "\x1B[34;2m" "\x1B[34;3m" "\x1B[44;3m" "\x1B[34;4m")
texts=("Red" "Green" "Yellow/Orange" "Blue light" "Purple" "Bleu Dark" "Blue Bold" "Blue Normal" "Blue Italic" "Blue Highlight" "Blue Underline")
no_color="\x1B[0m"

console_text_modification_tester(){
  text_to_show=0
  
  for i in "${colors_tester[@]}"; do
    echo -e "${i}${texts[${text_to_show}]}${no_color}"
    text_to_show=$((text_to_show+1))
  done
}

console_text_modification_tester
