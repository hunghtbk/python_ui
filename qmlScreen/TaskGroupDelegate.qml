import QtQuick 2.5
//property itemSource => this property is update and modify in model (TaskGroupModel.qml)
//property itemStatus => this property is update and modify in model
//property itemName
//property whiteIndex
Rectangle {
    id: rec_2_1
    property int widthItem : 0
    property int heightItem: 0
    property string colorItem: ""

    width: widthItem
    height: heightItem//106 //(106/424) * heightItem
    color: "transparent"

    Rectangle {
        id: rec_2_2
        width: widthItem
        height: parent.height
        color: itemMouseArea.containsMouse ? "#907DE2" : colorItem
        radius: 5
    }

    Text {
        id: taskGroupLeftCorner
        width: 0
        height: 0
        text: qsTr("")
    }

    Image {
        id: img_10
        width: (44/221) * parent.width //width
        height: (44/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (17/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (15/106)* parent.height
        source: "../appIMG/6.Common/image_borde.png"

    }
    Image {
        id: img_11
        width: (32/221) * parent.width //width
        height: (34/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (23/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (20/106)* parent.height
        source: itemSource
    }

    Text {
        id: txt_2
        property int textSize: 7
        width: (41/221) * parent.width //width
        height: (12/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (74/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (15/106)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: itemStatus
    }

    Text {
        id: txt_3
        property int textSize: 9
        width: (122/221) * parent.width //width
        height: (15/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (74/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (31/106)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: itemName
    }

    Rectangle {
        id: img_12
        width: (50/221) * parent.width //width
        height: (21/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (17/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (71/106)* parent.height
//        source: "../appIMG/1.TaskScren/group_item_border_4x.png"
        color: "transparent"
        radius: 3
        border.color: (colorItem ==="#37345E")?"#3E3A68":"#EEF0F6"
        border.width: 0.5

    }
    Image {
        id: img_12_1
        width: (5/221) * parent.width //width
        height: (5/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (25/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (79/106)* parent.height
        source: "../appIMG/1.TaskScren/White-Oval-4x.png"
    }

    Text {
        id: txt_4
        property int textSize: 7
        width: (14/221) * parent.width //width
        height: (10/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (36/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (76/106)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: whiteIndex
    }

    Rectangle {
        id: img_13
        width: (50/221) * parent.width //width
        height: (21/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (72/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (71/106)* parent.height
//        source: "../appIMG/1.TaskScren/group_item_border_4x.png"
        color: "transparent"
        radius: 3
        border.color: (colorItem ==="#37345E")?"#3E3A68":"#EEF0F6"
        border.width: 0.5
    }
    Image {
        id: img_14
        width: (5/221) * parent.width //width
        height: (5/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (80/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (79/106)* parent.height
        source: "../appIMG/1.TaskScren/Green-Oval-4x.png"
    }

    Text {
        id: txt_5
        property int textSize: 7
        width: (14/221) * parent.width //width
        height: (10/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (91/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (76/106)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: greenIndex
    }

    Rectangle {
        id: img_15
        width: (50/221) * parent.width //width
        height: (21/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (127/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (71/106)* parent.height
//        source: "../appIMG/1.TaskScren/group_item_border_4x.png"
        color: "transparent"
        radius: 3
        border.color: (colorItem ==="#37345E")?"#3E3A68":"#EEF0F6"
        border.width: 0.5
    }
    Image {
        id: img_16
        width: (5/221) * parent.width //width
        height: (5/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (135/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (79/106)* parent.height
        source: "../appIMG/1.TaskScren/Red-Oval-4x.png"
    }

    Text {
        id: txt_6
        property int textSize: 7
        width: (14/221) * parent.width //width
        height: (10/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (146/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (76/106)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: redIndex
    }

    Rectangle {
        id: img_17
        width: (21/221) * parent.width //width
        height: (21/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (182/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (71/106)* parent.height
//        source: "../appIMG/1.TaskScren/delele_border_icon-4x.png"
        color: "transparent"
        radius: 3
        border.color: (colorItem ==="#37345E")?"#3E3A68":"#EEF0F6"
        border.width: 0.5

    }
    Image {
        id: img_18
        width: (9.6/221) * parent.width //width
        height: (9.6/106) * parent.height //height
        anchors.left: taskGroupLeftCorner.right
        anchors.leftMargin: (187.46/221)* parent.width
        anchors.top: taskGroupLeftCorner.bottom
        anchors.topMargin: (76.46/106)* parent.height
        source: (colorItem ==="#37345E")?"../appIMG/1.TaskScren/trash-outline-4x.png":"../appIMG/7.LightMode/trash-outline-4x.png"
    }

    MouseArea {
        id: itemMouseArea
        anchors.fill: parent
        hoverEnabled: true
    }

    onHeightChanged: {
        var rateTextSize = height/105
        txt_2.textSize = 7 * rateTextSize
        txt_3.textSize = 9 * rateTextSize
        txt_4.textSize = 7 * rateTextSize
        txt_5.textSize = 7 * rateTextSize
        txt_6.textSize = 7 * rateTextSize
    }
}

