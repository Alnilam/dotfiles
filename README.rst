========
dotfiles
========

-----------
What is it?
-----------

Should be pretty self-explanatory - a handful of my configuration files such as:

* .zshrc
* .vimrc
* .screenrc

-----
Notes
-----

Some possible additions I may make in the future, or references I find useful:

Various .vimrc stuff
====================

http://www.reddit.com/r/linux/comments/9zq8h/vim_users_what_are_some_interesting_hacks_or

.. code:: vim

    Besides the things others have said, one thing that's nice to have in your vimrc is a few autocommands so you can use vim as a viewer for when silly people send you stupid file formats, my vimrc contains:
    " Read-only .doc through antiword
    autocmd BufReadPre *.doc silent set ro
    autocmd BufReadPost *.doc silent %!antiword "%"

    " Read-only odt/odp through odt2txt
    autocmd BufReadPre *.odt,*.odp silent set ro
    autocmd BufReadPost *.odt,*.odp silent %!odt2txt "%"

    " Read-only pdf through pdftotext
    autocmd BufReadPre *.pdf silent set ro
    autocmd BufReadPost *.pdf silent %!pdftotext -nopgbrk -layout -q -eol unix "%" - | fmt -w78

    " Read-only rtf through unrtf
    autocmd BufReadPre *.rtf silent set ro
    autocmd BufReadPost *.rtf silent %!unrtf --text


reStructuredText
================

http://www.programmerq.net/rsttricks.html#id3

riv
---
A vim plugin for restructuredtext work
https://github.com/Rykka/riv.vim/blob/master/doc/riv_quickstart.rst
