import QtQuick 2.9
import QtQuick.Controls 2.5
import "qrc:/Components/Flicker"
import "qrc:/Components/BlowUp_Button"

Item {
    width: parent.width
    height: parent.height

    Flicker{
        id: flicker
        width: parent.width
        height: parent.height
    }

    BlowUp_Button{
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        maxWidth: parent.width
        maxHeight: parent.height
        bgColor: "green"
        bgColorIcon: "blue"
    }
}
