import QtQuick 2.5
//property itemSource => this property is update and modify in model (TaskGroupModel.qml)
//property itemStatus => this property is update and modify in model
//property itemName
//property whiteIndex
Rectangle {
    id: rec_2_1
    property int widthItem : parent.width
    width: widthItem
    height: 106
    color: "transparent"

    property var listIMG_ID_Item: []
    property var listTEXT_ID_Item: []

    property int currentWidth_Item: rec_2_1.width
//    property int currentParentHeight: parent.height
//    property int tmpHeight: currentParentHeight

    Rectangle {
        id: rec_2_2
        width: widthItem
        height: 98
        color: "#37345E"
        radius: 3
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
        property int textSize: 7
        x: 74
        y: 15
        width: 41
        height: 12
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: itemStatus
    }

    Text {
        id: txt_3
        property int textSize: 9
        width: 122
        height: 15
        x: 74
        y: 31
        font.family: "Inter"
        font.pointSize: textSize
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
            property int textSize: 5
            width: 14
            height: 10
            x: 19
            y: 5
            font.family: "Inter"
            font.pointSize: textSize
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
            property int textSize: 5
            width: 14
            height: 10
            x: 19
            y: 5
            font.family: "Inter"
            font.pointSize: textSize
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
            property int textSize: 5
            width: 14
            height: 10
            x: 19
            y: 5
            font.family: "Inter"
            font.pointSize: textSize
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
    Component.onCompleted: {
        listIMG_ID_Item.push(img_10)
        listIMG_ID_Item.push(img_11)
        listIMG_ID_Item.push(img_12)
        listIMG_ID_Item.push(img_12_1)
        listIMG_ID_Item.push(img_13)
        listIMG_ID_Item.push(img_14)
        listIMG_ID_Item.push(img_15)
        listIMG_ID_Item.push(img_16)
        listIMG_ID_Item.push(img_17)
        listIMG_ID_Item.push(img_18)
        listIMG_ID_Item.push(rec_2_2)

        listTEXT_ID_Item.push(txt_2)
        listTEXT_ID_Item.push(txt_3)
        listTEXT_ID_Item.push(txt_4)
        listTEXT_ID_Item.push(txt_5)
        listTEXT_ID_Item.push(txt_6)
    }

    onWidthChanged: {
        console.log("width change")
        var rate = width/currentWidth_Item
        for (var a = 0; a < listIMG_ID_Item.length; a++) {
            listIMG_ID_Item[a].x = listIMG_ID_Item[a].x * rate
            listIMG_ID_Item[a].width = listIMG_ID_Item[a].width * rate
        }

        for (var b = 0; b < listTEXT_ID_Item.length; b++) {
            listTEXT_ID_Item[b].x = listTEXT_ID_Item[b].x * rate
            listTEXT_ID_Item[b].width = listTEXT_ID_Item[b].width * rate
        }
    }

//    onCurrentParentHeightChanged: {
//        var rate = currentParentHeight/tmpHeight
//        for (var a = 0; a < listIMG_ID_Item.length; a++) {
//            listIMG_ID_Item[a].y = listIMG_ID_Item[a].y * rate
//            listIMG_ID_Item[a].height = listIMG_ID_Item[a].height * rate
//        }

//        for (var b = 0; b < listTEXT_ID_Item.length; b++) {
//            listTEXT_ID_Item[b].y = listTEXT_ID_Item[b].y * rate
//            listTEXT_ID_Item[b].height = listTEXT_ID_Item[b].height * rate
//        }
//        txt_2.textSize = 7 *rate
//        txt_3.textSize = 9 * rate
//        txt_4.textSize = 5 * 1.5
//        txt_5.textSize = 5 * 1.5
//        txt_6.textSize = 5 * 1.5
//        tmpHeight = currentParentHeight
//    }
}

