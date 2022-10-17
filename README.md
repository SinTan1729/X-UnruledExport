# X-UnruledExport

A plugin to directly export unruled PDF from Xournal++ using a shortcut.

# Usage

Create a directory `/usr/share/xournalapp/plugins/UnruledExport/` and place `plugin.ini` and `main.lua` in it. Then enable the plugin "ExportUnruled" in the Plugin menu and restart. There should be a new option in Plugin menu now for exporting directly as unruled PDF and you can also do it using the shortcut <kbd>Alt</kbd>+<kbd>U</kbd>.

# Notes

- Doesn't work with the latest stable release of Xournal++ yet, as the `export` api hasn't shipped ([relevant PR](https://github.com/xournalpp/xournalpp/pull/3566)). You'll need to build from source in order to use it.

- [Xournal++](https://github.com/xournalpp/xournalpp/) is an excellent app for hand note-taking.

- This is basically a modified version of [Export Plugin](https://github.com/xournalpp/xournalpp/tree/master/plugins/Export).
