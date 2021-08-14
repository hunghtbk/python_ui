import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_profileScreen
    visible: true
    width: 1135
    height: 730
//    title: qsTr("Task Screen")
    color: "transparent"
//    flags:Qt.FramelessWindowHint

    signal message(string msg)
    signal sendThemeValueToPopup(bool value)
    property int currentWidth: m_profileScreen.width
    property int currentHeight: m_profileScreen.height

    property var profileScreen_listItemID: []
    property var profileScreen_listListViewID: []
    property var profileScreen_listprofileScreen_txt_7: []
    property var profileScreen_listprofileScreen_txt_8: []
    property var profileScreen_listprofileScreen_txt_9: []
    property var profileScreen_listprofileScreen_txt_13: []

    property bool dashboardNormalTheme: true

    function changeTheme(abcd) {
        console.log("TaskScreen " + abcd)
        dashboardNormalTheme = abcd
    }

    function updateTheme() {
        var nColor = "#FFFFFF" //white
        var abnColor = "#000000" //black
        if (dashboardNormalTheme) {
            profileScreen_txt_1.color = nColor
            profileScreen_txt_2.color = nColor
            profileScreen_txt_3.color = nColor
        } else {
            profileScreen_txt_1.color = abnColor
            profileScreen_txt_2.color = abnColor
            profileScreen_txt_3.color = abnColor
        }
    }

    onDashboardNormalThemeChanged: {
        updateTheme()
    }

    //For loadersize
    property int loaderW: 0
    property int loaderH: 0
    property int loaderX: 0
    property int loaderY: 0

    Text {
        id: profileScreenborderLeftMain
        x: 0
        y: 0
        width: 0
        height: 0
    }

