local config = require('config')

-- Clipboard Manager
hs.loadSpoon('ClipboardTool')
spoon.ClipboardTool.hist_size = 1000
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

---- Window Manager
local hyper = config.keys.ctacms

hs.loadSpoon("MiroWindowsManager")

hs.window.animationDuration = 0.3
spoon.MiroWindowsManager:bindHotkeys({
  up = {hyper, "up"},
  right = {hyper, "right"},
  down = {hyper, "down"},
  left = {hyper, "left"},
  fullscreen = {hyper, "f"}
})
------- Window Manager end

---- Seal
hs.loadSpoon('Seal')
spoon.Seal:bindHotkeys({ show = { {"cmd"}, "space" } })
spoon.Seal:loadPlugins({"apps", "calc", "useractions", "urlformats", "pasteboard", "screencapture"})
spoon.Seal.plugins.pasteboard.historySize=4000
spoon.Seal.plugins.urlformats:providersTable({
	dom = { name = "DOMINO Jira", url = "https://dominodatalab.atlassian.net/browse/DOM-%s", },
	dompr = { name = "DOMINO PRs", url = "https://github.com/cerebrotech/domino/pull/%s", },
})
spoon.Seal.plugins.screencapture.showPostUI=true
spoon.Seal.plugins.useractions.actions = {
    ["AMG"] = { url = "https://dominodatalab.atlassian.net/secure/RapidBoard.jspa?projectKey=DOM&rapidView=223", icon="favicon", keyword="amg" },
    ["Domino my prs"] = { url = "https://github.com/cerebrotech/domino/pulls", icon="favicon", keyword="prs" },
}
spoon.Seal:refreshAllCommands()
spoon.Seal:start()
--- Seal end