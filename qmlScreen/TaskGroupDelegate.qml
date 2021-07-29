import QtQuick 2.5
//property itemSource => this property is update and modify in model (TaskGroupModel.qml)
//property itemStatus => this property is update and modify in model
//property itemName
//property whiteIndex
Rectangle {
    id: rec_2_1
    width: parent.width
    height: 106
    color: "transparent"
    Rectangle {
        id: rec_2_2
        width: parent.width
        height: 98
        color: "#37345E"
    }

    Image {
        id: img_10
        x: 17
        y: 15
        width: 44
        height: 44
        source: "qrc:/image/TaskScreen/image_borde.png"

        Image {
            id: img_11
            x: 5
            y: 5
            width: 32
            height: 34
            source: itemSource
        }
    }

    Text {
        id: txt_2
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
        id: txt_3
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
        id: img_12
        width: 50
        height: 21
        x: 17
        y: 71
        source: "qrc:/image/TaskScreen/border_50_21.png"

        Image {
            id: img_12_1
            width: 5
            height: 5
            x: 8
            y: 8
            source: "qrc:/image/TaskScreen/white_oval.png"
        }

        Text {
            id: txt_4
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
        id: img_13
        width: 50
        height: 21
        x: 72
        y: 71
        source: "qrc:/image/TaskScreen/border_50_21.png"

        Image {
            id: img_14
            width: 5
            height: 5
            x: 8
            y: 8
            source: "qrc:/image/TaskScreen/green_oval.png"
        }

        Text {
            id: txt_5
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
        id: img_15
        width: 50
        height: 21
        x: 127
        y: 71
        source: "qrc:/image/TaskScreen/border_50_21.png"

        Image {
            id: img_16
            width: 5
            height: 5
            x: 8
            y: 8
            source: "qrc:/image/TaskScreen/red_oval.png"
        }

        Text {
            id: txt_6
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
        id: img_17
        width: 21
        height: 21
        x: 182
        y: 71
        source: "qrc:/image/TaskScreen/border_50_21.png"

        Image {
            id: img_18
            width: 9.6
            height: 9.6
            x: 5.46
            y: 5.46
            source: "qrc:/image/TaskScreen/delete_icon.png"
        }
    }

    MouseArea {
        anchors.fill: parent
        onPressed: {
            rec_2_2.color = "#907DE2"
        }
        onReleased: {
            rec_2_2.color = "#37345E"
        }
        onCanceled: {
            rec_2_2.color = "#37345E"
        }
    }

    onWidthChanged: {
        console.log("width change")
    }
}

