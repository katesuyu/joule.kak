# SPDX-License-Identifier: 0BSD
evaluate-commands %sh{
    background='rgb:000000'
    foreground='rgb:e6e1cf'
    gutter='rgb:303030'
    padding='rgb:070707'

    black='rgb:000000'
    white='rgb:ffffff'
    gray='rgb:969896'
    red='rgb:ff2c6d'
    blue='rgb:73d0ff'
    green='rgb:bae67e'
    yellow='rgb:ffee99'
    orange='rgb:ff9f5b'
    lavender='rgb:d4bfff'

    printf '%s' "
        # Editor UI styling.
        face global Default ${foreground},${background}
        face global BufferPadding ${padding},${padding}
        face global LineNumbers ${gray},${gutter}
        face global LineNumbersWrapped +i@LineNumbers
        face global LineNumberCursor ${foreground}@LineNumbers
        face global LineFlagErrors ${red}@LineNumbers
        face global PrimaryCursor ${black},${white}
        face global PrimaryCursorEol PrimaryCursor
        face global PrimarySelection ${black},${blue}
        face global SecondaryCursor PrimaryCursor
        face global SecondaryCursorEol PrimaryCursorEol
        face global SecondarySelection ${black},${gray}
        face global Information ${black},${yellow}
        face global MenuForeground ${black},${yellow}
        face global MenuBackground ${black},${foreground}
        face global MenuInfo ${black}
        face global StatusLine Default
        face global StatusCursor PrimaryCursor
        face global StatusLineInfo ${blue}
        face global StatusLineMode ${yellow}
        face global StatusLineValue ${green}
        face global MatchingChar +rb
        face global Error ${red}+i
        face global Prompt ${yellow}

        # Programming language syntax highlighting.
        face global value ${red}
        face global meta ${red}
        face global error ${red}+ui
        face global variable ${green}
        face global module ${green}
        face global function ${yellow}
        face global type ${orange}
        face global keyword ${blue}
        face global attribute ${blue}
        face global comment ${gray}
        face global string ${lavender}
        face global operator Default

        # Document template syntax highlighting.
        face global title ${blue}
        face global header ${blue}
        face global bullet ${red}
        face global list ${lavender}
    "
}
