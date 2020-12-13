# 设置刷新率
sudo xrandr --output DP-2 --mode 1920x1080 --rate 144

# 获取 截取数位板id
getString=`xsetwacom --list devices`
firstCut=${getString#*stylus*id: }
tabletNumber=${firstCut:0:3}

# 设置数位板映射区域
xsetwacom --set $tabletNumber area 8089 4550 15200 8550
xsetwacom --set $tabletNumber rotate half
xsetwacom --set $tabletNumber MapToOutput 1920x1080+0+0
