import QtQuick 2.13
import QtQuick.Controls 2.13

ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "HelloApp"

    Text {
        anchors.centerIn: parent
        text: "Hello World"
        font.pixelSize: 24
    }
}
