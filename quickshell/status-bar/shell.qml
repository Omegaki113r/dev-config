import Quickshell
import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

PanelWindow {
    screen: Quickshell.screens.find(s => s.name == "HDMI-A-1")
    anchors {
        top: true
	    left: true
	    right: true
    }
    implicitHeight: 40
    color: "transparent"
    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10 
        anchors.topMargin: 5
        anchors.bottomMargin: 5
        spacing: 10
        Rectangle {
            width: 55
            height: 30
            color: "#ff1d2021"
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            Rectangle {
                width: 25
                height: 25
                anchors.centerIn: parent
                color: "#00000000"
                Image {
                    id: image_omega_logo
                    source: "assets/images/title_logo.png"
                    mipmap: true
                    fillMode: Image.PreserveAspectFit
                    sourceSize.height: parent.height
                    visible: false
                    smooth: false
                    anchors.centerIn: parent
                }
                OpacityMask {
                    anchors.fill: image_omega_logo
                    source: image_omega_logo
                    maskSource: Rectangle {
                        width: image_omega_logo.width
                        height: image_omega_logo.height
                        radius: width / 2
                    }
                }
            }
        }
        Rectangle {
            width: 100
            height: 40
            color: "#ff1d2021"
            topLeftRadius: 10
            topRightRadius: 10
            bottomRightRadius: 10
            bottomLeftRadius: 10
            Text {
                text: "0m3g4"
                color: "#ffFFFFFF"
                anchors.centerIn: parent
            }
        }
        Rectangle { width:1; height: 16; color: "#AAAAAA" }
        Rectangle { Layout.fillWidth: true; Layout.horizontalStretchFactor: 1 }
        Rectangle {
            width: 150
            height: 40
            color: "#ff1d2021"
            topLeftRadius: 10
            topRightRadius: 10
            bottomRightRadius: 10
            bottomLeftRadius: 10
	        Layout.horizontalStretchFactor: 1
            Text {
	            id: text_clock
	            text: Qt.formatDateTime(new Date(), "ddd, MMM dd | HH:mm")
                color: "#ffFFFFFF"
                anchors.centerIn: parent
                horizontalAlignment: Text.AlignRight
	            Timer {
	                interval: 1000
		            running: true
		            repeat: true
		            onTriggered: text_clock.text = Qt.formatDateTime(new Date(), "ddd, MMM dd | HH:mm")
	            }
            }
        }
    }
}
