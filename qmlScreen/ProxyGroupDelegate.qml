import QtQuick 2.5
//property itemSource => this property is update and modify in model (TaskGroupModel.qml)
//property itemStatus => this property is update and modify in model
//property itemName
//property whiteIndex
Rectangle {
    id: rec_2_1
    property int widthItem : parent.width
    width: widthItem
    height: 63
    color: "transparent"
    radius: 3

    property var listIMG_ID_Item: []
    property var listTEXT_ID_Item: []

    property int currentWidth_Item: rec_2_1.width

    Rectangle {
        id: rec_2_2
        width: widthItem
        height: 55
        color: itemMouseArea.containsMouse ? "#907DE2" : "#37345E"
        radius: 3
    }

    Text {
        id: txt_1
        property int textSize: 7
        text: item1
        width: 63
        height: 12
        x: 19
        y: 15
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: txt_2
        property int textSize: 9
        text: item2
        width: 67
        height: 15
        x: 19
        y: 31
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    MouseArea {
        id: itemMouseArea
        anchors.fill: parent
        hoverEnabled: true
//        onPressed: {
//            rec_2_2.color = "#907DE2"
//        }
//        onReleased: {
//            rec_2_2.color = "#37345E"
//        }
//        onCanceled: {
//            rec_2_2.color = "#37345E"
//        }
    }

    Rectangle {
        id: rec_border
        width: 21
        height: 21
        x: 182
        y: 21
        color: "transparent"
        border.color: "#3E3A68"
    }

    Image {
        id: img_2
        width: 12
        height: 12
        x: 186.5
        y: 26
        source: "qrc:/image/Proxy/trash-outline.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Delete icon")
            }
        }
    }

    Component.onCompleted: {
        listIMG_ID_Item.push(rec_2_2)
        listIMG_ID_Item.push(rec_border)
        listIMG_ID_Item.push(img_2)

        listTEXT_ID_Item.push(txt_1)
        listTEXT_ID_Item.push(txt_2)
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

