local AppWatcher = require('appWatcher')
local Reload = require('reload')
local Modules = require('loadModules')
local config = require('config')
local WindowManagement = require('windowManagement')


hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
	testCallbackFn = function(result) hs.alert("Callback Result: " .. result) end 
	-- hs.dockicon.hide()
	local chooser = hs.chooser.new(testCallbackFn)
	chooser:show()
	-- hs.dialog.alert(100, 100, testCallbackFn, "Message", "Informative Text", "Button One", "Button Two", "NSCriticalAlertStyle")

	-- hs.dialog.alert(200, 200, testCallbackFn, "Message", "Informative Text", "Single Button")

	hs.speech.new():speak("Shut up")
    hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

