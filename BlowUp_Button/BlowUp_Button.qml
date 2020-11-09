import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Window 2.3

MouseArea{
    id: root
    width: 250
    height: 50
    cursorShape: Qt.PointingHandCursor

    Rectangle{
        id: blowUp_Rec
        anchors.fill: parent
        color: "green"
    }

    onClicked: {
        root.width = parent.height
        root.height = parent.width
    }
}
