import QtQuick 2.9
import QtQuick.Controls 2.5
import "qrc:/Components/Flicker"
import "qrc:/Components/BlowUp_Button"

Item {
    width: parent.width
    height: parent.height

    Rectangle{
        anchors.fill: parent
        color: "blue"
    }

    ScrollView{
        id: root
        width: parent.width
        height: parent.height
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff


        ListView {
            anchors.fill: parent
            model: ListModel{
                ListElement{
                    version: 1
                }
            }
            delegate: Rectangle{
                width: parent.width
                height: 1000
                color: "blue"
                BlowUp_Button{
                    anchors.top: parent.top
                    anchors.topMargin: parent.width+50
                    anchors.left: parent.left
                    maxWidth: parent.width
                    maxHeight: parent.height
                    bgColor: "green"
                    bgColorIcon: "blue"
                }
            }
        }
    }
}
