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
    onHeightChanged: {
        var rateTextSize = height/63
        txt_1.textSize = 7 * rateTextSize
        txt_2.textSize = 9 * rateTextSize
    }
}

