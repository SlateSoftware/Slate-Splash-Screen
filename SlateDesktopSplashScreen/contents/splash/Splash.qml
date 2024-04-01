import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Image {
    id: container
    width: 400
    height: 200
    source: "images/back.png" // Provide the path to your image file

    Rectangle {
        id: container1
        width: container.width * 0.21
        height: container.height * 0.17
        color: "transparent"
        radius: 20

        border.color: "#303030"

        anchors.centerIn: parent

        // Border animation
        SequentialAnimation {
            id: borderAnimation
            loops: Animation.Infinite
            running: true

            PropertyAnimation {
                target: container1
                property: "border.color"
                to: "#00B2FF"
                duration: 800
                easing.type: Easing.InOutQuad
            }

            PropertyAnimation {
                target: container1
                property: "border.color"
                to: "#303030"
                duration: 800
                easing.type: Easing.InOutQuad
            }
        }

        Text {
            id: mainText
            text: "Slate Desktop"
            color: "#ffffff" // Text color
            font {
                family: "DM Sans 36pt";
                styleName: "Semibold";
                pixelSize: 46;
            }
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 44 // Adjust the top margin as needed
        }

        Text {
            id: subtitleText
            text: "Starting..."
            color: "#ffffff" // Text color
            font.pixelSize: 13
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: mainText.bottom
            anchors.topMargin: 10
            horizontalAlignment: Text.AlignHCenter // Align text horizontally center
        }
    }
}
