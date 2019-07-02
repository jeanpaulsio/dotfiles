# VS Code setup

**Enables VS code from CLI**

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

**Dracula Theme**
https://draculatheme.com/visual-studio-code/

**Extensions**

- vim
- vimL
- vscode-viml-syntax
- git lens
- prettier
- react native tools - https://marketplace.visualstudio.com/items?itemName=vsmobile.vscode-react-native

**Other**

Make the search not shitty

- search settings for "search location"
- change from `sidebar` to `panel`

**keybindings**

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

**settings**

```
{
  "editor.fontFamily": "Operator Mono",
  "search.location": "panel",
  "editor.formatOnSave": true,
  "prettier.eslintIntegration": true,
  "editor.tabSize": 2,
  "editor.detectIndentation": false,
  "editor.minimap.enabled": true,
  "window.zoomLevel": 1
}

```
