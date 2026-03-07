import Quickshell
import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Quickshell.Wayland
import Quickshell.Hyprland

PanelWindow {
    WlrLayershell.namespace: "workspace_bar_window"
    id: workspace_bar_window
    screen: Quickshell.screens.find(s => s.name == "HDMI-A-1")
    anchors {
        left: true
        top: false
        right: true
        bottom: true
    }
    implicitHeight: 40
    color: "transparent"
    Rectangle {
        id: workspace_bar_background
        anchors { fill: parent }
        color: Qt.rgba(0.05, 0.05, 0.12, 0.65)
    }
    FastBlur {
        anchors.fill: workspace_blur_background
        source: workspace_blur_background
        radius: 32
    }

    RowLayout {
        anchors { 
            centerIn: parent 
        }    
        spacing: 10
        Repeater {
            model:  10
            Rectangle {
                width: 75
                height: 25
            
                property var workspace: Hyprland.workspaces.values.find(w=>w.id === index + 1) ?? null
                property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
                property bool hasWindows: wokspace !== null

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
