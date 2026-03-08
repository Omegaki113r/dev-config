import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

import Quickshell

Item {
    PanelWindow {
        screen: Quickshell.screens.find(s => s.name == "HDMI-A-1")
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
                width: 100
                height: 30
                topLeftRadius: 20
                topRightRadius: 20
                bottomRightRadius: 20
                bottomLeftRadius: 20
                color: "#ff1d2021"
            
                Text {
	                id: text_clock
                    anchors { centerIn: parent }
	                text: Qt.formatTime(new Date(), "HH:mm AP")
                    color: "#ffFFFFFF"
            
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
}
