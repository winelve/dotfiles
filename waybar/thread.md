好的，我来介绍最常用和重要的 Waybar 模块：

## 🔥 核心必备模块

### **Clock（时钟）**
最基础的模块，显示时间日期
```json
"clock": {
    "format": "{:%H:%M}",
    "format-alt": "{:%Y-%m-%d %H:%M:%S}",
    "tooltip-format": "<tt><small>{calendar}</small></tt>"
}
```

### **Workspaces（工作区）**
根据你的窗口管理器选择：
- `hyprland/workspaces` - Hyprland 用户
- `sway/workspaces` - Sway 用户
- `river/tags` - River 用户

显示和切换虚拟桌面，**必不可少**

### **Tray（系统托盘）**
显示后台应用图标（如网络管理器、蓝牙、输入法等）
```json
"tray": {
    "icon-size": 21,
    "spacing": 10
}
```

## 💻 系统监控模块

### **CPU / Memory / Disk**
监控系统资源
```json
"cpu": {
    "format": " {usage}%",
    "tooltip": false
},
"memory": {
    "format": " {}%"
},
"disk": {
    "format": " {percentage_used}%",
    "path": "/"
}
```

### **Temperature（温度）**
监控 CPU 温度
```json
"temperature": {
    "critical-threshold": 80,
    "format": "{icon} {temperatureC}°C",
    "format-icons": ["", "", ""]
}
```

### **Battery（电池）**
**笔记本必备**
```json
"battery": {
    "states": {
        "warning": 30,
        "critical": 15
    },
    "format": "{capacity}% {icon}",
    "format-charging": "{capacity}% ",
    "format-icons": ["", "", "", "", ""]
}
```

## 🎵 多媒体模块

### **PulseAudio（音量）**
音量控制，**非常重要**
```json
"pulseaudio": {
    "format": "{icon} {volume}%",
    "format-muted": " Muted",
    "format-icons": {
        "default": ["", "", ""]
    },
    "on-click": "pavucontrol"
}
```

### **MPRIS**
显示正在播放的音乐（支持 Spotify、VLC 等）
```json
"mpris": {
    "format": "{player_icon} {title}",
    "format-paused": "{status_icon} {title}",
    "player-icons": {
        "default": "▶",
        "spotify": ""
    }
}
```

## 🌐 网络与连接

### **Network（网络）**
显示网络连接状态，**重要**
```json
"network": {
    "format-wifi": " {essid} ({signalStrength}%)",
    "format-ethernet": " Wired",
    "format-disconnected": "⚠ Disconnected",
    "on-click": "nm-connection-editor"
}
```

### **Bluetooth**
蓝牙状态和设备
```json
"bluetooth": {
    "format": " {status}",
    "format-connected": " {num_connections}",
    "on-click": "blueman-manager"
}
```

## ⚙️ 实用工具模块

### **Idle Inhibitor（防休眠）**
阻止系统自动锁屏/休眠
```json
"idle_inhibitor": {
    "format": "{icon}",
    "format-icons": {
        "activated": "",
        "deactivated": ""
    }
}
```

### **Custom（自定义）**
最灵活的模块，可以运行任何脚本
```json
"custom/power": {
    "format": "⏻",
    "on-click": "wlogout",
    "tooltip": false
}
```

### **Backlight（亮度）**
**笔记本必备**，控制屏幕亮度
```json
"backlight": {
    "format": "{icon} {percent}%",
    "format-icons": ["", "", "", "", ""]
}
```

## 📋 典型配置推荐

**桌面用户**：
```json
"modules-left": ["hyprland/workspaces"],
"modules-center": ["clock"],
"modules-right": ["tray", "pulseaudio", "network", "cpu", "memory", "custom/power"]
```

**笔记本用户**：
```json
"modules-left": ["hyprland/workspaces"],
"modules-center": ["clock", "mpris"],
"modules-right": ["tray", "idle_inhibitor", "backlight", "pulseaudio", "network", "battery", "custom/power"]
```

## 🎯 优先级建议

1. **必装**：Workspaces, Clock, Tray, PulseAudio, Network
2. **笔记本必装**：Battery, Backlight
3. **推荐**：Idle Inhibitor, CPU/Memory, Custom
4. **可选**：MPRIS, Bluetooth, Temperature, Disk

你现在用的是台式机还是笔记本？我可以帮你优化配置。