# USAGE OF VIM

# Normal

## file directory

| Key         | Action                                |
|-------------|---------------------------------------|
| `cp`        | compare file                          |
| `tt`        | open the directory of the file(cover) |
| `<space>rc` | open vimrc                            |
| `<space>td` | open my vim todo                      |

## tab management

| Key  | Action                      |
|------|-----------------------------|
| `nf` | new tab with file selection |
| `tb` | new tab                     |
| `th` | tab left                    |
| `tl` | tab right                   |

## searching

| Key           | Action                                    |
|---------------|-------------------------------------------|
| `-`           | search last and keep cursor at the center |
| `=`           | search next and keep cursor at the center |
| `<space><CR>` | no highlight search                       |

## fuzzy file finder

| Key        | Action            |
|------------|-------------------|
| `:FZF<CR>` | fuzzy file finder |

## figlet

| Key  | Action                   |
|------|--------------------------|
| `gx` | insert figlet characters |

## split screen

| Key              | Action                             |
|------------------|------------------------------------|
| `sl`             | new file on the left screen        |
| `su`             | new file on the top half screen    |
| `sr`             | open the current file on the right |
| `<space>h`       | move cursor left                   |
| `<space>l`       | move cursor right                  |
| `<space>j`       | move cursor half screen down       |
| `<space>k`       | move cursor half screen up         |
| `<left>`         | narrow the screen with cursor      |
| `<right>`        | widen the screen with cursor       |
| `(option)<up>`   | adjust the size of the half screen |
| `(option)<down>` | adjust the size of the half screen |
| `(option)sh`     | vsplit to split                    |
| `(option)sv`     | split to vsplit                    |

## shortcut for quickly move and save

| Key             | Action                                           |
|-----------------|--------------------------------------------------|
| `K`             | 5k                                               |
| `J`             | 5j                                               |
| `W`             | 5w                                               |
| `B`             | 5b                                               |
| `H`             | cursor to the start of the line                  |
| `L`             | cursor to the end of the line                    |
| `>`             | >> for the current line and >gv for visual lines |
| `<`             | << for the current line and <gv for visual lines |
| `(default)==`   | auto indent                                      |
| `(option)S`     | :w<CR>                                           |
| `(option)Q`     | :q<CR>                                           |
| `s`             | no action                                        |
| `;`             | :                                                |
| `(option)<C-l>` | <esc>                                            |

## spell check in English

| Key         | Action                                          |
|-------------|-------------------------------------------------|
| `<space>se` | check spell of English                          |
| `z=`        | look up the correct choices of wrong spell word |
| `<C-x>`     | show word options                               |

## compile and run

| Key  | Action                                                   |
|------|----------------------------------------------------------|
| `f5` | compile and run                                          |
| `f8` | lldb debug                                               |
| `tr` | open a terminal in vim(open on the top)(<ctrl>d to quit) |

## dress up vim

| Key        | Action                                          |
|------------|-------------------------------------------------|
| `sn`       | color theme as snazzy and airline theme as soda |
| `sd`       | color theme as deus and airline theme as deus   |
| `(option)` | airline symbols for powerline font              |

## nerdtree

| Key  | Action   |
|------|----------|
| `nt` | nerdtree |

#### File node mappings

##### double click

| Key  | Action                   |
|------|--------------------------|
| `o`  | open in prev window      |
| `go` | preview                  |
| `t`  | open in new tab          |
| `T`  | open in new tab silently |

##### middle click

| Key    | Action         |
|--------|----------------|
| `i`    | open split     |
| `gi`   | preview split  |
| `s`    | open vsplit    |
| `gs`   | preview vsplit |
| `<CR>` | custom open    |

#### Directory node mappings

##### double click

| Key    | Action                                            |
|--------|---------------------------------------------------|
| `o`    | open & close node                                 |
| `O`    | recursively open node                             |
| `t`    | open in new tab                                   |
| `T`    | open in new tab silently                          |
| `<CR>` | custom open                                       |
| `x`    | close parent of node                              |
| `X`    | close all child nodes of current node recursively |

##### middle click

| Key | Action                     |
|-----|----------------------------|
| `e` | explore selected directory |

#### Bookmark table mappings

##### double click

| Key    | Action                   |
|--------|--------------------------|
| `o`    | open bookmark            |
| `go`   | preview file             |
| `go`   | find dir in tree         |
| `t`    | open in new tab          |
| `T`    | open in new tab silently |
| `<CR>` | custom open              |
| `D`    | delete bookmark          |

