// For more information on customizing Oni,
// check out our wiki page:
// https://github.com/extr0py/oni/wiki/Configuration

const activate = (oni) => {
    // Input
    //
    // Add input bindings here:
    //
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};

const deactivate = () => {

};

module.exports = {
  activate,
  deactivate,
  //add custom config here, such as
  //"oni.bookmarks": ["~/Documents",]
  "oni.useDefaultConfig": false,
  "oni.exclude": ["**/node_modules/**","**/dist/**"],
  "oni.hideMenu": true,
  "oni.loadInitVim": true,
  "oni.quickInfo.enabled": false,
  "oni.quickInfo.delay": 1000,
  "autoClosingPairs.enabled": false,
  // "oni.useExternalPopupMenu": true,
  "editor.fontSize": "14px",
  "editor.linePadding": 2,
  // "editor.fontFamily": "Aix",
  "editor.fontFamily": "Fantasque Sans Mono",
  "editor.backgroundOpacity": 1,
  "editor.cursorColumn": true,
  "ui.fontSize": "11px",
  "ui.fontFamily": "PragmataPro Mono",
  "statusbar.fontSize": "12px",
  "tabs.mode": "tabs",
  "tabs.height": "2em",
  "ui.colorscheme": "J",
  // "editor.scrollBar.visible": false
  "language.go.languageServer.command": "go-langserver",
  "language.python.languageServer.command": "pyls"
};
