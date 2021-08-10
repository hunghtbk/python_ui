import QtQuick 2.5
//property itemSource => this property is update and modify in model (TaskGroupModel.qml)
//property itemStatus => this property is update and modify in model
//property itemName
//property whiteIndex
Rectangle {
    id: rec_2_1
    property int profileGroupWidthItem : 0
    property int profileGroupHeightItem : 0

    width: profileGroupWidthItem
    height: profileGroupHeightItem
    color: "transparent"

    property var listIMG_ID_Item: []
    property var listTEXT_ID_Item: []

    property int currentWidth_Item: rec_2_1.width

    Rectangle {
        id: rec_2_2
        width: profileGroupWidthItem
        height: profileGroupHeightItem
        color: itemMouseArea.containsMouse ? "#907DE2" : "#37345E"
        radius: 3
    }

    Text {
        id: profileGroupLeftCorner
        width: 0
        height: 0
        text: qsTr("")
    }

    Text {
        id: txt_1
        property int textSize: 7
        text: item1
//        width: 49
//        height: 12
//        x: 19
//        y: 15
        width: (49/221) * parent.width //width
        height: (12/63) * parent.height //height
        anchors.left: profileGroupLeftCorner.right
        anchors.leftMargin: (19/221)* parent.width //x
        anchors.top: profileGroupLeftCorner.bottom
        anchors.topMargin: (15/63)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: txt_2
        property int textSize: 9
        text: item2
//        width: 42
//        height: 15
//        x: 19
//        y: 31
        width: (42/221) * parent.width //width
        height: (15/63) * parent.height //height
        anchors.left: profileGroupLeftCorner.right
        anchors.leftMargin: (19/221)* parent.width //x
        anchors.top: profileGroupLeftCorner.bottom
        anchors.topMargin: (31/63)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    MouseArea {
        id: itemMouseArea
        anchors.fill: parent
        hoverEnabled: true
    }

    Rectangle {
        id: rec_border
//        width: 21
//        height: 21
//        x: 182
//        y: 21
        width: (21/221) * parent.width //width
        height: (21/63) * parent.height //height
        anchors.left: profileGroupLeftCorner.right
        anchors.leftMargin: (182/221)* parent.width //x
        anchors.top: profileGroupLeftCorner.bottom
        anchors.topMargin: (21/63)* parent.height //y
        color: "transparent"
        border.color: "#3E3A68"
    }

    Image {
        id: img_2
//        width: 12
//        height: 12
//        x: 186.5
//        y: 26
        width: (12/221) * parent.width //width
        height: (12/63) * parent.height //height
        anchors.left: profileGroupLeftCorner.right
        anchors.leftMargin: (186.5/221)* parent.width //x
        anchors.top: profileGroupLeftCorner.bottom
        anchors.topMargin: (26/63)* parent.height //y
        source: "../image/Profile/trash-outline.png"
    }

//    Component.onCompleted: {
//        listIMG_ID_Item.push(rec_2_2)
//        listIMG_ID_Item.push(rec_border)
//        listIMG_ID_Item.push(img_2)

//        listTEXT_ID_Item.push(txt_1)
//        listTEXT_ID_Item.push(txt_2)
//    }

//    onWidthChanged: {
//        var rate = width/currentWidth_Item
//        for (var a = 0; a < listIMG_ID_Item.length; a++) {
//            listIMG_ID_Item[a].x = listIMG_ID_Item[a].x * rate
//            listIMG_ID_Item[a].width = listIMG_ID_Item[a].width * rate
//        }

//        for (var b = 0; b < listTEXT_ID_Item.length; b++) {
//            listTEXT_ID_Item[b].x = listTEXT_ID_Item[b].x * rate
//            listTEXT_ID_Item[b].width = listTEXT_ID_Item[b].width * rate
//        }
//    }

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