#### Tree navigation mappings

| Key     | Action             |
|---------|--------------------|
| `P`     | go to root         |
| `p`     | go to parent       |
| `K`     | go to first child  |
| `J`     | go to last child   |
| `<C-j>` | go to next sibling |
| `<C-k>` | go to prev sibling |

#### Filesystem mappings

| Key  | Action                                          |
|------|-------------------------------------------------|
| `C`  | change tree root to the selected dir            |
| `u`  | move tree root up to a dir                      |
| `U`  | move tree root up a dir but leave old root open |
| `r`  | refresh cursor dir                              |
| `R`  | refresh current root                            |
| `m`  | show menu                                       |
| `cd` | change the CWD to the selected dir              |
| `CD` | change tree root to CWD                         |

#### Tree filtering mappings

| Key | Action            |
|-----|-------------------|
| `I` | hidden file (off) |
| `f` | file filters (on) |
| `F` | files (on)        |
| `B` | bookmark (off)    |

#### Other mappings

| Key | Action                                       |
|-----|----------------------------------------------|
| `q` | close the NERDTree window                    |
| `A` | zoom (maximize-minimize) the NERDTree window |
| `?` | toggle help                                  |

#### Bookmark commands

| Command                  |
|--------------------------|
| `:Bookmark [<name>]`     |
| `:BookmarkToRoot <name>` |
| `:RevealBookmark <name>` |
| `:OpenBookmark <name>`   |
| `:ClearAllBookmarks`     |
| `:ReadBookmarks`         |
| `:WriteBookmarks`        |
| `:EditBookmarks`         |

## dictionary

| Key               | Action                                |
|-------------------|---------------------------------------|
| `:Dictionary<CR>` | open a dictionary in vim for markdown |

## clang format

| Key         | Action                        |
|-------------|-------------------------------|
| `<space>fm` | format as visual studio style |

## goyo

| Key         | Action    |
|-------------|-----------|
| `<space>gy` | open goyo |

## table mode

| Key         | Action                  |
|-------------|-------------------------|
| `<space>tm` | open & close table mode |

## multiple cursor

| Key      | Action              |
|----------|---------------------|
| `<C-n>`  | start word key      |
| `<A-n>`  | select all word key |
| `g<C-n>` | start key           |
| `g<A-n>` | select all key      |
| `<C-n>`  | next key            |
| `<C-p>`  | prev key            |
| `<C-x>`  | skip key            |
| `<esc>`  | quit key            |

## surround

| Key       | Action                               |
|-----------|--------------------------------------|
| `ysW"`    | wrap the word with ""                |
| `cs`"`    | change `word` to "word"              |
| `cs"<q>`  | change "" to <q></q>                 |
| `ds"`     | delete "" surrounding                |
| `dst`     | delete tags surrounding              |
| `v(n)lS'` | add '' surrounding the word selected |

## commentary

| Key   | Action                          |
|-------|---------------------------------|
| `gc`  | comment or delete(visual mode)  |
| `gcc` | comment or delete(current line) |

## useful tools

| Key                 | Action                                         |
|---------------------|------------------------------------------------|
| `(option)<space>dw` | delete duplicate words                         |
| `(option)<space>tt` | space to tab(both normal mode and visual mode) |
| `(option)<space>r`  | replace word                                   |

## bookmark

| Key          | Action                                                                                      |
|--------------|---------------------------------------------------------------------------------------------|
| `mx`         | Toggle mark `x` and display it in the leftmost column                                       |
| `dmx`        | Remove mark `x` where x is a-zA-Z                                                           |
| `m,`         | Place the next available mark                                                               |
| `m,`         | If no mark on line, place the next available mark. Otherwise, remove (first) existing mark. |
| `m-`         | Delete all marks from the current line                                                      |
| `m<space>`   | Delete all marks from the current buffer                                                    |
| `]``         | Jump to next mark                                                                           |
| `[``         | Jump to prev mark                                                                           |
| `]``         | Jump to start of next line containing a mark                                                |
| `[``         | Jump to start of prev line containing a mark                                                |
| ``]`         | Jump by alphabetical order to next mark                                                     |
| ``[`         | Jump by alphabetical order to prev mark                                                     |
| ``]`         | Jump by alphabetical order to start of next line having a mark                              |
| ``[`         | Jump by alphabetical order to start of prev line having a mark                              |
| `m/`         | Open location list and display marks from current buffer                                    |
| `m[0-9]`     | Toggle the corresponding marker (something wrong)                                           |
| `m<S-[0-9]>` | Remove all markers of the same type                                                         |
| `]-`         | Jump to next line having a marker of the same type                                          |
| `[-`         | Jump to prev line having a marker of the same type                                          |
| `]=`         | Jump to next line having a marker of any type                                               |
| `[=`         | Jump to prev line having a marker of any type                                               |
| `m?`         | Open location list and display markers from current buffer                                  |
| `m<BS>`      | Remove all markers                                                                          |

