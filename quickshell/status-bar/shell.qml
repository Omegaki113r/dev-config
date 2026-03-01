import Quickshell
import QtQuick
import QtQuick.Layouts

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
        Image {
	    Layout.leftMargin: 20
	    source: "assets/images/title_logo.png"
	    sourceSize.height: parent.height - 4
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
