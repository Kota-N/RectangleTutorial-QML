import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 100
        height: 100
        color: "red"
        border.color: "black"
        border.width: 5
    }

    Rectangle {
        width: 200
        height: 200
        color: "red"
        border.color: "black"
        border.width: 10
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        Rectangle {
            id: rotateMe
            width: 100
            height: 100
            color: "green"
            border.color: "white"
            border.width: 5
            anchors.centerIn: parent
            Behavior on rotation {
                NumberAnimation {
                    duration: 200
                }
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: rotateMe.rotation += 45
    }
}
