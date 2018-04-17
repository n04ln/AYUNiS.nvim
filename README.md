# AYUNiS.nvim
All YoU Need Is Spotify

## Require
- go >= 1.9.1
- [Shougo/dein.vim](https://github.com/Shougo/dein.vim) (Plugin Manager)

## Installation
1. Plz write below code in `$XDG_CONFIG_HOME/nvim/init.vim` if you use dein.vim
``` vim
call dein#add("NoahOrberg/AYUNiS.nvim")
```

2. `:call dein#update()`

3. execute `$ go get -u github.com/NoahOrberg/AYUNiS.nvim` because install binary

4. Let's Enjoy `AYUNiS.nvim` Life!

## Usage
### Get the name of the song that is playing now
``` vim
:echo AYUNiSGetNowPlaying()
```
if you want to add to `statusline`, plz set as below
``` vim
" default
set statusline+=%!AYUNiSGetNowPlaying()

" use airline
let g:airline_section_x = airline#section#create(['%{AYUNiSGetNowPlaying()}'])
```

### Next Track
``` vim
:call AYUNiSNext()
```
or `<C-s>l` in normal mode

### Prev Track
``` vim
:call AYUNiSPrev()
```
or `<C-s>h` in normal mode

### Toggle Play & Pause
``` vim
:call AYUNiSToggle()
```
or `<C-s>t` in normal mode

