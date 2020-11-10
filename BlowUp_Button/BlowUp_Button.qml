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

    property var bgColor: ""
    property var bgColorIcon: ""
    property url iconSource: ""

    Rectangle{
        id: blowUp_Rec
        width: parent.width
        height: parent.height
        anchors.verticalCenter: parent.verticalCenter
        color: bgColor

        Rectangle{
            id: iconRec
            width: parent.height
            height: parent.height
            color: bgColorIcon
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left

            Image{
                id: icon
                anchors.centerIn: parent
                width: parent.width-4
                height: parent.height-4
                source: iconSource
            }
        }
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
        iconRec.visible = false
    }
}
