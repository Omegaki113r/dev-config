import QtQuick

import Quickshell 

import Quickshell.Hyprland

import "StatusBar"
import "Workspaces"

ShellRoot {
    StatusBar { in_screen: Quickshell.screens.find(s => s.name == "HDMI-A-1") }
    Workspaces { 
        in_screen: Quickshell.screens.find(s => s.name == "HDMI-A-1")
        in_indices: [1, 2, 3, 4, 5]
    }
    Workspaces { 
        in_screen: Quickshell.screens.find(s => s.name == "DP-2")
        in_indices: [6, 7, 8, 9, 10]
    }
}
