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
    implicitHeight: 30
//    color: "#22FFFFFF"
    RowLayout {
	    anchors.fill: parent
        Rectangle {
            height: parent.height
            Image {
                id: image_omega_logo
	            source: "assets/images/title_logo.png"
                mipmap: true
                fillMode: Image.PreserveAspectFit
                sourceSize.height: parent.height
                visible: false
                smooth: false
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
	// Rectangle { width:1; height: 16; color: "#AAAAAA" }
	Text {
	    id: text_clock
	    Layout.horizontalStretchFactor: 1
	    Layout.fillWidth: true
	    Layout.rightMargin: 20
	    text: Qt.formatDateTime(new Date(), "ddd, MMM dd | HH:mm")
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
