local config = require('config')

-- Clipboard Manager
hs.loadSpoon('ClipboardTool')
spoon.ClipboardTool.hist_size = 100
spoon.ClipboardTool.show_in_menubar = false
spoon.ClipboardTool:start()
spoon.ClipboardTool:bindHotkeys({
  toggle_clipboard = {config.keys.acm, 'c'}
})
-- Clipboard Manager end
hs.loadSpoon('Lunette')
local customBindings = {
	center = false,
	fullScreen = false
}
spoon.Lunette:bindHotkeys(customBindings)

---- Seal
hs.loadSpoon('Seal')
spoon.Seal:bindHotkeys({ show = { {"cmd"}, "space" } })
spoon.Seal:loadPlugins({"apps", "calc", "useractions", "pasteboard"})
spoon.Seal.plugins.pasteboard.historySize=4000
spoon.Seal.plugins.useractions.actions = {
    ["DOMINO Jira"] = { url = "https://dominodatalab.atlassian.net/browse/DOM-${query}", icon="favicon", keyword="dom" },
    ["DMM Jira"] = { url = "https://dominodatalab.atlassian.net/browse/DMM-${query}", icon="favicon", keyword="dmm" },
    ["DMM Git API Backend"] = { url = "https://github.com/cerebrotech/dmm-api-backend", icon="favicon", keyword="git-dmm-backend" },
    ["DMM Git Crux"] = { url = "https://github.com/cerebrotech/dmm-crux", icon="favicon", keyword="git-dmm-crux" },
}
spoon.Seal:refreshAllCommands()
spoon.Seal:start()
--- Seal end