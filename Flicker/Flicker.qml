import QtQuick 2.9
import QtQuick.Controls 2.5

ScrollView{
    id: root
    width: 400
    height: 400
    ScrollBar.horizontal.policy: ScrollBar.AlwaysOff


    ListView {
        anchors.fill: parent
        model: ListModel{
            ListElement{
                version: 1
            }
        }
        delegate: Item {
            width: parent.width
            height: 1000
            Rectangle{
                anchors.fill: parent
                color: "red"
            }
        }
    }
}
