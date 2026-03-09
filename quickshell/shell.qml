import QtQuick

import Quickshell 

import Quickshell.Hyprland

import "StatusBar"
import "Workspaces"

ShellRoot {
    Component.onCompleted: {
        // console.log(Hyprland.monitors.values.map(s => s.name))
        // console.log(Hyprland.monitors.values.map(s => s.id))
//        console.log(Quickshell.screens.map(s => s.name))
    }
    // StatusBar { screen: Quickshell.screens.find(s => s.name == "HDMI-A-1") }
    Variants {
        model: Quickshell.screens
        delegate: Workspaces {
            property int index: {
                let m = Hyprland.monitors.values.find(s => s.name === screen.name)
                return m ? m.id : 0
            }
            modelData: Quickshell.screens.find( s => s.name == modelData.name )
            in_indices: [index * 5 + 1, index * 5 + 2, index * 5 + 3, index * 5 + 4, index * 5 + 5] 
        }
    }
}
