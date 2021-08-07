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

    width: taskItemWidthDelegate
    height: taskItemHeightDelegate
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: taskItemRec_3_4
        width: taskItemWidthDelegate
        height: taskItemHeightDelegate
        color: "#37345E"
        radius: 3

        MouseArea {
            anchors.fill: parent
            onPressed: {
                taskItemRec_3_4.color = "#907DE2"
            }
            onReleased: {
                taskItemRec_3_4.color = "#37345E"
            }
            onClicked: {
                console.log(taskItemRec_3_4.width)
            }
        }
        onWidthChanged: {
//            console.log("hunght abcd " + width)
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
        width: 5
        height: 12
//        x: 12
//        y: 9
        anchors.left: leftCorner.right
        anchors.leftMargin: (12/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: idtxtContent
    }

    Text {
        id: taskItemTxt_30
        width: 97
        height: 12
//        x: 40
//        y: 9
        anchors.left: leftCorner.right
        anchors.leftMargin: (40/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: productContent
    }

    Text {
        id: taskItemTxt_31
        width: 16
        height: 12
//        x: 235
//        y: 9
        anchors.left: leftCorner.right
        anchors.leftMargin: (235/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: sizeContent
    }

    Text {
        id: taskItemTxt_32
        width: 52
        height: 12
//        x: 280
//        y: 9
        anchors.left: leftCorner.right
        anchors.leftMargin: (280/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: siteContent
    }

    Text {
        id: taskItemTxt_33
        width: 45
        height: 12
//        x: 377
//        y: 9
        anchors.left: leftCorner.right
        anchors.leftMargin: (377/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: profileContent
    }

    Text {
        id: taskItemTxt_35
        width: 57
        height: 12
//        x: 468
//        y: 9
        anchors.left: leftCorner.right
        anchors.leftMargin: (468/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: proxyContent
    }

    Text {
        id: taskItemTxt_36
        width: 69
        height: 12
//        x: 575
//        y: 9
        anchors.left: leftCorner.right
        anchors.leftMargin: (575/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: statusColor
        text: statusContent
    }

    Image {
        id: taskItemImg_37
        width: 20
        height: 20
//        x: 696
//        y: 5
        anchors.left: leftCorner.right
        anchors.leftMargin: (696/770)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: action1Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action1")
            }
        }
    }

    Image {
        id: taskItemImg_38
        width: 20
        height: 20
//        x: 720
//        y: 5
        anchors.left: leftCorner.right
        anchors.leftMargin: (720/770)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: action2Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action2")
            }
        }
    }

    Image {
        id: taskItemImg_39
        width: 20
        height: 20
//        x: 744
//        y: 5
        anchors.left: leftCorner.right
        anchors.leftMargin: (744/770)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: action3Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action3")
            }
        }
    }

    Component.onCompleted: {
//        taskItemListIMG_ID_DetailItem.push(taskItemImg_37)
//        taskItemListIMG_ID_DetailItem.push(taskItemImg_38)
//        taskItemListIMG_ID_DetailItem.push(taskItemImg_39)
//        taskItemListIMG_ID_DetailItem.push(taskItemRec_3_4)

//        taskItemListTEXT_ID_DetailItem.push(taskItemTxt_29)
//        taskItemListTEXT_ID_DetailItem.push(taskItemTxt_30)
//        taskItemListTEXT_ID_DetailItem.push(taskItemTxt_31)
//        taskItemListTEXT_ID_DetailItem.push(taskItemTxt_32)
//        taskItemListTEXT_ID_DetailItem.push(taskItemTxt_33)
//        taskItemListTEXT_ID_DetailItem.push(taskItemTxt_35)
//        taskItemListTEXT_ID_DetailItem.push(taskItemTxt_36)
    }

    onWidthChanged: {
        var rate = width/taskItemCurrentDetaiItemWidth
        for (var a = 0; a < taskItemListIMG_ID_DetailItem.length; a++) {
            taskItemListIMG_ID_DetailItem[a].x = taskItemListIMG_ID_DetailItem[a].x * rate
            taskItemListIMG_ID_DetailItem[a].width = taskItemListIMG_ID_DetailItem[a].width * rate
        }

        for (var b = 0; b < taskItemListTEXT_ID_DetailItem.length; b++) {
            taskItemListTEXT_ID_DetailItem[b].x = taskItemListTEXT_ID_DetailItem[b].x * rate
            taskItemListTEXT_ID_DetailItem[b].width = taskItemListTEXT_ID_DetailItem[b].width * rate
        }
    }
}
