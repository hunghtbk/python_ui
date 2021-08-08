import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_profileScreen
    visible: true
    width: 1135
    height: 730
//    title: qsTr("Task Screen")
    color: "#2E2C50"
//    flags:Qt.FramelessWindowHint

    signal message(string msg)
    property int currentWidth: m_profileScreen.width
    property int currentHeight: m_profileScreen.height

    property var profileScreen_listItemID: []
    property var profileScreen_listListViewID: []
    property var profileScreen_listprofileScreen_txt_7: []
    property var profileScreen_listprofileScreen_txt_8: []
    property var profileScreen_listprofileScreen_txt_9: []
    property var profileScreen_listprofileScreen_txt_13: []

    Text {
        id: profileScreenborderLeftMain
        x: 0
        y: 0
        width: 0
        height: 0
    }

    Rectangle {
        id: profileScreen_item10
//        x: 0
//        y: 0
//        width: 284
//        height: 730
        width: (284/1135) * m_profileScreen.width //width
        height: (730/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (0/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (0/730)* parent.height //y
        color: "#282645"
    }
    Text {
        id: profileScreen_txt_1
        property int textSize: 13
        text: qsTr("Profile Groups")
//        width: 108
//        height: 19
//        x: 33
//        y: 19
        width: (108/1135) * m_profileScreen.width //width
        height: (19/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: profileScreen_item11
//        width: 21
//        height: 21
//        x: 158
//        y: 19
        width: (21/1135) * m_profileScreen.width //width
        height: (21/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (158/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        source: "qrc:/image/0.Common/Add_inactive_icon.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Add group profile")
                m_profileScreen.message("profile_screen_add_group")
            }
        }
    }

    //List profile group
    ListView {
        id: profileScreen_list_1
//        width: 221
//        height: 660
//        x: 33
//        y: 64
        width: (221/1135) * m_profileScreen.width //width
        height: (660/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (64/730)* parent.height //y
        spacing: 8
        model: ProfileGroupModel {}
        delegate: ProfileGroupDelegate {
            profileGroupWidthItem: (221/1135) * m_profileScreen.width
            profileGroupHeightItem: (63/730) * m_profileScreen.height
        }
        clip: true
    }

    Text {
        id: profileScreen_txt_2
        property int textSize: 13
        text: qsTr("Profiles")
//        width: 57
//        height: 19
//        x: 27
//        y: 19
        width: (57/1135) * m_profileScreen.width //width
        height: (19/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: profileScreen_item15
//        width: 21
//        height: 21
//        x: 100
//        y: 19
        width: (21/1135) * m_profileScreen.width //width
        height: (21/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (384/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        source: "qrc:/image/0.Common/Add_inactive_icon.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Add new Profile Item")
            }
        }
    }
    Rectangle {
        id: profileScreen_item16
//        width: 196
//        height: 30
//        x: 27
//        y: 56
        width: (196/1135) * m_profileScreen.width //width
        height: (30/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (56/730)* parent.height //y
        color: "#37345E"
        clip: true
        radius: 3
    }
    TextInput {
        id: profileScreen_txt_3
        property int textSize: 9
//        width: 170
//        height: 15
//        x: 12
//        y: 9
        width: (170/1135) * m_profileScreen.width //width
        height: (15/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (323/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (63/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: qsTr("Privacy")
    }
    Rectangle {
        id: profileScreen_item17
//        width: 98
//        height: 30
//        x: 235
//        y: 56
        width: (98/1135) * m_profileScreen.width //width
        height: (30/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (519/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (56/730)* parent.height //y
        color: "#FFFFFF"
        radius: 5
    }
    Text {
        id: profileScreen_txt_4
        property int textSize: 9
//        width: 47
//        height: 15
//        x: 20
//        y: 8
        width: (47/1135) * m_profileScreen.width //width
        height: (15/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (539/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (63/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#2E2C50"
        text: qsTr("Confirm")
    }
    Image {
        id: profileScreen_item18
//        width: 3.5
//        height: 7
//        x: 74
//        y: 12
        width: (3.5/1135) * m_profileScreen.width //width
        height: (7/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (593/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (68/730)* parent.height //y
        source: "qrc:/image/Profile/arrow-right.png"
    }
    MouseArea {
        anchors.fill: profileScreen_item17
        onClicked: {
            console.log("Confirm button")
        }
    }
    Rectangle {
        id: profileScreen_item19
//        width: 104
//        height: 30
//        x: 714
//        y: 56
        width: (104/1135) * m_profileScreen.width //width
        height: (30/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (998/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (56/730)* parent.height //y
        color: "#FFFFFF"
        radius: 5
    }
    Text {
        id: profileScreen_txt_5
        property int textSize: 9
//        width: 56
//        height: 15
//        x: 14
//        y: 8
        width: (56/1135) * m_profileScreen.width //width
        height: (15/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (1012/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (63/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FA5B79"
        text: qsTr("Delete All")
    }
    Image {
        id: profileScreen_item20
//        width: 12
//        height: 12
//        x: 77
//        y: 9
        width: (12/1135) * m_profileScreen.width //width
        height: (12/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (1075/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (65/730)* parent.height //y
        source: "qrc:/image/Profile/trash-outline-red.png"
    }
    MouseArea {
        anchors.fill: profileScreen_item19
        onClicked: {
            console.log("Delete All button")
        }
    }
    Rectangle {
        id: profileScreen_item21
//        width: 791
//        height: 30
//        x: 27
//        y: 102
        width: (791/1135) * m_profileScreen.width //width
        height: (30/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (102/730)* parent.height //y
        color: "#907DE2"
        radius: 3
    }
    Text {
        id: profileScreen_txt_6
        property int textSize: 8
        text: qsTr("ID")
//        width: 10
//        height: 12
//        x: 12
//        y: 9
        width: (10/1135) * m_profileScreen.width //width
        height: (12/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (323/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: profileScreen_txt_7
        property int textSize: 8
        text: qsTr("PROFILE NAME")
//        width: 74
//        height: 12
//        x: 40
//        y: 9
        width: (74/1135) * m_profileScreen.width //width
        height: (12/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (351/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: profileScreen_txt_8
        property int textSize: 8
        text: qsTr("NAME ON CARD")
//        width: 79
//        height: 12
//        x: 210
//        y: 9
        width: (79/1135) * m_profileScreen.width //width
        height: (12/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (521/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: profileScreen_txt_9
        property int textSize: 8
        text: qsTr("CARD")
//        width: 22
//        height: 12
//        x: 490
//        y: 9
        width: (22/1135) * m_profileScreen.width //width
        height: (12/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (801/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: profileScreen_txt_10
        property int textSize: 8
        text: qsTr("ACTION")
//        width: 46
//        height: 12
//        x: 720
//        y: 9
        width: (46/1135) * m_profileScreen.width //width
        height: (12/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (1031/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (111/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: profileScreen_item22
//        width: 9
//        height: 558
//        x: 807
//        y: 148
        width: (9/1135) * m_profileScreen.width //width
        height: (558/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (1093/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (148/730)* parent.height //y
        source: "qrc:/image/TaskScreen/task_scroll_border.png"
    }
    //List item
    ListView {
        id: profileScreen_list_2
//        width: 791
//        height: 558
//        x: 27
//        y: 148
        width: (793/1135) * m_profileScreen.width //width
        height: (558/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (144/730)* parent.height //y
        model: ProfileItemModel {}
        delegate: ProfileItemDeletegate {
            profileItem_widthDelegate: (770/1135) * m_profileScreen.width
            profileItem_heightDelegate: (30/730) * m_profileScreen.height
        }
        clip: true
        spacing: 8
        flickableDirection: Flickable.VerticalFlick
        boundsBehavior: Flickable.StopAtBounds
        ScrollBar.vertical: ScrollBar {
            contentItem: Rectangle {
                id: profileScreen_rec_4
                implicitWidth: (9/1135) * m_profileScreen.width
                implicitHeight: (221/730) * m_profileScreen.height
                color: "#423F6B"
                radius: 10
            }
        }
    }

    Component.onCompleted: {
        console.log("complete")
        profileScreen_listprofileScreen_txt_9.push(profileScreen_txt_3)
        profileScreen_listprofileScreen_txt_9.push(profileScreen_txt_4)
        profileScreen_listprofileScreen_txt_9.push(profileScreen_txt_5)

        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_6)
        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_7)
        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_8)
        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_9)
        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_10)

        profileScreen_listprofileScreen_txt_13.push(profileScreen_txt_1)
        profileScreen_listprofileScreen_txt_13.push(profileScreen_txt_2)

    }
    onHeightChanged: {
        var rateTextSize = height/730
        for (var l = 0; l < profileScreen_listprofileScreen_txt_8.length; l++) {
            profileScreen_listprofileScreen_txt_8[l].textSize = 8 * rateTextSize
        }
        for (var m = 0; m < profileScreen_listprofileScreen_txt_9.length; m++) {
            profileScreen_listprofileScreen_txt_9[m].textSize = 9 * rateTextSize
        }
        for (var n = 0; n < profileScreen_listprofileScreen_txt_13.length; n++) {
            profileScreen_listprofileScreen_txt_13[n].textSize = 13 * rateTextSize
        }
    }
}
