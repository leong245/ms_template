# ms_template: LaTeX manuscript template

Make `ms.pdf` on the command line via

    make

To make a the version using PNAS format:

    make ms_pnas.pdf

## BibTeX style files (.bst)

You can figure out where .bst files are stored via, e.g.,

    kpsewhich vancouver.bst

In order for `bibtex` to find `pnas-new.bst`, it needs to be in this
folder, hence the symbolic link to the place it actually lives.

## LaTeX tips

- [Creating .bib file containing only the cited references of a bigger .bib file](https://tex.stackexchange.com/questions/41821/creating-bib-file-containing-only-the-cited-references-of-a-bigger-bib-file)

