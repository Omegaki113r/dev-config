import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

import Quickshell

PanelWindow {
    required property ShellScreen screen
    screen: screen
    anchors {
        left: true
        top: true
        right: true
        bottom: false
    }
    implicitHeight: 40
    color: "transparent"
        
    RowLayout {
    anchors {
        fill: parent
        leftMargin: 10
        rightMargin: 10 
        topMargin: 5
        bottomMargin: 5
    }
    spacing: 10
        
    Rectangle {
        width: 100
        height: 30
        topLeftRadius: 20
        topRightRadius: 20
        bottomRightRadius: 20
        bottomLeftRadius: 20
        color: "#ff1d2021"
            
        Rectangle {
            width: 25
            height: 25
            anchors { centerIn: parent }
            color: "#00000000"
                
            Image {
                id: image_omega_logo
                source: "assets/images/title_logo.png"
                mipmap: true
                fillMode: Image.PreserveAspectFit
                sourceSize.height: parent.height
                visible: false
                smooth: false
                anchors { centerIn: parent }
            }
            OpacityMask {
                anchors { fill: image_omega_logo }
                source: image_omega_logo
                maskSource: Rectangle {
                    width: image_omega_logo.width
                    height: image_omega_logo.height
                    radius: width / 2
                }
            }
        }
    }
    Rectangle { width:1; height: 16; color: "#AAAAAA" }
    Rectangle { Layout.fillWidth: true; Layout.horizontalStretchFactor: 1 }
    Rectangle { width:1; height: 16; color: "#AAAAAA" }
    Rectangle {
        width: 30
        height: 30
        topLeftRadius: 20
        topRightRadius: 20
        bottomRightRadius: 20
        bottomLeftRadius: 20
        color: "#282828"

        Text {
            anchors { centerIn: parent }
            text: "\udb84\udc1e"
            color: "#d79921"
        } 
    }
    Rectangle {
        width: 30
        height: 30
        topLeftRadius: 20
        topRightRadius: 20
        bottomRightRadius: 20
        bottomLeftRadius: 20
        color: "#282828"

        Text {
            anchors { centerIn: parent }
            text: "\udb86\udc6c"
            color: "#d79921"
        } 
    }
    Rectangle {
        width: 30
        height: 30
        topLeftRadius: 20
        topRightRadius: 20
        bottomRightRadius: 20
        bottomLeftRadius: 20
        color: "#282828"

        Text {
            anchors { centerIn: parent }
            text: "\udb82\udd70"
            color: "#d79921"
        } 
    }
    Rectangle { width:1; height: 16; color: "#AAAAAA" }
    Rectangle {
            width: 30
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"

            Text {
                anchors { centerIn: parent }
                text: "\udb82\udfe1"
                color: "#d79921"
            } 
        }
        Rectangle {
            width: 30
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"

            Text {
                anchors { centerIn: parent }
                text: "\udb80\udc02"
                color: "#d79921"
            } 
        }
        Rectangle {
            width: 30
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"

            Text {
                anchors { centerIn: parent }
                text: "\udb85\udeb5"
                color: "#d79921"
            } 
        }
        Rectangle {
            width: 30
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"

            Text {
                anchors { centerIn: parent }
                text: "\udb85\udebc"
                color: "#d79921"
            } 
        }
        Rectangle {
            width: 30
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"

            Text {
                anchors { centerIn: parent }
                text: "\udb81\udda9"
                color: "#d79921"
            } 
        }
        Rectangle {
            width: 30
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"

            Text {
                anchors { centerIn: parent }
                text: "\udb80\ude02"
                color: "#d79921"
            } 
        }
        Rectangle {
            width: 30
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"

            Text {
                anchors { centerIn: parent }
                text: "\udb80\ude01"
                color: "#d79921"
            } 
        }
        Rectangle { width:1; height: 16; color: "#AAAAAA" }
        Rectangle {
            width: 100
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"
    
            Text {
                id: text_clock
                anchors { centerIn: parent }
                text: Qt.formatTime(new Date(), "HH:mm AP")
                color: "#d79921"
            
                Timer {
                    interval: 1000
                    running: true
                    repeat: true
                    onTriggered: text_clock.text = Qt.formatTime(new Date(), "HH:mm AP")
                }
            }
        }
    }
}
