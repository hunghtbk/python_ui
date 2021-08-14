import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_proxyScreen
    visible: true
    width: 1135
    height: 730
//    title: qsTr("Task Screen")
    color: "transparent"
//    flags:Qt.FramelessWindowHint

    signal message(string msg)
    signal sendThemeValueToPopup(bool value)
    property int currentWidth: m_proxyScreen.width
    property int currentHeight: m_proxyScreen.height

    property var listTXT_7: []
    property var listTXT_8: []
    property var listTXT_9: []
    property var listTXT_13: []

    property bool dashboardNormalTheme: true

    function changeTheme(abcd) {
        console.log("TaskScreen " + abcd)
        dashboardNormalTheme = abcd
    }

    function updateTheme() {
        var nColor = "#FFFFFF" //white
        var abnColor = "#000000" //black
        if (dashboardNormalTheme) {
            txt_1.color = nColor
            txt_2.color = nColor
            txt_3.color = nColor
            txt_6.color = nColor
        } else {
            txt_1.color = abnColor
            txt_2.color = abnColor
            txt_3.color = abnColor
            txt_6.color = abnColor
        }
    }

    onDashboardNormalThemeChanged: {
        updateTheme()
    }

    Text {
        id: proxyScreenborderLeftMain
        x: 0
        y: 0
        width: 0
        height: 0
    }

//    Rectangle {
//        id: item10
////        x: 0
////        y: 0
////        width: 284
////        height: 730
//        width: (284/1135) * m_proxyScreen.width //width
//        height: (730/730) * m_proxyScreen.height //height
//        anchors.left: proxyScreenborderLeftMain.right
//        anchors.leftMargin: (0/1135)* parent.width //x
//        anchors.top: proxyScreenborderLeftMain.bottom
//        anchors.topMargin: (0/730)* parent.height //y
//        color: "#282645"

