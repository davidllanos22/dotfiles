# Dotfiles

- Set $XDG_CONFIG_HOME to C:\dotfiles
- Add C:\dotfiles\scripts to $PATH
- Download plug.vim and put it in the nvim\autoload directory

# Vim shortcuts

- `Ctrl-n` Autocomplete
- `Ctrl-p` Search file and open
- `Ctrl-b` Toggle NERDTree

# Vim commands

- `:b $buffer` Change to opened buffer
- `:e $file` Open new file
- `:! $command` Execute terminal command
- `/$pattern` Search pattern in buffer. Enter to seach. n for next, N for previous. 
- `:noh` Clear last seach highlighting
- `:bd ` Remove current buffer

## Comment

- Press `Ctrl-v` and select lines with cursor
- Press `Shift-i` and insert the comment character
- Press `Esc`

## Uncomment

- Press `Ctrl-v` , press right to select all comment characters and down to select all lines
- Press `x` to remove all selected text
