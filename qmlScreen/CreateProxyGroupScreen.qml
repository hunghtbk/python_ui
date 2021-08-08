import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_createProxyGroupScreen
    visible: true
//    title: qsTr("Create Proxy Group Screen")
    //    flags:Qt.FramelessWindowHint
//    width: 582
//    height: 300
    color: "#37345E"

    signal signalFromCreateScreen(string msg)
    property int currentWidth: m_createProxyGroupScreen.width
    property int currentHeight: m_createProxyGroupScreen.height

    property var listItemID: []
    property var listCBBID: []
    property var listTXTID: []

    Rectangle {
        id: item_1
        width: 552
        height: 62
        x: 15
        y: 16
        color: "#907DE2"
        Text {
            id: txt_1
            property int txtSize: 13
            width: 149
            height: 19
            x: 25
            y: 21
            text: qsTr("Create Proxy Group")
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#FFFFFF"
        }
        Image {
            id: item_2
            width: 240
            height: 44
            x: 297
            y: 18
            source: "qrc:/image/create_task_donw_oval.png"
        }
    }

    Text {
        id: txt_2
        property int txtSize: 9
        width: 73
        height: 15
        x: 40
        y: 106
        text: qsTr("Group Name")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#FFFFFF"
    }

    Rectangle {
        id: item_3
        width: 502
        height: 30
        x: 40
        y: 130
        color: "#3F3C68"

        TextInput {
            id: txt_3
            property int txtSize: 9
            width: 470
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            text: qsTr("Enter Name")
        }
    }

    Text {
        id: txt_2_1
        property int txtSize: 9
        width: 73
        height: 15
        x: 40
        y: 174
        text: qsTr("Group Description")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#FFFFFF"
    }

    Rectangle {
        id: item_3_1
        width: 502
        height: 30
        x: 40
        y: 198
        color: "#3F3C68"

        TextInput {
            id: txt_3_1
            property int txtSize: 9
            width: 470
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            text: qsTr("Enter Group Description")
        }
    }

    Rectangle {
        id: item_4
        width: 118
        height: 30
        x: 299
        y: 260
        color: "transparent"
        border.color: "#3F3C68"
        radius: 5
        Text {
            id: txt_10
            property int txtSize: 9
            width: 41
            height: 15
            x: 39
            y: 7
            text: qsTr("Cancel")
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#FFFFFF"
        }
        MouseArea {
            anchors.fill: parent
            onPressed: {
                item_4.color = "#3F3C68"
            }
            onReleased: {
                item_4.color = "transparent"
            }
            onClicked: {
                console.log("Cancle button")
            }
        }
    }

    Rectangle {
        id: item_5
        width: 118
        height: 30
        x: 424
        y: 260
        color: "#FFFFFF"
        border.color: "#3F3C68"
        radius: 5
        Text {
            id: txt_11
            property int txtSize: 9
            width: 70
            height: 15
            x: 18
            y: 8
            text: qsTr("Create Group")
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#2E2C50"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Create group button")
            }
        }

        Image {
            id: item_6
            width: 4
            height: 7
            x: 104
            y: 12
            source: "qrc:/image/Proxy/arrow-right.png"
        }
    }
    Component.onCompleted: {
        listItemID.push(item_1)
        listItemID.push(item_2)
        listItemID.push(item_3)
        listItemID.push(item_3_1)
        listItemID.push(item_4)
        listItemID.push(item_5)
        listItemID.push(item_6)

        listTXTID.push(txt_1)
        listTXTID.push(txt_2)
        listTXTID.push(txt_3)
        listTXTID.push(txt_2_1)
        listTXTID.push(txt_3_1)
        listTXTID.push(txt_10)
        listTXTID.push(txt_11)
    }

    onWidthChanged: {
        var rate = width/currentWidth
        for (var i = 0; i < listItemID.length; i++) {
            listItemID[i].x = listItemID[i].x * rate
            listItemID[i].width = listItemID[i].width * rate
        }

        for (var j = 0; j < listCBBID.length; j++) {
            listCBBID[j].x = listCBBID[j].x * rate
            listCBBID[j].width = listCBBID[j].width * rate
        }

        for (var k = 0; k < listTXTID.length; k++) {
            listTXTID[k].x = listTXTID[k].x * rate
            listTXTID[k].width = listTXTID[k].width * rate
        }
    }

    onHeightChanged: {
        var rate = height/currentHeight
        var rateTextSize = height/247
        for (var i = 0; i < listItemID.length; i++) {
            listItemID[i].y = listItemID[i].y * rate
            listItemID[i].height = listItemID[i].height * rate
        }

        for (var j = 0; j < listCBBID.length; j++) {
            listCBBID[j].y = listCBBID[j].y * rate
            listCBBID[j].height = listCBBID[j].height * rate
            listCBBID[j].txtSize = 9 * rateTextSize
        }

        for (var k = 0; k < listTXTID.length; k++) {
            listTXTID[k].y = listTXTID[k].y * rate
            listTXTID[k].height = listTXTID[k].height * rate
            if (k!=0) {
                listTXTID[k].txtSize = 9 * rateTextSize
            }
        }
            txt_1.txtSize = 13 * rateTextSize
    }
}