## switch

| Key  | Action                        |
|------|-------------------------------|
| `gs` | switch between true and false |

## taglist

| Key                       | Action                                                                                        |
|---------------------------|-----------------------------------------------------------------------------------------------|
| `tl`                      | Tlist open & close                                                                            |
| `o`                       | jump to the tag in a new window                                                               |
| `p`                       | jump to the tag but still keep the cursor in the taglist window                               |
| `P`                       | open the file in the preview window                                                           |
| `t`                       | open the select file in a tab. if the file is already present in a tab, then only cursor move |
| `<Ctrl>t`                 | jump to a tag in a new tab                                                                    |
| `<Enter> or double click` | open the file(jump to the tag)                                                                |
| `[[ or <backspace>`       | jump to the beginning of the previous file                                                    |
| `]] or <tab>`             | jump to the begin of the next file                                                            |
| `R`                       | reload the current file                                                                       |

## undotree

| Key     | Action            |
|---------|-------------------|
| `nd`    | undotree          |
| `>num<` | the current stats |
| `{
    num}` | the next redo state                    |
| `[num]` | the lastest state                      |
| `s`     | saved states                           |
| `S`     | the last saved state                   |
| `<CR>`  | move to the current state              |
| `u`     | undo                                   |
| `<C-r>` | redo                                   |
| `<`     | move to the previous saved state       |
| `>`     | move to the next saved state           |
| `J`     | move to the previous undo state        |
| `K`     | move to the next undo state            |
| `D`     | toggle the diff panel                  |
| `T`     | toggle relative timestamp              |
| `C`     | clear undo history (with confirmation) |
| `<tab>` | set focus back to the editor           |
| `q`     | close undotree panel                   |
| `?`     | toggle quick help                      |

## ale

| Key   | Action        |
|-------|---------------|
| `]a`  | next wrap     |
| `[a` | previous wrap |

#Insert

## shortcut for quickly move

| Key       | Action                    |
|-----------|---------------------------|
| `<ctrl>c` | keep cursor at the center |

## auto match

| Key     | Action     |
|---------|------------|
| `({["`` | auto match |

## clever tab

| key      | action                          |
|----------|---------------------------------|
| `<esc>N` | auto completion and choose next |

## markdown shortcut

| key  | action                                             |
|------|----------------------------------------------------|
| `;f` | find the next <++> and rewrite it                  |
| `;w` | find the next <++>, delete and go to the next line |
| `;n` | divided line                                       |
| `;b` | bold text                                          |
| `;s` | sliced text                                        |
| `;i` | italic text                                        |
| `;d` | code block                                         |
| `;c` | big block of code                                  |
| `;h` | highlight text                                     |
| `;m` | check mark                                         |
| `;p` | picture                                            |
| `;a` | link                                               |
| `;1` | # headline1                                        |
| `;2` | ## headline2                                       |
| `;3` | ### headline3                                      |
| `;4` | #### headline4                                     |
| `;5` | ##### headline5                                    |
| `;6` | ###### headline6                                   |
| `;l` | --------                                           |
| `td` | highlight TODO and jump(in normal mode)            |

## snipmate

| key               | action                             |
|-------------------|------------------------------------|
| `<tab>`           | snippets of code and next position |
| `<shift><tab>`    | last position of snippet           |
| `(option)<ctrl>j` | instead of <tab>                   |
| `(option)<ctrl>k` | instead of <shift><tab>            |

#Visual

| key   | action                                     |
|-------|--------------------------------------------|
| `Y`   | put the selection into the paste of system |
| `"p`  | paste from system paste                    |
| `"gp` | paste and move to the end                  |

#Template

| Key    | Action |
|--------|--------|
| `<++>` | <++>   |
| `<++>` | <++>   |
| `<++>` | <++>   |

[⇐Back VIM](vim.md)

[⇐Back Homepage](../index.md)