//    }
    Text {
        id: txt_1
        property int textSize: 13
        text: qsTr("Proxy Groups")
//        width: 108
//        height: 19
//        x: 33
//        y: 19
        width: (108/1135) * m_proxyScreen.width //width
        height: (19/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: item11
//        width: 21
//        height: 21
//        x: 158
//        y: 19
        width: (21/1135) * m_proxyScreen.width //width
        height: (21/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (152/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        source: dashboardNormalTheme?"../appIMG/3.ProxyScreen/Add_item_4x.png":"../appIMG/7.LightMode/Add-icon-4x.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Add group proxy")
                m_proxyScreen.message("proxy_screen_add_group")
            }
        }
    }
    //List profile group
    ListView {
        id: list_1
//        width: 221
//        height: 660
//        x: 33
//        y: 64
        width: (221/1135) * m_proxyScreen.width //width
        height: (660/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (64/730)* parent.height //y
        spacing: 8
        model: ProxyGroupModel {}
        delegate: ProxyGroupDelegate {
            proxyGroupWidthItem: (221/1135) * m_proxyScreen.width
            proxyGroupHeightItem: (63/730) * m_proxyScreen.height
            colorItem: dashboardNormalTheme?"#37345E":"#FFFFFF"
        }
        clip: true
    }

    Text {
        id: txt_2
        property int textSize: 13
        text: qsTr("Proxies")
//        width: 57
//        height: 19
//        x: 27
//        y: 19
        width: (57/1135) * m_proxyScreen.width //width
        height: (19/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    /*
    Image {
        id: item15
//        width: 21
//        height: 21
//        x: 100
//        y: 19
        width: (21/1135) * m_proxyScreen.width //width
        height: (21/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (384/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        source: dashboardNormalTheme?"../appIMG/3.ProxyScreen/Add_item_4x.png":"../appIMG/7.LightMode/Add-icon-4x.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Add new Profile Item")
            }
        }
    }
    */
    Rectangle {
        id: item16
//        width: 196
//        height: 30
//        x: 27
//        y: 56
        width: (196/1135) * m_proxyScreen.width //width
        height: (30/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (56/730)* parent.height //y
        color: dashboardNormalTheme?"#37345E":"#EFF0F6"
        clip: true
        radius: 5

        Text {
            id: leftMargin
            x: 0
            y: 0
            width: 0
            height: 0
        }
        TextInput {
            id: txt_3
            property int textSize: 9
    //        width: 170
    //        height: 15
    //        x: 12
    //        y: 9
            width: (170/196) * parent.width //width
            height: (15/30) * parent.height //height
            anchors.left: leftMargin.right
            anchors.leftMargin: (12/196)* parent.width //x
            anchors.top: leftMargin.bottom
            anchors.topMargin: (9/30)* parent.height //y
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            selectByMouse: true
    //        text: qsTr("Privacy")

            property string placeholderText: "Enter Proxy Name..."

            Text {
                text: txt_3.placeholderText
                color: "#6a687d"
                visible: !txt_3.text
                font: txt_3.font
            }
        }
    }
    Rectangle {
        id: item17
//        width: 98
//        height: 30
//        x: 235
//        y: 56
        width: (98/1135) * m_proxyScreen.width //width
        height: (30/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (576/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
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
        width: (47/1135) * m_proxyScreen.width //width
        height: (15/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (596/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
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
        width: (4/1135) * m_proxyScreen.width //width
        height: (7/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (650/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (68/730)* parent.height //y
        source: "../appIMG/3.ProxyScreen/arrow-right-4x.png"
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
        width: (104/1135) * m_proxyScreen.width //width
        height: (30/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (998/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
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
        width: (56/1135) * m_proxyScreen.width //width
        height: (15/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (1012/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
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
        width: (12/1135) * m_proxyScreen.width //width
        height: (12/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (1075/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (65/730)* parent.height //y
        source: "../appIMG/3.ProxyScreen/item_trash_outline_4x.png"
    }
    MouseArea {
        anchors.fill: item19
        onClicked: {
            console.log("Delete All button")
            loader_notification.source = "DeleteAllProxiesNotification.qml"
            bacgroundForLoaderpopup.visible = true
            m_proxyScreen.sendThemeValueToPopup(dashboardNormalTheme)
        }
    }
    Rectangle {
        id: item21
//        width: 363
//        height: 546
//        x: 27
//        y: 102
        width: (363/1135) * m_proxyScreen.width //width
        height: (546/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (102/730)* parent.height //y
        color: dashboardNormalTheme?"#37345E":"#EFF0F6"
        radius: 5

        Text {
            id: leftMarginTextInput
            x: 0
            y: 0
            width: 0
            height: 0
        }

        /*
        TextInput {
            id: txt_6
            property int textSize: 9
    //        width: 323
    //        height: 15
    //        x: 20
    //        y: 17
            width: (323/363) * parent.width //width
            height: (500/546) * parent.height //height
            anchors.left: leftMarginTextInput.right
            anchors.leftMargin: (20/363)* parent.width //x
            anchors.top: leftMarginTextInput.bottom
            anchors.topMargin: (17/546)* parent.height //y
            font.family: "Inter"
            wrapMode: Text.WrapAnywhere
            font.pointSize: textSize
            color: "#75719B"
    //        text: qsTr("ip:auth:user:pass")
            property string placeholderText: "ip:auth:user:pass"

            Text {
                text: txt_6.placeholderText
                color: "#6a687d"
                visible: !txt_6.text
                font: txt_6.font
            }
        }
        */
        TextArea {
            id: txt_6
            property int textSize: 9
            width: (340/363) * parent.width //width
            height: (500/546) * parent.height //height
            anchors.left: leftMarginTextInput.right
            anchors.leftMargin: (10/363)* parent.width //x
            anchors.top: leftMarginTextInput.bottom
            anchors.topMargin: (12/546)* parent.height //y
            font.family: "Inter"
            wrapMode: Text.WrapAnywhere
            font.pointSize: textSize
            color: "#75719B"
            placeholderText: qsTr("ip:auth:user:pass")
            selectByMouse: true
        }
    }
    Rectangle {
        id: item211
//        width: 104
//        height: 30
//        x: 286
//        y: 664
        width: (104/1135) * m_proxyScreen.width //width
        height: (30/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (570/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
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
        width: (53/1135) * m_proxyScreen.width //width
        height: (15/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (587/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (671/730)* parent.height //y
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
        width: (12/1135) * m_proxyScreen.width //width
        height: (12/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (644/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (673/730)* parent.height //y
        source: "../appIMG/3.ProxyScreen/save-outline-4x.png"
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
        width: (406/1135) * m_proxyScreen.width //width
        height: (30/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (696/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (102/730)* parent.height //y
        color: "#907DE2"
        radius: 5
    }
    Text {
        id: txt_8
        property int textSize: 8
        text: qsTr("PROXY")
//        width: 35
//        height: 12
//        x: 19
//        y: 9
        width: (35/1135) * m_proxyScreen.width //width
        height: (12/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (715/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: txt_9
        property int textSize: 8
        text: qsTr("STATUS")
//        width: 40
//        height: 12
//        x: 271
//        y: 9
        width: (40/1135) * m_proxyScreen.width //width
        height: (12/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (967/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
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
        width: (46/1135) * m_proxyScreen.width //width
        height: (12/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (1031/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Rectangle {
        id: item22
//        width: 9
//        height: 555
//        x: 807
//        y: 145
        width: (9/1135) * m_proxyScreen.width //width
        height: (555/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (1091.5/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (148/730)* parent.height //y
        color: dashboardNormalTheme?"#282645":"#d7d6de"
        radius: 5
    }
    //List item
    ListView {
        id: list_2
//            width: 406
//            height: 558
//            x: 412
//            y: 144
        width: (406/1135) * m_proxyScreen.width //width
        height: (558/730) * m_proxyScreen.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (696/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (144/730)* parent.height //y
        spacing: 8
        model: ProxyItemModel {}
        delegate: ProxyItemDeletegate {
            proxyItemWidthItem: (385/1135) * m_proxyScreen.width
            proxyItemHeightItem: (30/730) * m_proxyScreen.height
            colorItem: dashboardNormalTheme?"#37345E":"#FFFFFF"
        }
        clip: true
        flickableDirection: Flickable.VerticalFlick
        boundsBehavior: Flickable.StopAtBounds
        ScrollBar.vertical: ScrollBar {
            contentItem: Rectangle {
                id: rec_4
                implicitWidth: (9/1135) * m_proxyScreen.width
                implicitHeight: (221/730) * m_proxyScreen.height
                color: dashboardNormalTheme?"#423F6B":"#FFFFFF"
                radius: 10
            }
        }
    }

    Rectangle {
        id: bacgroundForLoaderpopup
        x: -65
        y: 0
        width: (1200/1135) * m_proxyScreen.width
        height: (730/730) * m_proxyScreen.height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (-65/1135)* parent.width
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (0/730)* parent.height
        color: dashboardNormalTheme?"#000000":"#F2F2F2"
        opacity: 0.5
        visible: false

        Text {
            id: leftMarginBackground
            x: 0
            y: 0
            width: 0
            height: 0
        }

        MouseArea {
            width: parent.width
            height: (670/730)* m_proxyScreen.height
            anchors.top: leftMarginBackground.bottom
            anchors.topMargin: (60/730)* m_proxyScreen.height
        }
    }

    Loader {
        id: loader_notification
        width: (500/1135) * parent.width //width
        height: (150/730) * parent.height //height
        anchors.left: proxyScreenborderLeftMain.right
        anchors.leftMargin: (309/1135)* parent.width //x
        anchors.top: proxyScreenborderLeftMain.bottom
        anchors.topMargin: (215/730)* parent.height //y
        source: ""
        onLoaded: m_proxyScreen.sendThemeValueToPopup.connect(loader_notification.item.changeThemePopup)
    }

    Connections {
        target: loader_notification.item
        onDeleteAllProxiesMessage: {
            handleMsg(msg)
        }
    }

    function handleMsg(msg) {
        console.log(msg)
        if (msg === "delete_all_proxies_cancel") {
            loader_notification.source = ""
        } else if (msg === "delete_all_proxies_ok") {
            loader_notification.source = ""
        }
        bacgroundForLoaderpopup.visible = false
    }

    Component.onCompleted: {
        updateTheme()
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
