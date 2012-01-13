# Jose Elera's Vim Configuration

This is my Vim setup for Web Development with HTML, CSS and Javascript. It is
based on the .vimrc shared by [Amix.dk](http://amix.dk/blog/post/19486#The-ultimate-Vim-configuration-vimrc)

I've modified the following :

* Yi Zhao's Javascript syntax file to make the highlighting more appealing and easier to read to me.
* A customized version of `ir_black` color scheme, I've named it "nazca" (in honor to a [**very nice place in Peru**](http://en.wikipedia.org/wiki/Nazca)). It has a nice contrast.

## Requirements

* [Deja Vu Mono Font](http://dejavu-fonts.org/wiki/Main_Page) : Well, not really a requirement, but it is a great monospace font. You can change your font with changing in the `.vimrc` the following `set gfn=To\ your\ font\`
* [Git](http://git-scm.com/) : Of Course! :-D.
* [Vim 7.3](http://www.vim.org/download.php) : Make sure Vim is compiled with **Ruby**, **Python** and **Perl** Interp. 
* [Exhuberant Ctags](http://ctags.sourceforge.net/) : For OSX Users, upgrade it using Homebrew, Macports or Fink.

## Plugins Included

Even though I have all these plugins installed in my `.vim` directory, if you like any of them, please go to the vim script site, download it and vote for it.

*These plugins are installed in the `.vim\plugin`*.

* [Align.vim](http://www.vim.org/script.php?script_id=294) : Align text, eqns, declarations, tables, etc.
* [autoclose](http://www.vim.org/scripts/script.php?script_id=1849) : Inserts matching bracket, paren, brace or quote.
* [Vim Color Picker for GTK](http://www.vim.org/scripts/script.php?script_id=3224) : A simple color picker for VIM, based on GTK color chooser dialog.
* [Command-t.vim](http://www.vim.org/scripts/script.php?script_id=3025) : Fast file navigation for VIM *Ruby Interp Required*.
* [ctags.vim](http://www.vim.org/scripts/script.php?script_id=610) : Display function name in the title bar and/or the status line.
* [Endwise](http://www.vim.org/scripts/script.php?script_id=2386) : Wisely add "end" in ruby, endfunction/endif/more in vim script, etc.
* [hexHighlight.vim](http://www.vim.org/scripts/script.php?script_id=2937) : Highlight hex codes in graphical Vim.
* [hgrev.vim](http://www.vim.org/scripts/script.php?script_id=3144) : Display Mercurial revision info in the Vim statusline.
* [jsbeautify.vim](http://www.vim.org/scripts/script.php?script_id=2727) : a javascript source code formatter.
* [matchit.vim](http://www.vim.org/scripts/script.php?script_id=39) : extended % matching for HTML, LaTeX, and many other languages.
* [MiniBufExpl.vim](http://www.vim.org/scripts/script.php?script_id=159) : Elegant buffer explorer - takes very little screen space.
* [PickAColor.vim](http://www.vim.org/scripts/script.php?script_id=3026) : Inserts and edits color codes using a color name or a graphic color chooser.
* [taglist](http://www.vim.org/scripts/script.php?script_id=273) : Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
* [TaskList](http://www.vim.org/scripts/script.php?script_id=2607) : Eclipse like task list, like FIXME, TODO and XXX (or a custom list)
* [Rainbow Parenthesis](http://www.vim.org/scripts/script.php?script_id=1230) : Highlight matching parens in a rainbow of colors.
* [YankRing](http://www.vim.org/scripts/script.php?script_id=1234) : Maintains a history of previous yanks, changes and deletes.

*These following plugins are installed as git submodules in `~/.vim/bundle` with the [Pathogen Plugin](http://www.vim.org/scripts/script.php?script_id=2332)*

* [ack.vim](http://www.vim.org/scripts/script.php?script_id=2572) : Plugin for the Perl module / CLI script 'ack' replacement for grep
* [auto_mkdir](http://www.vim.org/scripts/script.php?script_id=3352) : Allows you to save files into directories that do not exist yet.
* [gundo](http://sjl.bitbucket.org/gundo.vim/) : Graph your Vim undo tree in style.
* [jslint.vim](http://www.vim.org/scripts/script.php?script_id=2729) : Check JavaScript files for errors with JSLint.
* [neocomplcache](http://www.vim.org/scripts/script.php?script_id=2620) : Ultimate auto completion system for Vim.
* [NERDCommenter](http://www.vim.org/scripts/script.php?script_id=1218) : A plugin that allows for easy commenting of code for many filetypes.
* [NERDtree](http://www.vim.org/scripts/script.php?script_id=1658) : A tree explorer plugin for navigating the filesystem.
* [rvm](http://www.vim.org/scripts/script.php?script_id=3134) : Adds RVM integration to Vim. Which active Ruby is being used shown in the status line.
* [syntastic](http://www.vim.org/scripts/script.php?script_id=2736) : Automatic syntax checking.
* [Fugitive](http://www.vim.org/scripts/script.php?script_id=2975) : A Git wrapper so awesome, it should be illegal.
* [Vim-Git](http://www.vim.org/scripts/script.php?script_id=1654) : Git runtime files .
* [Indent-guides](http://www.vim.org/scripts/script.php?script_id=3361) : A plugin for visually displaying indent levels in Vim.
* [ragtag](http://www.vim.org/scripts/script.php?script_id=1896) : A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more (formerly allml).
* [rails.vim](http://www.vim.org/scripts/script.php?script_id=1567) : Ruby on Rails: easy file navigation, enhanced syntax highlighting, and more.
* [vim-rdoc](http://www.vim.org/scripts/script.php?script_id=2878) ; Syntax highlight for Ruby Documentation.
* [Surround](http://www.vim.org/scripts/script.php?script_id=1697) : Delete/change/add parentheses/quotes/XML-tags/much more with ease.
* [Tabular.vim](http://www.vim.org/scripts/script.php?script_id=1697) : Vim script for text filtering and alignment
* [xmledit](http://www.vim.org/scripts/script.php?script_id=301)  : A filetype plugin to help edit XML, HTML, and SGML documents.
* [zencoding](http://www.vim.org/scripts/script.php?script_id=2981) : vim plugins for HTML and CSS hi-speed coding.

## Post-Installation

Run these commands in your terminal :

		$ git submodule init
		$ git submodule update
