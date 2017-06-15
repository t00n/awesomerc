local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local vicious = require("vicious")

-- {{{ Start CPU
cpuicon = wibox.widget.imagebox()
cpuicon:set_image(beautiful.widget_cpu)
--
cpu = wibox.widget.textbox()
vicious.register(cpu, vicious.widgets.cpu, "Tous: $1%  1: $2%  2: $3%  3: $4%  4: $5%", 2)
-- End CPU }}}
--
-- {{{ Start Mem
memicon = wibox.widget.imagebox()
memicon:set_image(beautiful.widget_ram)
--
mem = wibox.widget.textbox()
vicious.register(mem, vicious.widgets.mem, "RAM: $1%  Utilisée: $2MB/$3MB Swap: $5%", 2)
-- End Mem }}}
--
-- {{{ Start Wifi
wifiicon = wibox.widget.imagebox()
wifiicon:set_image(beautiful.widget_wifi)
--
wifi = wibox.widget.textbox()
vicious.register(wifi, vicious.widgets.wifi, "${ssid}  Débit: ${rate}Mb/s  Réception: ${link}%", 3, "wlp3s0")
-- End Wifi }}}

--Weather Widget
weather = wibox.widget.textbox()
vicious.register(weather, vicious.widgets.weather, "${city}:  Ciel: ${sky}  T°: ${tempc}°C  Humidité: ${humid}%  Vent: ${windkmh} km/h", 1200, "EBBR")

--Battery Widget
batt = wibox.widget.textbox()
vicious.register(batt, vicious.widgets.bat, "Batt: $2% Rem: $3", 61, "BAT")
