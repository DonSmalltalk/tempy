 " An Example of a Minimal vimrc File with Important Options
  " and Settings
  " Maintainer:  https://vimandgit.com
  " See https://vimandgit.com for a full explanation of the settings
  """
  " disable Vi compatibility
  set  nocompatible
  syntax on

  """
  " turns on filetype detection, which invokes the plugins for
  " specific filetypes - this setting enables the installed plugins
  " NOTE that the filetype plugin handles setup of the 'suffixesadd'
  " and 'path' options for us
  filetype  plugin on
  " enable language-dependent indenting
  filetype  plugin indent on

  """
  " PATH SETTINGS
  " the filetype plugin removes the . and ,, directories from the
  " path and this makes the gf (goto file) command fail - we can
  " inspect the value of the path by running :set path?
  """
  " search relative to the directory of the current file
  set  path+=.
  " search in the working directory
  set  path+=,,
  " NOTE: we could have done this with a single set statement:
  " set path+=.,,,

  """
  " increase the list of items in command history from 50 to 300
  " :history lists your Command Line history (see :h :history)
  set  history=300

  """
  " show line numbers - this setting makes it possible for us to
  " distinguish between real lines and soft wrapped *display lines*
  " when the 'wrap' setting is enabled
  " set  number

  """
  " this tells Vim to wrap long lines to fit the window-this is
  " on by default - to turn off the 'wrap' setting inside Vim,
  " use :set nowrap and use :set invwrap or :set wrap! to toggle
  " the 'wrap' setting
  set  wrap

  """
  " NOTE: to get Vim to auto wrap at 80 characters, we can use
  " :set textwidth=80 then return to Normal mode with <Esc> and
  " press gggwG - in summary, gg jumps to the start of the buffer,
  " gw invokes the format operator, and G is a motion that takes
  " us to the last line in the current buffer - Note: that texwidth
  " is automatically set by the filetype plugin
  """

  """
  " show the currently active mode on the last line in the lower
  " left corner of the window-this setting is on by default - this
  " works with Insert, Replace, and Visual modes - you can set the
  " highlight for this mode message, in the GUI, like this
  " hi ModeMsg gui=bold guifg=#000000 guibg=#f3f2ae
  set  showmode

  """
  " show the line number and column number of the cursor on the last
  " line in the lower right corner of the window, and if there is
  " room, the relative position of the displayed text in the file -
  " the ruler is only shown if the 'statusline' is empty or there's
  " no 'statusline'
  set  ruler

  """
  " always show the status line
  set  laststatus=2

  """
  " show the incomplete Normal mode command on the last line in the
  " lower right corner of the window, below of the ruler - in Visual
  " mode, the size of the selected area is shown - you can also use
  " g<C-g> in Visual mode (see :h v_g_CTRL-G) to show the number of
  " lines, words, chars, and bytes that are selected
  set  showcmd

  """
  " always show the number of lines changed
  set  report=0

  """
  " treat all numbers as decimal, even if they are padded with
  " leading zeros
  set  nrformats-=octal

  """
  " the 'wildmenu' option provides a list of suggestions that we
  " can navigate with <Tab> and <S-Tab> (this is similar to the
  " autocomplete menu in zsh)
  set  wildmenu
  set  wildmode=full

  """
  " without the 'hidden' setting enabled, we have to use a ! to
  " navigate away from a modified buffer - the ! symbol tells Vim
  " to discard any changes we made to the buffer - enabling this
  " 'hidden' setting makes Vim hide the modified buffer, so that
  " we can navigate away from it without the ! symbol
  set  hidden

  """
  " highlight the line the cursor is on with the CursorLine color
  "set  cursorline

  """
  " highlight the column the cursor is on with CursorColumn color
  "set  cursorcolumn

  """
  " highlight column 80 with the color specified in ColorColumn
  "set  colorcolumn=80

  """
  " set unix line terminators (\n) - to change line terminators
  " inside Vim to Windows (\r\n), use :set fileformat=dos
  set  fileformat=unix

  """
  " chars to show for non-breakable space, tabs, trailing space,
  " end of line, precedes, and extends (see :h 'listchars') - you
  " can hide these chars by running :set nolist and you can toggle
  " between them with :set invlist or :set list!
  set  nolist
  set  listchars=nbsp:%,tab:▸\ ,trail:_,eol:¬,precedes:←,extends:→

  """
  " use :set invspell or :set spell! to toggle spell checking
  set  spelllang=en_us

  """
  " this makes searches CASE-INSENSITIVE - to enable CASE SENSITIVE
  " search, use :set noignorecase or :set invignorecase
  set  ignorecase

  """
  " when doing keyword completion in Insert mode, the 'infercase'
  " option adjusts the case of the match depending on the case of
  " the typed text (see :h 'infercase')
  set  infercase

  """
  " don't insert two spaces after a period when joining lines
  set  nojoinspaces

  """
  " highlight search matches in the active window and split windows
  set  hlsearch

  """
  " highlights search matches in real time as they are typed out
  set  incsearch

  """
  " when a bracket is inserted, briefly jump to the matching one
  " if it can be seen on the same screen
  set  showmatch
  " show the matching bracket for 4/5 of a sec when 'showmatch' is
  " set - default value is 5 (1/2 a sec)
  set  matchtime=8

  """
  " tab settings:
  " tabstop (default 8) dictates the width of a <Tab> char
  """
  " expandtab (default 'noexpandtab')
  " when this is enabled, Vim inserts spaces in place of tabs -
  " disable this with :set noet if you prefer to use tabs
  """
  " softtabstop (default 0)
  """
  " shiftwidth (default 8)
  " shiftwidth is number of whitespace to insert or remove when
  " using the >> and << indentation commands in Normal mode
  set  tabstop=4 softtabstop=4 shiftwidth=4 expandtab

  """
  " colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " colorscheme, options for GUI
  if has("gui_running")
    " this font setting works in macOS
    " use :set guifont=* to select a gui font and :set guifont? to
    " reveal the current gui font
    """
    """
    " change this to whatever colorscheme you like -
    " use :colorscheme to show the active colorscheme
    colorscheme desert
  else
    " use a 256 color colorscheme
  endif
  """

  " An Example of a Minimal Vim statusline with Important Options
  " and Settings - an Nice Vim statusline for Beginners
  " Maintainer:  https://vimandgit.com
  " See https://vimandgit.com for a full explanation of the settings
  """
  " pad one space
  set  statusline=%1(%)

  " display the id of the current buffer %n and the total number
  " of buffers - see :h getbufinfo() for more information
  let  mybuflisted = {'buflisted':1}
  set  statusline+=B#:%-2.4n[%-2.4{len(getbufinfo(mybuflisted))}]

  " display the filename: %t is the tail of file in the current
  " buffer - left justify with min width of 6 chars and max width
  " of 30 chars
  set  statusline+=\ %-6.30t

  " display the preview window %w as "[Preview]"
  set  statusline+=%(\ %w%)

  " display the fileformat &ff and file encoding &fenc -
  " or display "none" if &fenc is ''
  set  statusline+=\ [%{&ff}\ -\ %{strlen(&fenc)?&fenc:'none'}]

  " display the filetype %y in the buffer - for example "[vim]"
  " see :h 'filetype' for more information
  set  statusline+=%(\ %y%)

  " the separation point between the left and right aligned items
  " is marked by %=
  set  statusline+=%=

  " display the readonly flag %r as "[RO]", and the modified flag %m
  " as "[+]" if modified or "[-]" if 'modifiable' is off
  set  statusline+=%(\ %r\ %m%)

  " display the column number %c in the current real line,
  " zero padded with a min of 3 digits and a max of 4 digits
   set  statusline+=\ COL:\ %03.4c

  " display the line number %l and the total number of lines %L
  " in the current buffer
  set  statusline+=\ %5.7l\ of\ %-5.7L

  " %p shows the relative pos of the displayed text in the current
  " buffer - like pressing <C-g> in Normal mode - zero pad with min
  " width of 3 chars and add a % symbol at the end - the % symbol
  " is escaped with another % symbol - that is why there are two %
  " symbols %% after the %p item
  set  statusline+=\ %03p%%

  " display the word count in the curr. buffer - see :h wordcount()
  set  statusline+=\ %10.6{wordcount().words}\ WORDS

  " pad two spaces
  set  statusline+=%2(%)

  " display the ASCII value %b and HEX value %B of char under cursor
  set  statusline+=[ASCII=%-4b\ HEX=%-4B]

  " pad one space
  set  statusline+=%1(%)
  """
