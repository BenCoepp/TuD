import QtQuick 2.9
import QtQuick.Controls 2.5

Item {
    width: parent.width
    height: parent.height

    Rectangle{
        anchors.fill: parent
        color: "#2C3E50"

        Rectangle{
            id: loc
            anchors.centerIn: parent
            radius: 99
            width: 200
            height: 200
            color: "#18BC9E"
        }

        BusyIndicator{
            width: 40
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: loc.bottom
        }
    }
}
