import QtQuick 2.5
//property itemSource => this property is update and modify in model (TaskGroupModel.qml)
//property itemStatus => this property is update and modify in model
//property itemName
//property whiteIndex
Rectangle {
    width: 221
    height: 106
    color: "transparent"
    Image {
        id: bacgroundItem
        width: 221
        height: 98
        source: "qrc:/image/task_item_bgr_inactive.png"
    }

    Image {
        id: borderImage
        x: 17
        y: 15
        width: 44
        height: 44
        source: "qrc:/image/image_borde.png"

        Image {
            id: imageItem
            x: 5
            y: 5
            width: 32
            height: 34
            source: itemSource
        }
    }


    Text {
        id: itemStatustxt
        x: 74
        y: 15
        width: 41
        height: 12
        font.family: "Inter"
        font.pointSize: 7
        color: "#FFFFFF"
        text: itemStatus
    }

    Text {
        id: itemNametxt
        width: 122
        height: 15
        x: 74
        y: 31
        font.family: "Inter"
        font.pointSize: 9
        color: "#FFFFFF"
        text: itemName
    }

    Image {
        id: boarder1
        width: 50
        height: 21
        x: 17
        y: 71
        source: "qrc:/image/border_50_21.png"

        Image {
            id: whiteIcon
            width: 5
            height: 5
            x: 8
            y: 8
            source: "qrc:/image/white_oval.png"
        }

        Text {
            id: whiteIndextxt
            width: 14
            height: 10
            x: 19
            y: 5
            font.family: "Inter"
            font.pointSize: 5
            color: "#FFFFFF"
            text: whiteIndex
        }
    }

    Image {
        id: boarder2
        width: 50
        height: 21
        x: 72
        y: 71
        source: "qrc:/image/border_50_21.png"

        Image {
            id: greenIcon
            width: 5
            height: 5
            x: 8
            y: 8
            source: "qrc:/image/green_oval.png"
        }

        Text {
            id: greenIndextxt
            width: 14
            height: 10
            x: 19
            y: 5
            font.family: "Inter"
            font.pointSize: 5
            color: "#FFFFFF"
            text: greenIndex
        }
    }

    Image {
        id: boarder3
        width: 50
        height: 21
        x: 127
        y: 71
        source: "qrc:/image/border_50_21.png"

        Image {
            id: redIcon
            width: 5
            height: 5
            x: 8
            y: 8
            source: "qrc:/image/red_oval.png"
        }

        Text {
            id: redIndextxt
            width: 14
            height: 10
            x: 19
            y: 5
            font.family: "Inter"
            font.pointSize: 5
            color: "#FFFFFF"
            text: redIndex
        }
    }

    Image {
        id: boarder4
        width: 21
        height: 21
        x: 182
        y: 71
        source: "qrc:/image/border_50_21.png"

        Image {
            id: deleteIcon
            width: 9.6
            height: 9.6
            x: 5.46
            y: 5.46
            source: "qrc:/image/delete_icon.png"
        }
    }

    MouseArea {
        anchors.fill: parent
        onPressed: {
            bacgroundItem.source = "qrc:/image/task_item_bgr-active.png"
        }

        onReleased: {
            bacgroundItem.source = "qrc:/image/task_item_bgr_inactive.png"
        }
        onCanceled: {
            bacgroundItem.source = "qrc:/image/task_item_bgr_inactive.png"
        }
    }
}
