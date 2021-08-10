import QtQuick 2.5
//property itemSource => this property is update and modify in model (TaskGroupModel.qml)
//property itemStatus => this property is update and modify in model
//property itemName
//property whiteIndex
Rectangle {
    id: rec_2_1
    property int proxyGroupWidthItem : 0
    property int proxyGroupHeightItem : 0

    width: proxyGroupWidthItem
    height: proxyGroupHeightItem
    color: "transparent"
    radius: 3

    property var listIMG_ID_Item: []
    property var listTEXT_ID_Item: []

    property int currentWidth_Item: rec_2_1.width

    Rectangle {
        id: rec_2_2
        width: proxyGroupWidthItem
        height: proxyGroupHeightItem
        color: itemMouseArea.containsMouse ? "#907DE2" : "#37345E"
        radius: 3
    }

    Text {
        id: proxyGroupLeftCorner
        width: 0
        height: 0
        text: qsTr("")
    }

    Text {
        id: txt_1
        property int textSize: 7
        text: item1
//        width: 63
//        height: 12
//        x: 19
//        y: 15
        width: (63/221) * parent.width //width
        height: (12/63) * parent.height //height
        anchors.left: proxyGroupLeftCorner.right
        anchors.leftMargin: (19/221)* parent.width //x
        anchors.top: proxyGroupLeftCorner.bottom
        anchors.topMargin: (15/63)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: txt_2
        property int textSize: 9
        text: item2
//        width: 67
//        height: 15
//        x: 19
//        y: 31
        width: (67/221) * parent.width //width
        height: (15/63) * parent.height //height
        anchors.left: proxyGroupLeftCorner.right
        anchors.leftMargin: (19/221)* parent.width //x
        anchors.top: proxyGroupLeftCorner.bottom
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
        anchors.left: proxyGroupLeftCorner.right
        anchors.leftMargin: (182/221)* parent.width //x
        anchors.top: proxyGroupLeftCorner.bottom
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
        anchors.left: proxyGroupLeftCorner.right
        anchors.leftMargin: (186.5/221)* parent.width //x
        anchors.top: proxyGroupLeftCorner.bottom
        anchors.topMargin: (26/63)* parent.height //y
        source: "../image/Proxy/trash-outline.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Delete icon")
            }
        }
    }

    onHeightChanged: {
        var rateTextSize = height/63
        txt_1.textSize = 7 * rateTextSize
        txt_2.textSize = 9 * rateTextSize
    }
}

