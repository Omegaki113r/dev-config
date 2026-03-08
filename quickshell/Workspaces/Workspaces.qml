import Quickshell
import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Quickshell.Wayland
import Quickshell.Hyprland

PanelWindow {
    required property var modelData
    required property var in_indices
    WlrLayershell.namespace: "workspace_bar_window"
    // screen: Quickshell.screens.find(s => s.name == "HDMI-A-1")
    screen: modelData
    anchors {
        left: true
        top: false
        right: true
        bottom: true
    }
    implicitHeight: 40
    color: "transparent"
        
        RowLayout {
            anchors { 
                centerIn: parent 
            }    
            spacing: 10
            Repeater {
                model:  indices
                Rectangle {
                    property var workspace: Hyprland.workspaces.values.find(w=>w.id === index + 1) ?? null
                    property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
                    property bool hasWindows: workspace !== null
                    
                    width: 75
                    height: 25
                    topLeftRadius: 15
                    topRightRadius: 15
                    bottomRightRadius: 15
                    bottomLeftRadius: 15
                    color: "#32302F"
                    
                    Text {
                        text: index + 1
                        color: isActive ? "#D65D0E" : "#98971A"
                        anchors { fill: parent }
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }
    }
}
