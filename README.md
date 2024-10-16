# Sergei Rachmaninoff: All Night Vigil

This repository contains Lilypond engraving files for Rachmaninoff's All Night
Vigil.

## TODO
**Work is in progress**

### Typesetting
- Decide text font (Charis SIL, Gentium Plus, some other?), compare to Lilypond default
- Decide on chords vs voices

## Reproducible development environment

Included is a `shell.nix` file for the [Nix ecosystem](https://nix.dev/). It
includes pinned Lilypond version, text font and Typst for compiling the
additional material. See [the tutorial](https://nix.dev/tutorials/first-steps/)
if required.

To enter the shell environment, run

    nix-shell

To compile the score, run

    lilypond rahmaninov_op37_all-night-vigil.ly

and to compile the extra material, run

    typst compile vigilia_käännös.typ
