import QtQuick 2.0

Item {
    property string btn_title: "button"
    property int btn_width: 200
    property int btn_heigh: 200
    property bool isVisibleBorder: true
    width: btn_width
    height: btn_heigh
    signal sendMessage(string msg)

    Rectangle {
        anchors.fill: parent
        border.color: "black"
        visible: isVisibleBorder
    }
    Text {
        id: btn_title_id
        text: btn_title
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.log("hunght")
            sendMessage("abcd")
        }
    }
}
