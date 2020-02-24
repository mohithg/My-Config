local utils = require('utils')
local config = require('config')

function applicationWatcher(appName, eventType, appObject)
  if (eventType == hs.application.watcher.launched) then
  	print(appName)
  	local appsToMoveToNewScreen = {"terminal", "chrome", "slack", "iterm"}
  	local configForApps = utils.map(appsToMoveToNewScreen, function(app) return matchStringToRegex(appName, app) end)
    if (utils.has_value(configForApps, true)) then
    	local window = appObject:mainWindow()
    	local tries = 0
    	while (tries < 5 and window == nil)
		do
    		window = appObject:mainWindow()
    		sleep(3)
    		tries = tries + 1
		end
		window:setFullScreen(false)
		utils.sleep(1)
    	window:moveToScreen(hs.screen.find(config.monitors.secondary2kScreen))
    	window:setFullScreen(true)
    end
  end
end


function matchStringToRegex(stringToMatch, regexText)
	return string.match(stringToMatch:lower(), string.format("%s", regexText:lower())) ~= nil
end

appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()