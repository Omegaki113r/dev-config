import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland

PanelWindow {
    required property ShellScreen in_screen
    required property var in_workspaces
    required property var in_indices
    WlrLayershell.namespace: "workspace_bar_window"
    screen: in_screen
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
            model:  in_indices
            // model: in_workspaces
            Rectangle {
                property var workspace: Hyprland.workspaces.values.find(w=>w.id === modelData) ?? null
                property bool isActive: Hyprland.focusedWorkspace?.id === (modelData)
                property bool hasWindows: workspace !== null
                   
                width: 75
                height: 25
                topLeftRadius: 15
                topRightRadius: 15
                bottomRightRadius: 15
                bottomLeftRadius: 15
                color: "#282828"
                    
                Text {
                    text: modelData
                    color: isActive ? "#d79921" : "#928374"
                    anchors { fill: parent }
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    
                    MouseArea {
                        anchors { fill: parent }
                        acceptedButtons: Qt.LeftButton
                        onClicked: (mouse) => { /* in_workspace[index].activate(); */ }
                    }
                }
            }
        }
    }
}
