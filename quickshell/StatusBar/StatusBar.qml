import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

import Quickshell
import Quickshell.Io
import Quickshell.Hyprland

import "../Pill"

PanelWindow {
    property int cpu_usage
    property var last_cpu_total
    property var last_cpu_idle
    property int mem_usage
    property var lastRX
    property var lastTX
    property int upload_speed
    property int download_speed
    required property ShellScreen in_screen
    screen: in_screen
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
            color: "#282828"
                
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
        Pill {
            in_width: Hyprland.activeToplevel != null ? Hyprland.activeToplevel.title.length * 10 : " ".length * 10
            in_height: 30

            anchors { centerIn: parent }

            in_border_radius: 20

            Text {
                text: Hyprland.activeToplevel != null ? Hyprland.activeToplevel.title : " "
                anchors { centerIn: parent }
                color: "#FFFFFF"            
            }
        } 
        Rectangle { Layout.fillWidth: true; Layout.horizontalStretchFactor: 1 }
        Rectangle { width:1; height: 16; color: "#AAAAAA" }
        Rectangle {
            width: 150
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"

            RowLayout {
                anchors {
                    fill: parent
                    leftMargin: 10
                    rightMargin: 10 
                    topMargin: 5
                    bottomMargin: 5
                }
                spacing: 10
                
                Text {
                    text: "\uf093"
                    font { pixelSize: 10; weight: Font.Thin }
                    color: "#d79921"
                } 
                Text {
                    text: upload_speed + " MB/s"
                    font { pixelSize: 10; weight: Font.Thin }
                    color: "#d79921"
                }
                Rectangle { width:1; height: 16; color: "#d79921" }
                Text {
                    text: "\uf019"
                    font { pixelSize: 10; weight: Font.Thin }
                    color: "#d79921"
                } 
                Text {
                    text: download_speed + " MB/s"
                    font { pixelSize: 10; weight: Font.Thin }
                    color: "#d79921"
                }
            }
        }
        Rectangle { width:1; height: 16; color: "#AAAAAA" }
        Rectangle {
            width: 150
            height: 30
            topLeftRadius: 20
            topRightRadius: 20
            bottomRightRadius: 20
            bottomLeftRadius: 20
            color: "#282828"

            RowLayout {
                anchors {
                    fill: parent
                    leftMargin: 10
                    rightMargin: 10 
                    topMargin: 5
                    bottomMargin: 5
                }
                spacing: 10

                Text {
                    text: "\ue266"
                    Layout.fillWidth: true
                    Layout.horizontalStretchFactor: 1
                    color: "#d79921"
                } 
                
                Text {
                    text: mem_usage + "%"
                    Layout.fillWidth: true
                    Layout.horizontalStretchFactor: 1
                    color: "#d79921"
                }
                
                Rectangle { width:1; height: 16; color: "#d79921" }
                
                Text {
                    text: "\uf4bc"
                    Layout.fillWidth: true
                    Layout.horizontalStretchFactor: 1
                    color: "#d79921"
                } 
                
                Text {
                    text: cpu_usage + "%"
                    Layout.fillWidth: true
                    Layout.horizontalStretchFactor: 1
                    color: "#d79921"
                }
            }
        }
        Rectangle { width:1; height: 16; color: "#AAAAAA" }
        Pill {
            in_width: 30
            in_height: 30

            in_border_radius: 20

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
        Process {
            id: cpuProc
            command: ["sh", "-c", "head -1 /proc/stat"]
            stdout: SplitParser {
                onRead: data => {
                    if (!data) return
                    var p = data.trim().split(/\s+/)
                    var idle = parseInt(p[4]) + parseInt(p[5])
                    var total = p.slice(1, 8).reduce((a, b) => a + parseInt(b), 0)
                    if (last_cpu_total > 0) {
                        cpu_usage = Math.round(100 * (1 - (idle - last_cpu_idle) / (total - last_cpu_total)))
                    }
                    last_cpu_total = total
                    last_cpu_idle = idle
                }
            }
            Component.onCompleted: running = true
        }
        Process {
            id: memProc
            command: ["sh", "-c", "free | grep Mem"]
            stdout: SplitParser {
                onRead: data => {
                    if (!data) return
                    var parts = data.trim().split(/\s+/)
                    var total = parseInt(parts[1]) || 1
                    var used = parseInt(parts[2]) || 0
                    mem_usage = Math.round(100 * used / total)
                }
            }
            Component.onCompleted: running = true
        }
        Process {
            id: netProc
            command: ["sh", "-c", "cat /proc/net/dev | grep enp5s0"]
            stdout: SplitParser {
                onRead: data => {
                    if (!data) return

                    var parts = data.replace(":", " ").trim().split(/\s+/)

                    var rx = parseInt(parts[1]) || 0   // received bytes
                    var tx = parseInt(parts[9]) || 0   // transmitted bytes

                    if (lastRX !== undefined) {
                        var down = (rx - lastRX) / 1024
                        var up   = (tx - lastTX) / 1024

                        download_speed = Math.round(down)
                        upload_speed = Math.round(up)
                    }

                    lastRX = rx
                    lastTX = tx
                }
            }
            Component.onCompleted: running = true
        }
        Timer {
            interval: 2000
            running: true
            repeat: true
            onTriggered: {
                cpuProc.running = true
                memProc.running = true
                netProc.running = true
            }
        }
    }
