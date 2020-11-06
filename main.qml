import QtQuick 2.9
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("Truth And Dare")

    StackView{
        id: contentFrame
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/Load_Page/Load_Page.qml")
    }

    Component.onCompleted: {
        contentFrame.replace("qrc:/Main_Page/Main_Page.qml")
    }
}