//    Rectangle {
//        id: profileScreen_item10
////        x: 0
////        y: 0
////        width: 284
////        height: 730
//        width: (284/1135) * m_profileScreen.width //width
//        height: (730/730) * m_profileScreen.height //height
//        anchors.left: profileScreenborderLeftMain.right
//        anchors.leftMargin: (0/1135)* parent.width //x
//        anchors.top: profileScreenborderLeftMain.bottom
//        anchors.topMargin: (0/730)* parent.height //y
//        color: "#282645"
//    }
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
        source: dashboardNormalTheme?"../appIMG/2.ProfileScreen/Add_item_4x.png":"../appIMG/7.LightMode/Add-icon-4x.png"

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
            colorItem: dashboardNormalTheme?"#37345E":"#FFFFFF"
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
        source: dashboardNormalTheme?"../appIMG/2.ProfileScreen/Add_item_4x.png":"../appIMG/7.LightMode/Add-icon-4x.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Add new Profile Item")
                m_profileScreen.message("profile_screen_add_item")
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
            id: profileScreen_txt_3
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

            property string placeholderText: "Enter Profile Name..."

            Text {
                text: profileScreen_txt_3.placeholderText
                color: "#6a687d"
                visible: !profileScreen_txt_3.text
                font: profileScreen_txt_3.font
            }
        }
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
        anchors.topMargin: (65/730)* parent.height //y
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
        width: (4/1135) * m_profileScreen.width //width
        height: (7/730) * m_profileScreen.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (593/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (68/730)* parent.height //y
        source: "../appIMG/2.ProfileScreen/arrow-right-4x.png"
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
        anchors.topMargin: (65/730)* parent.height //y
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
        source: "../appIMG/2.ProfileScreen/item_trash_outline_4x.png"
    }
    MouseArea {
        anchors.fill: profileScreen_item19
        onClicked: {
            console.log("Delete All button")
            setLoaderSize(500, 150, 309, 215)
            loader_notification.source = "DeleteAllProfilesNotification.qml"
            bacgroundForLoaderpopup.visible = true
            m_profileScreen.sendThemeValueToPopup(dashboardNormalTheme)
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
        radius: 5
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
    Rectangle {
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
        color: dashboardNormalTheme?"#282645":"#d7d6de"
    }
    //List item
    ListView {
        id: profileScreen_list_2
        signal eventFromItem(string msg, int itemIndex)
        onEventFromItem: {
            console.log("event: " + msg + " - index: " + itemIndex)
            if (msg === "profile_item_delegate_edit") {
                setLoaderSize(582, 633, 309, 49)
                loader_notification.source = "ProfileEditShippingScreen.qml"
                m_profileScreen.sendThemeValueToPopup(dashboardNormalTheme)
                bacgroundForLoaderpopup.visible = true
            }
        }
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
            colorItem: dashboardNormalTheme?"#37345E":"#FFFFFF"
            Component.onCompleted: {
                taskItemTrigger.connect(profileScreen_list_2.eventFromItem)
            }
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
                color: dashboardNormalTheme?"#423F6B":"#FFFFFF"
                radius: 10
            }
        }
    }

    Rectangle {
        id: bacgroundForLoaderpopup
        x: -65
        y: 0
        width: (1200/1135) * m_profileScreen.width
        height: (730/730) * m_profileScreen.height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (-65/1135)* parent.width
        anchors.top: profileScreenborderLeftMain.bottom
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
            height: (670/730)* m_profileScreen.height
            anchors.top: leftMarginBackground.bottom
            anchors.topMargin: (60/730)* m_profileScreen.height
        }
    }


    Loader {
        id: loader_notification
        width: (500/1135) * parent.width //width
        height: (150/730) * parent.height //height
        anchors.left: profileScreenborderLeftMain.right
        anchors.leftMargin: (309/1135)* parent.width //x
        anchors.top: profileScreenborderLeftMain.bottom
        anchors.topMargin: (215/730)* parent.height //y
        source: ""
        onLoaded: m_profileScreen.sendThemeValueToPopup.connect(loader_notification.item.changeThemePopup)
    }

    function setLoaderSize(w, h, positionX, positionY) {
        loaderW = w
        loaderH = h
        loaderX = positionX
        loaderY = positionY
        reSizeLoaderSize();
    }

    function reSizeLoaderSize() {
        loader_notification.width = (loaderW/1135) * m_profileScreen.width //width
        loader_notification.height = (loaderH/730) * m_profileScreen.height //height
        loader_notification.anchors.left = profileScreenborderLeftMain.right
        loader_notification.anchors.leftMargin = (loaderX/1135)* m_profileScreen.width //x
        loader_notification.anchors.top = profileScreenborderLeftMain.bottom
        loader_notification.anchors.topMargin = (loaderY/730)* m_profileScreen.height //y
    }

    Connections {
        target: loader_notification.item
        onProfilesPopupSignalMessage: {
            handleMsg(msg)
        }
    }

    function handleMsg(msg) {
        console.log(msg)
        if (msg === "delete_all_profiles_cancel" || msg === "evG_Cancel") {
            loader_notification.source = ""
        } else if (msg === "delete_all_profiles_ok") {
            loader_notification.source = ""
        } else if (msg === "profile_edit_shipping_screen_create") {
            loader_notification.source = ""
        } else if (msg === "profile_edit_billing_screen_create") {
            loader_notification.source = ""
        } else if (msg === "profile_edit_payment_screen_create") {
            loader_notification.source = ""
        }

        bacgroundForLoaderpopup.visible = false

        if (msg === "profile_edit_shipping_screen_billing") {
            setLoaderSize(582, 609, 309, 61)
            loader_notification.source = "ProfileEditBillingScreen.qml"
            m_profileScreen.sendThemeValueToPopup(dashboardNormalTheme)
            bacgroundForLoaderpopup.visible = true
        } else if (msg === "profile_edit_shipping_screen_shipping") {
            setLoaderSize(582, 633, 309, 49)
            loader_notification.source = "ProfileEditShippingScreen.qml"
            m_profileScreen.sendThemeValueToPopup(dashboardNormalTheme)
            bacgroundForLoaderpopup.visible = true
        } else if (msg === "profile_edit_shipping_screen_payment") {
            setLoaderSize(582, 453, 309, 139)
            loader_notification.source = "ProfileEditPaymentScreen.qml"
            m_profileScreen.sendThemeValueToPopup(dashboardNormalTheme)
            bacgroundForLoaderpopup.visible = true
        }

    }

    Component.onCompleted: {
        updateTheme()
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
