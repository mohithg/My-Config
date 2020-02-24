function reload_config(files)
    hs.reload()
end
hs.pathwatcher.new("/Users/mohithg/.hammerspoon/init.lua", reload_config):start()
hs.alert.show("Config Re-loaded")