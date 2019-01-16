# VS Code setup

__Enables VS code from CLI__

```zsh
function vs {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}
```


__Dracula Theme__
https://draculatheme.com/visual-studio-code/

__Extensions__

* vim
* vimL
* vscode-viml-syntax

__Other__

Make the search not shitty

* search settings for "search location"
* change from `sidebar` to `panel`


__keybindings__

```
[
  { "key": "ctrl+`", "command": "workbench.action.terminal.focus"},
  { "key": "ctrl+`", "command": "workbench.action.focusActiveEditorGroup", "when": "terminalFocus"},
  {
    "key": "shift+cmd+\\",
    "command": "workbench.files.action.showActiveFileInExplorer",
    "when": "editorTextFocus"
  }
]
```