# MODIFY_TEXT_OUTPUT_COLOR_BASH

A quick exemple of how you can change text color. It's working with many 
different version of bash (Mac OS ready also tested on fedora 33 KDE and ubuntu
jellyfish gnome).

I create an exemple.sh script to show you how it work, basicaly I use ```echo```
command with ```-e``` option to enable interpret backslash escapes and then use 
the this part ```\x1B[HX;Ym``` to start text modification.

```
H for  Highlight option
H = 3 --> Color text       H = 4 --> Highlight text

X for the color
X = 1 --> Red              X = 2 --> Green
X = 3 --> Yellow/orange    X = 4 --> Blue light
X = 5 --> Purple           X = 6 --> Blue dark

Y for the format
Y = 1 --> Bold             Y = 2 --> Normal
Y = 3 --> Italic           Y = 4 --> Underline
```

When you finish text modification use ```\x1B[0m```

Try on your terminal :
```
echo -e "Hello my name is \x1B[34;2mVictor\x1B[0m I'm a \x1B[33;2msys-admin\x1B[0m \!\n"
```

You can try exemple.sh to see the wide range of modification you can do.
