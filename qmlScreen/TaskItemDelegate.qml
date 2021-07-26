import QtQuick 2.5
//property idtxtContent

Rectangle {
    width: 770
    height: 38
    color: "transparent"

    Image {
        id: bacgroundItem
        width: 770
        height: 30
        source: "qrc:/image/task_item_border.png"
    }

    Text {
        id: idtxt
        width: 5
        height: 12
        x: 12
        y: 8
        font.family: "Inter"
        font.pointSize: 7
        color: "#FFFFFF"
        text: idtxtContent
    }
}
