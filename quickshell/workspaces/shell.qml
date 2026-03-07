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
    implicitHeight: 20
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

    Row {
        anchors { 
            centerIn: parent
            leftMargin: 10
            rightMargin: 10 
            topMargin: 5
            bottomMargin: 5
        }    
        spacing: 10
        Repeater {
            model:  9
            Rectangle {
                width: 25
                height: 20
            
                property var workspace: Hyprland.workspaces.values.find(w=>w.id === index + 1) ?? null
                property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
                property bool hasWindows: wokspace !== null

                topLeftRadius: 5
                topRightRadius: 5
                bottomRightRadius: 5
                bottomLeftRadius: 5

                color: isActive ? "green" : "red"
                Text {
                    text: index + 1
                    anchors { centerIn: parent }
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }
    }
}
