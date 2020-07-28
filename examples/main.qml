import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 2.4

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    BusyIndicator {
        running: true
    }

    Rectangle {
           id: frame
           clip: true
           width: 160
           height: 160
           border.color: "black"
           anchors.right: parent.right
           anchors.top: parent.top
           anchors.rightMargin: 20
           anchors.topMargin: 20

           Text {
               id: content
               text: "HELLO WORLD"
               font.pixelSize: 160
               x: -hbar.position * width
               y: -vbar.position * height
           }

           ScrollBar {
               id: vbar
               hoverEnabled: true
               active: hovered || pressed
               orientation: Qt.Vertical
               size: frame.height / content.height
               anchors.top: parent.top
               anchors.right: parent.right
               anchors.bottom: parent.bottom
           }

           ScrollBar {
               id: hbar
               hoverEnabled: true
               active: hovered || pressed
               orientation: Qt.Horizontal
               size: frame.width / content.width
               anchors.left: parent.left
               anchors.right: parent.right
               anchors.bottom: parent.bottom
           }
       }
}