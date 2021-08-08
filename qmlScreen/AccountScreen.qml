import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_accountScreen
    visible: true
    width: 1135
    height: 730
//    title: qsTr("Account Screen")
    color: "#2E2C50"
//    flags:Qt.FramelessWindowHint
    signal message(string msg)
    property int currentWidth: m_accountScreen.width
    property int currentHeight: m_accountScreen.height

    property var listItemID: []
    property var listListViewID: []
    property var listTXT_7: []
    property var listTXT_8: []
    property var listTXT_9: []
    property var listTXT_13: []

    Text {
        id: accountScreenborderLeftMain
        x: 0
        y: 0
        width: 0
        height: 0
    }

    Rectangle {
        id: item10
//        x: 0
//        y: 0
//        width: 284
//        height: 730
        width: (284/1135) * m_accountScreen.width //width
        height: (730/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (0/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (0/730)* parent.height //y
        color: "#282645"
    }
    Text {
        id: txt_1
        property int textSize: 13
        text: qsTr("Account Groups")
//        width: 122
//        height: 19
//        x: 33
//        y: 19
        width: (122/1135) * m_accountScreen.width //width
        height: (19/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: item11
//        width: 21
//        height: 21
//        x: 176
//        y: 19
        width: (21/1135) * m_accountScreen.width //width
        height: (21/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (173/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        source: "qrc:/image/0.Common/Add_inactive_icon.png"
    }
    //List profile group
    ListView {
        id: list_1
//        width: 221
//        height: 660
//        x: 33
//        y: 64
        width: (221/1135) * m_accountScreen.width //width
        height: (660/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (64/730)* parent.height //y
        spacing: 8
        model: AccountGroupModel {}
        delegate: AccountGroupDelegate {
            accountGroupWidthItem: (221/1135) * m_accountScreen.width
            accountGroupHeightItem: (63/730) * m_accountScreen.height
        }
        clip: true
    }

    Text {
        id: txt_2
        property int textSize: 13
        text: qsTr("Accounts")
//        width: 71
//        height: 19
//        x: 27
//        y: 19
        width: (71/1135) * m_accountScreen.width //width
        height: (19/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (20/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: item15
//        width: 21
//        height: 21
//        x: 118
//        y: 19
        width: (21/1135) * m_accountScreen.width //width
        height: (21/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (399/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        source: "qrc:/image/0.Common/Add_inactive_icon.png"

    }
    MouseArea {
        anchors.fill: item15
        onClicked: {
            console.log("Add new Profile Item")
        }
    }
    Rectangle {
        id: item16
//        width: 196
//        height: 30
//        x: 27
//        y: 56
        width: (196/1135) * m_accountScreen.width //width
        height: (30/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (56/730)* parent.height //y
        color: "#37345E"
        clip: true
        radius: 3
    }
    TextInput {
        id: txt_3
        property int textSize: 9
//        width: 170
//        height: 15
//        x: 12
//        y: 9
        width: (170/1135) * m_accountScreen.width //width
        height: (15/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (323/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (63/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: qsTr("Footlocker")
    }
    Rectangle {
        id: item17
//        width: 98
//        height: 30
//        x: 235
//        y: 56
        width: (98/1135) * m_accountScreen.width //width
        height: (30/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (576/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (56/730)* parent.height //y
        color: "#FFFFFF"
        radius: 5
    }
    Text {
        id: txt_4
        property int textSize: 9
//        width: 47
//        height: 15
//        x: 20
//        y: 8
        width: (47/1135) * m_accountScreen.width //width
        height: (15/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (596/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (64/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#2E2C50"
        text: qsTr("Confirm")
    }
    Image {
        id: item18
//        width: 3.5
//        height: 7
//        x: 74
//        y: 12
        width: (4/1135) * m_accountScreen.width //width
        height: (7/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (650/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (68/730)* parent.height //y
        source: "qrc:/image/Proxy/arrow-right.png"
    }
    MouseArea {
        anchors.fill: item17
        onClicked: {
            console.log("Confirm button")
        }
    }
    Rectangle {
        id: item19
//        width: 104
//        height: 30
//        x: 714
//        y: 56
        width: (104/1135) * m_accountScreen.width //width
        height: (30/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (998/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (56/730)* parent.height //y
        color: "#FFFFFF"
        radius: 5
    }
    Text {
        id: txt_5
        property int textSize: 9
//        width: 56
//        height: 15
//        x: 14
//        y: 8
        width: (56/1135) * m_accountScreen.width //width
        height: (15/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (1012/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (64/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FA5B79"
        text: qsTr("Delete All")
    }
    Image {
        id: item20
//        width: 12
//        height: 12
//        x: 77
//        y: 9
        width: (12/1135) * m_accountScreen.width //width
        height: (12/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (1076/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (65/730)* parent.height //y
        source: "qrc:/image/Proxy/trash-outline-red.png"
    }
    MouseArea {
        anchors.fill: item19
        onClicked: {
            console.log("Delete All button")
        }
    }
    Rectangle {
        id: item21
//        width: 363
//        height: 546
//        x: 27
//        y: 102
        width: (363/1135) * m_accountScreen.width //width
        height: (546/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (102/730)* parent.height //y
        color: "#37345E"
        radius: 3
    }
    Text {
        id: txt_6
        property int textSize: 9
//        width: 323
//        height: 15
//        x: 20
//        y: 17
        width: (323/1135) * m_accountScreen.width //width
        height: (15/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (331/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (119/730)* parent.height //y
        font.family: "Inter"
        wrapMode: Text.WrapAnywhere
        font.pointSize: textSize
        color: "#75719B"
        text: qsTr("email:pass")
    }
    Rectangle {
        id: item211
//        width: 104
//        height: 30
//        x: 286
//        y: 664
        width: (104/1135) * m_accountScreen.width //width
        height: (30/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (570/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (664/730)* parent.height //y
        color: "#FFFFFF"
        radius: 5
    }
    Text {
        id: txt_7
        property int textSize: 9
        text: qsTr("Save List")
//        width: 53
//        height: 15
//        x: 17
//        y: 8
        width: (53/1135) * m_accountScreen.width //width
        height: (15/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (587/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (672/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#2AE182"
    }
    Image {
        id: item212
//        width: 12
//        height: 12
//        x: 74
//        y: 9
        width: (12/1135) * m_accountScreen.width //width
        height: (12/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (644/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (673/730)* parent.height //y
        source: "qrc:/image/Account/save-outline.png"
    }
    MouseArea {
        anchors.fill: item211
        onClicked: {
            console.log("Save button")
        }
    }
    Rectangle {
        id: item213
//        width: 406
//        height: 30
//        x: 412
//        y: 102
        width: (406/1135) * m_accountScreen.width //width
        height: (30/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (696/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (102/730)* parent.height //y
        color: "#907DE2"
        radius: 3
    }
    Text {
        id: txt_8
        property int textSize: 8
        text: qsTr("EMAIL")
//        width: 31
//        height: 12
//        x: 19
//        y: 9
        width: (31/1135) * m_accountScreen.width //width
        height: (12/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (715/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: txt_9
        property int textSize: 8
        text: qsTr("PASSWORD")
//        width: 40
//        height: 12
//        x: 180
//        y: 9
        width: (40/1135) * m_accountScreen.width //width
        height: (12/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (876/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: txt_10
        property int textSize: 8
        text: qsTr("ACTIONS")
//        width: 46
//        height: 12
//        x: 335
//        y: 9
        width: (46/1135) * m_accountScreen.width //width
        height: (12/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (1031/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: item22
//        width: 9
//        height: 555
//        x: 807
//        y: 145
        width: (9/1135) * m_accountScreen.width //width
        height: (555/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (1091.5/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (148/730)* parent.height //y
        source: "qrc:/image/0.Common/task_scroll_border.png"
    }
    //List item
    ListView {
        id: list_2
//        width: 406
//        height: 558
//        x: 412
//        y: 144
        width: (406/1135) * m_accountScreen.width //width
        height: (558/730) * m_accountScreen.height //height
        anchors.left: accountScreenborderLeftMain.right
        anchors.leftMargin: (696/1135)* parent.width //x
        anchors.top: accountScreenborderLeftMain.bottom
        anchors.topMargin: (144/730)* parent.height //y
        spacing: 8
        model: AccountItemModel {}
        delegate: AccountItemDeletegate {
            accountItemWidthItem: (385/1135) * m_accountScreen.width
            accountItemHeightItem: (30/730) * m_accountScreen.height
        }
        clip: true
        flickableDirection: Flickable.VerticalFlick
        boundsBehavior: Flickable.StopAtBounds
        ScrollBar.vertical: ScrollBar {
            contentItem: Rectangle {
                id: rec_4
                implicitWidth: (9/1135) * m_accountScreen.width
                implicitHeight: (221/730) * m_accountScreen.height
                color: "#423F6B"
                radius: 10
            }
        }
    }

    Component.onCompleted: {
        listTXT_9.push(txt_3)
        listTXT_9.push(txt_4)
        listTXT_9.push(txt_5)

        listTXT_8.push(txt_6)
        listTXT_8.push(txt_7)
        listTXT_8.push(txt_8)
        listTXT_8.push(txt_9)
        listTXT_8.push(txt_10)

        listTXT_13.push(txt_1)
        listTXT_13.push(txt_2)
    }
    onHeightChanged: {
        var rateTextSize = height/730
        for (var l = 0; l < listTXT_8.length; l++) {
            listTXT_8[l].textSize = 8 * rateTextSize
        }
        for (var m = 0; m < listTXT_9.length; m++) {
            listTXT_9[m].textSize = 9 * rateTextSize
        }
        for (var n = 0; n < listTXT_13.length; n++) {
            listTXT_13[n].textSize = 13 * rateTextSize
        }
    }
}
