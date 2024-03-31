import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: container
    width: 400
    height: 200
    color: "#2e2e2e" // Background color

    Rectangle {
        id: splashRect
        width: container.width * 0.40
        height: container.height * 0.20
        border.color: "#ffffff"
        color: "transparent"
        radius: 30
        anchors.centerIn: parent

        // Border animation
        SequentialAnimation {
            id: borderAnimation
            loops: Animation.Infinite
            running: true
            PropertyAnimation {
                target: splashRect
                property: "border.color"
                to: "#00B2FF"
                duration: 225
                easing.type: Easing.InOutQuad
            }
            PropertyAnimation {
                target: splashRect
                property: "border.width"
                to: 3
                duration: 225
                easing.type: Easing.InOutQuad
            }
            PropertyAnimation {
                target: splashRect
                property: "border.color"
                to: "#ffffff"
                duration: 225
                easing.type: Easing.InOutQuad
            }
            PropertyAnimation {
                target: splashRect
                property: "border.width"
                to: 2
                duration: 225
                easing.type: Easing.InOutQuad
            }
        }

        Text {
            id: mainText
            text: "Slate Desktop"
            color: "#ffffff" // Text color
            font.pixelSize: 24
            anchors.centerIn: splashRect
        }

        Text {
            id: subtitleText
            text: "is running"
            color: "#ffffff" // Text color
            font.pixelSize: 16
            anchors.horizontalCenter: splashRect.horizontalCenter
            anchors.top: mainText.bottom
            anchors.topMargin: 10
        }
    }
}
