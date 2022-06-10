## Aesthetic GTK Theme

A fork of [_vinceliuice's_](https://github.com/vinceliuice) [**Colloid GTK Theme**](https://github.com/vinceliuice/Colloid-gtk-theme).

This GTK Theme is for [rxyhn-dotfiles](https://github.com/rxyhn/dotfiles) to go with the ***Aesthetic*** color scheme.

## Issue

This fork is not perfect if you find something that is out of place or isn't right please summit a [issue](https://github.com/Deathemonic/Aesthetic-GTK/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc)

## Requirements

- GTK `>=3.20`
- `gnome-themes-extra` (or `gnome-themes-standard`)
- Murrine engine — The package name depends on the distro.
  - `gtk-engine-murrine` on Arch Linux
  - `gtk-murrine-engine` on Fedora
  - `gtk2-engine-murrine` on openSUSE
  - `gtk2-engines-murrine` on Debian, Ubuntu, etc.
- `sassc` — build dependency


## Installation

### Manual Installation

Run the following commands in the terminal:

```sh
./install.sh -c dark --tweaks black rimless
```

> Tip: `./install.sh` allows the following options:

```
-d, --dest DIR          Specify destination directory (Default: ~/.themes)
-n, --name NAME         Specify theme name (Default: Aesthetic)
-t, --theme VARIANT...  Specify theme color variant(s) [default|purple|pink|red|orange|yellow|green|teal|grey|all] (Default: blue)
-c, --color VARIANT...  Specify color variant(s) [standard|light|dark] (Default: All variants)
-s, --size VARIANT...   Specify size variant [standard|compact] (Default: standard variant)
--tweaks                Specify versions for tweaks [black|rimless|normal] (only nord and dracula can not mix use with!)
                          1. black:    Blackness color version
                          2. rimless:  Remove the 1px border about windows and menus
                          3. normal:   Normal windows button style (titlebuttons: max/min/close)
-h, --help              Show help
```

> For more information, run: `./install.sh --help`
