# Custom NeoVim configuration
An attempt to use NeoVim as a Java IDE

### Basic features so far
1. Custom window management. 
  - Use C-h(j,k,l) in normal mode to switch between windows on a single tab
  - Use C-h(v) to open a new window to the right or under the current window
  - Use C-c to close the current window
  - Use C-arrows to resize the current window
2. Custom tab management
  - Use Alt-n in normal mode to open a new tab
  - Use Tab (Shift-Tab) to switch between open tabs
  - Use Alt-c to close the curent tab, use Alt+Shift+c to close all tabs but the current one
3. Better terminal emulator shortcuts
  - Use Alt+t to switch to the terminal mode and back in the current window
4. Markdown support
  - Syntax highlighting for .md files
  - Use :Glow to open a preview window, :Glow! or Esc to close it
5. Better and customizable status line. Use :AirlineTheme theme or set vim.g.airline_theme in
  the configuration to choose the status line theme.
6. Telescope. Use \ff or \fg in normal mode to open search interface
