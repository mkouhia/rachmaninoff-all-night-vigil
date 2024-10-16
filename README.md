# Sergei Rachmaninoff: All Night Vigil

Shield: [![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

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

## License

This edition is based on Muzgiz (ca. 1991) urtext edition
and H.W. Gray Co., 1920 English edition by Charles Winfred Douglas
both of which are available at
<https://imslp.org/wiki/All-Night_Vigil,_Op.37_(Rachmaninoff,_Sergei)>

Movements 1–7: based on transcription files by
© 2014 Брайан Майкл Эймс, used under Creative Commons Attribution-ShareAlike 4.0 license.

All-Night Vigil by Sergei Rachmaninoff is in Public Domain.

The edition and lyrics transcription © 2024 by M. I. Kouhia is licensed under
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
