import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    id: taskItemrect_1_1
    property int taskItemWidthDelegate : 0
    property int taskItemHeightDelegate : 0

    property var taskItemListIMG_ID_DetailItem: []
    property var taskItemListTEXT_ID_DetailItem: []
    property int taskItemCurrentDetaiItemWidth: taskItemrect_1_1.width
    property string colorItem: ""
    onColorItemChanged: {
        taskItemRec_3_4.color = colorItem
    }

    signal taskItemTrigger(string msg, int itemIndex)

    width: taskItemWidthDelegate
    height: taskItemHeightDelegate
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: taskItemRec_3_4
        width: taskItemWidthDelegate
        height: taskItemHeightDelegate
        color: colorItem
        radius: 5

        MouseArea {
            anchors.fill: parent
            onPressed: {
                taskItemRec_3_4.color = "#907DE2"
            }
            onReleased: {
                taskItemRec_3_4.color = colorItem
            }
            onClicked: {
                console.log(taskItemRec_3_4.width)
            }
        }
    }

    Text {
        id: leftCorner
        width: 0
        height: 0
        text: qsTr("")
    }

    Text {
        id: taskItemTxt_29
        property int textSize: 8
//        width: 5
//        height: 12
//        x: 12
//        y: 9
        width: (5/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (14/770)* parent.width
//        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: idtxtContent
    }

    Text {
        id: taskItemTxt_30
        property int textSize: 8
//        width: 97
//        height: 12
//        x: 40
//        y: 9
        width: (97/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (40/770)* parent.width
//        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: productContent
    }

    Text {
        id: taskItemTxt_31
        property int textSize: 8
//        width: 16
//        height: 12
//        x: 235
//        y: 9
        width: (16/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (235/770)* parent.width
//        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: sizeContent
    }

    Text {
        id: taskItemTxt_32
        property int textSize: 8
//        width: 52
//        height: 12
//        x: 280
//        y: 9
        width: (52/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (280/770)* parent.width
//        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: siteContent
    }

    Text {
        id: taskItemTxt_33
        property int textSize: 8
//        width: 45
//        height: 12
//        x: 377
//        y: 9
        width: (45/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (377/770)* parent.width
//        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: profileContent
    }

    Text {
        id: taskItemTxt_35
        property int textSize: 8
//        width: 57
//        height: 12
//        x: 468
//        y: 9
        width: (57/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (468/770)* parent.width
//        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: proxyContent
    }

    Text {
        id: taskItemTxt_36
        property int textSize: 8
//        width: 69
//        height: 12
//        x: 575
//        y: 9
        width: (69/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (575/770)* parent.width
//        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: statusColor
        text: statusContent
    }

    Image {
        id: taskItemImg_37
//        width: 20
//        height: 20
//        x: 696
//        y: 5
        width: (20/770) * parent.width //width
        height: (20/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (696/770)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: (colorItem ==="#37345E")?"../appIMG/1.TaskScren/item_stop_all_4x.png":"../appIMG/7.LightMode/item_stop_all_4x.png"//action1Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action1")
            }
        }
    }

    Image {
        id: taskItemImg_38
//        width: 20
//        height: 20
//        x: 720
//        y: 5
        width: (20/770) * parent.width //width
        height: (20/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (720/770)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: (colorItem ==="#37345E")?"../appIMG/1.TaskScren/item_edit_all_4x.png":"../appIMG/7.LightMode/edit-icon-4x.png"//action2Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action2 - event from item")
                taskItemrect_1_1.taskItemTrigger("task_item_delegate_edit", index)
            }
        }
    }

    Image {
        id: taskItemImg_39
//        width: 20
//        height: 20
//        x: 744
//        y: 5
        width: (20/770) * parent.width //width
        height: (20/30) * parent.height //height
        anchors.left: leftCorner.right
        anchors.leftMargin: (744/770)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: (colorItem ==="#37345E")?"../appIMG/1.TaskScren/item_delete_all_4x.png":"../appIMG/7.LightMode/item_delete_all_4x.png"//action3Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action3")
            }
        }
    }

    onHeightChanged: {
        var rateTextSize = height/30
        taskItemTxt_29.textSize = 8 *rateTextSize
        taskItemTxt_30.textSize = 8 *rateTextSize
        taskItemTxt_31.textSize = 8 *rateTextSize
        taskItemTxt_32.textSize = 8 *rateTextSize
        taskItemTxt_33.textSize = 8 *rateTextSize
        taskItemTxt_35.textSize = 8 *rateTextSize
        taskItemTxt_36.textSize = 8 *rateTextSize
    }
}
