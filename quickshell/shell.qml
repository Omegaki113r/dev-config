import QtQuick

import Quickshell 

import "StatusBar"
import "Workspaces"

ShellRoot {
    Component.onCompleted: {
        console.log(Quickshell.screens.map(s => s.name))
    }
    StatusBar { screen: Quickshell.screens.find(s => s.name == "HDMI-A-1") }
    Variants {
        model: Quickshell.screens
        delegate: Workspaces {
            modelData: modelData
            in_indices: 10 
        }
    }
}
