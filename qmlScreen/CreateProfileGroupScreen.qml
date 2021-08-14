import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_createProfileGroupScreen
    visible: true
//    title: qsTr("Create Proxy Group Screen")
    //    flags:Qt.FramelessWindowHint
//    width: 582
//    height: 300
    property bool dashboardNormalTheme: true
    function changeTheme(abcd) {
        console.log("TaskScreen " + abcd)
        dashboardNormalTheme = abcd
    }

    function updateTheme() {
        var nColor = "#FFFFFF" //white
        var abnColor = "#000000" //black
        if (dashboardNormalTheme) {
            txt_3.color = nColor
            txt_3_1.color = nColor
        } else {
            txt_3.color = abnColor
            txt_3_1.color = abnColor
        }
    }

    onDashboardNormalThemeChanged: {
        updateTheme()
    }

    color: dashboardNormalTheme?"#37345E":"#FFFFFF"
    radius: 5

    signal signalFromCreateScreen(string msg)
    property int currentWidth: m_createProfileGroupScreen.width
    property int currentHeight: m_createProfileGroupScreen.height

    property int defaultWidth: 582
    property int defaultHeight: 300

    property var listItemID: []
    property var listCBBID: []
    property var listTXTID: []

    Text {
        id: createProfileScreenborderLeftMain
        x: 0
        y: 0
        width: 0
        height: 0
    }

    Rectangle {
        id: item_1
//        width: 552
//        height: 62
//        x: 15
//        y: 16
        width: (552/defaultWidth) * parent.width //width
        height: (62/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (15/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (16/defaultHeight)* parent.height //y
        color: "#907DE2"
        radius: 5
    }
    Text {
        id: txt_1
        property int txtSize: 13
//        width: 149
//        height: 19
//        x: 25
//        y: 21
        width: (149/defaultWidth) * parent.width //width
        height: (19/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (40/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (36/defaultHeight)* parent.height //y
        text: qsTr("Create Profile Group")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#FFFFFF"
    }
    Image {
        id: item_2
//        width: 240
//        height: 44
//        x: 297
//        y: 18
        width: (240/defaultWidth) * parent.width //width
        height: (44/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (312/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (34/defaultHeight)* parent.height //y
        source: "../image/create_task_donw_oval.png"
    }

    Text {
        id: txt_2
        property int txtSize: 9
//        width: 73
//        height: 15
//        x: 40
//        y: 106
        width: (73/defaultWidth) * parent.width //width
        height: (15/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (40/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (106/defaultHeight)* parent.height //y
        text: qsTr("Group Name")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_3
//        width: 502
//        height: 30
//        x: 40
//        y: 130
        width: (502/defaultWidth) * parent.width //width
        height: (30/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (40/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (130/defaultHeight)* parent.height //y
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        radius: 5
        clip: true
        Text {
            id: item_left_margin
            x: 0
            y: 0
            width: 0
            height: 0
        }

        TextInput {
            id: txt_3
            property int txtSize: 9
//            width: 470
//            height: 15
//            x: 12
//            y: 8
            width: (470/502) * parent.width //width
            height: (15/40) * parent.height //height
            anchors.left: item_left_margin.right
            anchors.leftMargin: (12/502)* parent.width
            anchors.verticalCenter: parent.verticalCenter
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("Enter Name")

            property string placeholderText: "Enter Name"

            Text {
                text: txt_3.placeholderText
                color: "#6a687d"
                visible: !txt_3.text
                font: txt_3.font
            }
        }
    }

    Text {
        id: txt_2_1
        property int txtSize: 9
//        width: 73
//        height: 15
//        x: 40
//        y: 174
        width: (73/defaultWidth) * parent.width //width
        height: (15/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (40/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (174/defaultHeight)* parent.height //y
        text: qsTr("Group Description")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_3_1
//        width: 502
//        height: 30
//        x: 40
//        y: 198
        width: (502/defaultWidth) * parent.width //width
        height: (30/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (40/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (198/defaultHeight)* parent.height //y
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        radius: 5
        clip: true
        Text {
            id: item_left_margin2
            x: 0
            y: 0
            width: 0
            height: 0
        }

        TextInput {
            id: txt_3_1
            property int txtSize: 9
//            width: 470
//            height: 15
//            x: 12
//            y: 8
            width: (470/502) * parent.width //width
            height: (15/40) * parent.height //height
            anchors.left: item_left_margin2.right
            anchors.leftMargin: (12/502)* parent.width
            anchors.verticalCenter: parent.verticalCenter
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("Enter Group Description")

            property string placeholderText: "Enter Group Description"

            Text {
                text: txt_3_1.placeholderText
                color: "#6a687d"
                visible: !txt_3_1.text
                font: txt_3_1.font
            }
        }
    }

    Rectangle {
        id: item_4
//        width: 118
//        height: 30
//        x: 299
//        y: 260
        width: (118/defaultWidth) * parent.width //width
        height: (30/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (299/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (260/defaultHeight)* parent.height //y
        color: "transparent"
        border.color: dashboardNormalTheme?"#3F3C68":"#EEF0F6"
        radius: 5
    }
    Text {
        id: txt_10
        property int txtSize: 9
//        width: 41
//        height: 15
//        x: 39
//        y: 7
        width: (41/defaultWidth) * parent.width //width
        height: (15/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (338/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (268/defaultHeight)* parent.height //y
        text: qsTr("Cancel")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }
    MouseArea {
        anchors.fill: item_4
        onPressed: {
            item_4.color = "#3F3C68"
        }
        onReleased: {
            item_4.color = "transparent"
        }
        onClicked: {
            console.log("Create Profile Group Screen")
            m_createProfileGroupScreen.signalFromCreateScreen("evG_Cancel");
        }
    }

    Rectangle {
        id: item_5
//        width: 118
//        height: 30
//        x: 424
//        y: 260
        width: (118/defaultWidth) * parent.width //width
        height: (30/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (424/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (260/defaultHeight)* parent.height //y
        color: dashboardNormalTheme?"#FFFFFF":"#F7F8FC"
        border.color: dashboardNormalTheme?"#3F3C68":"#EEF0F6"
        radius: 5
    }
    Text {
        id: txt_11
        property int txtSize: 9
//        width: 70
//        height: 15
//        x: 18
//        y: 8
        width: (70/defaultWidth) * parent.width //width
        height: (15/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (439/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (268/defaultHeight)* parent.height //y
        text: qsTr("Create Group")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#2E2C50"
    }
    MouseArea {
        anchors.fill: item_5
        onClicked: {
            console.log("Create group button")
            m_createProfileGroupScreen.signalFromCreateScreen("create_profile_group_create");
        }
    }
    Image {
        id: item_6
//        width: 4
//        height: 7
//        x: 104
//        y: 12
        width: (4/defaultWidth) * parent.width //width
        height: (7/defaultHeight) * parent.height //height
        anchors.left: createProfileScreenborderLeftMain.right
        anchors.leftMargin: (528/defaultWidth)* parent.width //x
        anchors.top: createProfileScreenborderLeftMain.bottom
        anchors.topMargin: (272/defaultHeight)* parent.height //y
        source: "../image/Proxy/arrow-right.png"
    }
    Component.onCompleted: {
        updateTheme();
//        listItemID.push(item_1)
//        listItemID.push(item_2)
//        listItemID.push(item_3)
//        listItemID.push(item_3_1)
//        listItemID.push(item_4)
//        listItemID.push(item_5)
//        listItemID.push(item_6)

        listTXTID.push(txt_1)
        listTXTID.push(txt_2)
        listTXTID.push(txt_3)
        listTXTID.push(txt_2_1)
        listTXTID.push(txt_3_1)
        listTXTID.push(txt_10)
        listTXTID.push(txt_11)
    }

//    onWidthChanged: {
//        var rate = width/currentWidth
//        for (var i = 0; i < listItemID.length; i++) {
//            listItemID[i].x = listItemID[i].x * rate
//            listItemID[i].width = listItemID[i].width * rate
//        }

//        for (var j = 0; j < listCBBID.length; j++) {
//            listCBBID[j].x = listCBBID[j].x * rate
//            listCBBID[j].width = listCBBID[j].width * rate
//        }

//        for (var k = 0; k < listTXTID.length; k++) {
//            listTXTID[k].x = listTXTID[k].x * rate
//            listTXTID[k].width = listTXTID[k].width * rate
//        }
//    }

    onHeightChanged: {
        var rateTextSize = height/247

        for (var j = 0; j < listCBBID.length; j++) {
            listCBBID[j].txtSize = 9 * rateTextSize
        }

        for (var k = 0; k < listTXTID.length; k++) {
            if (k!=0) {
                listTXTID[k].txtSize = 9 * rateTextSize
            }
        }
            txt_1.txtSize = 13 * rateTextSize
    }
}
