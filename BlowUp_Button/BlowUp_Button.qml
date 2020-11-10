import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Window 2.3

MouseArea{
    id: root
    width: 250
    height: 50
    cursorShape: Qt.PointingHandCursor

    property var maxWidth: 0
    property var maxHeight: 0

    Rectangle{
        id: blowUp_Rec
        width: parent.width
        height: parent.height
        anchors.verticalCenter: parent.verticalCenter
        color: "green"
    }
    ParallelAnimation {
            running: false
            id: anBlow
            NumberAnimation { target: blowUp_Rec; property: "width"; to: maxWidth; duration: 250; easing.type: Easing.InOutQuad }
            NumberAnimation { target: blowUp_Rec; property: "height"; to: maxHeight; duration: 250; easing.type: Easing.InOutQuad }
        }
    onClicked: {
        console.log("test")
        anBlow.start()
    }
}
