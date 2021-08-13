import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    id: m_mainScreen
    visible: true
    width: 1200
    height: 730
    title: qsTr("Task Screen")
    color: "#2E2C50"
    flags:Qt.FramelessWindowHint

    property int currentWidth: m_mainScreen.width
    property int currentHeight: m_mainScreen.height

    property bool normalTheme: true
    signal sendThemeValueToSubScreen(bool value)
    signal sendThemeValueToPopup(bool value)

    //For loadersize
    property int loaderW: 0
    property int loaderH: 0
    property int loaderX: 0
    property int loaderY: 0

    property int selectedApp: 0
    //0 DashboardScreen
    //1 TaskScreen
    //2 ProfileScreen
    //3 ProxyScreen
    //4 AccountScreen
    //5 SettingScreen

    property var listIMG_ID: []
    property var listREC_ID: []
    property var listListViewID: []
    property var listTXT_7: []
    property var listTXT_8: []
    property var listTXT_9: []
    property var listTXT_13: []

    Text {
        id: mainScreenborderLeftMain
        x: 0
        y: 0
        width: 0
        height: 0
    }

    MouseArea {
        anchors.fill: parent
        onPressed: { pos = Qt.point(mouse.x, mouse.y) }
        onPositionChanged: {
            var diff = Qt.point(mouse.x - pos.x, mouse.y - pos.y)
            m_mainScreen.x += diff.x
            m_mainScreen.y += diff.y
        }
        property point pos
    }

    Rectangle {
        id: rec_1
        width: 65
        height: 730
        color: (normalTheme)? "#37345E" : "#FFFFFF"
        border.color: (normalTheme)? "#37345E" : "#EFF0F6"

        //Define small lotus
        Image {
            id: main_img_1
            width: 45
            height: 44
            x: 10
            y: 13
            source: "../appIMG/6.Common/Small_lotus_4x.png"
        }
        //Dashboard icon
        Image {
            id: dashboardScreenId
            width: 25
            height: 25
            x: 20
            y: 69
            source: "../appIMG/6.Common/grid-outline-active-4x.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if(selectedApp != 0) dashboardScreenId.source = (normalTheme)?"../appIMG/6.Common/grid-outline-active-4x.png":"../appIMG/7.LightMode/grid-outline-active-4x.png"
                }
                onReleased: {
                    if(selectedApp != 0) dashboardScreenId.source = (normalTheme)?"../appIMG/6.Common/grid-outline-inactive-4x.png":"../appIMG/7.LightMode/grid-outline-inactive-4x.png"
                }
                onClicked: {
                    console.log("Dash Board Screen")
                    selectedApp = 0
                    main_loaderItem.source = "DashboardScreen.qml"
                    m_mainScreen.sendThemeValueToSubScreen(normalTheme)
                }
            }
        }

        //task group icon
        Image {
            id: taskScreenId
            width: 25
            height: 25
            x: 20
            y: 113
            source: "../appIMG/6.Common/cube-outline-inactive-4x.png"
            MouseArea {
                anchors.fill: parent
                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        if (selectedApp != 1) taskScreenId.source = normalTheme?"../appIMG/6.Common/cube-outline-active-4x.png":"../appIMG/7.LightMode/cube-outline-active-4x.png"
                    }
                    onReleased: {
                        if (selectedApp != 1) taskScreenId.source = normalTheme?"../appIMG/6.Common/cube-outline-inactive-4x.png":"../appIMG/7.LightMode/cube-outline-inactive-4x.png"
                    }
                    onClicked: {
                        console.log("Task Group Screen")
                        selectedApp = 1
                        main_loaderItem.source = "TaskScreen.qml"
                        m_mainScreen.sendThemeValueToSubScreen(normalTheme)
                    }
                }
            }
        }

        //Selected Icon
        Rectangle {
            id: selectIconId
            width: 8
            height: 8
            x: 61
            y: if (selectedApp == 0) {
                   (dashboardScreenId.y + dashboardScreenId.width/2 - selectIconId.width/2)
               } else if (selectedApp == 1) {
                   (taskScreenId.y + taskScreenId.width/2 - selectIconId.width/2)
               } else if (selectedApp == 2) {
                   (profileScreenId.y + profileScreenId.width/2 - selectIconId.width/2)
               } else if (selectedApp == 3) {
                   (proxyScreenId.y + proxyScreenId.width/2 - selectIconId.width/2)
               } else if (selectedApp == 4) {
                   (accountScreenId.y + accountScreenId.width/2 - selectIconId.width/2)
               } else {
                   (settingScreenId.y + settingScreenId.width/2 - selectIconId.width/2)
               }

            color: "#907DE2"
            radius: 100
        }
        //End Selected Icon
        //Profile Icon
        Image {
            id: profileScreenId
            width: 25
            height: 25
            x: 20
            y: 151
            source: "../appIMG/6.Common/credit-card-outline-inactive-4x.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if (selectedApp != 2) profileScreenId.source = normalTheme?"../appIMG/6.Common/credit-card-outline-active-4x.png":"../appIMG/7.LightMode/credit-card-outline-active-4x.png"
                }
                onReleased: {
                    if (selectedApp != 2) profileScreenId.source = normalTheme?"../appIMG/6.Common/credit-card-outline-inactive-4x.png":"../appIMG/7.LightMode/credit-card-outline-inactive-4x.png"
                }
                onClicked: {
                    console.log("Profile Screen")
                    selectedApp = 2
                    main_loaderItem.source = "ProfileScreen.qml"
                    m_mainScreen.sendThemeValueToSubScreen(normalTheme)
                }
            }
        }

        //Proxy icon
        Image {
            id: proxyScreenId
            width: 25
            height: 25
            x: 20
            y: 193
            source: "../appIMG/6.Common/flash-outline-2-inactive-4x.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if (selectedApp != 3) proxyScreenId.source = normalTheme?"../appIMG/6.Common/flash-outline-2-active-4x.png":"../appIMG/7.LightMode/flash-outline-2-active-4x.png"
                }
                onReleased: {
                    if (selectedApp != 3) proxyScreenId.source = normalTheme?"../appIMG/6.Common/flash-outline-2-inactive-4x.png":"../appIMG/7.LightMode/flash-outline-2-inactive-4x.png"
                }
                onClicked: {
                    console.log("Proxy Screen")
                    selectedApp = 3
                    main_loaderItem.source = "ProxyScreen.qml"
                    m_mainScreen.sendThemeValueToSubScreen(normalTheme)
                }
            }
        }

        //Account Icon
        Image {
            id: accountScreenId
            width: 25
            height: 25
            x: 20
            y: 233
            source: "../appIMG/6.Common/person-outline-inactive-4x.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if (selectedApp != 4) accountScreenId.source = normalTheme?"../appIMG/6.Common/person-outline-active-4x.png":"../appIMG/7.LightMode/person-outline-active-4x.png"
                }
                onReleased: {
                    if (selectedApp != 4) accountScreenId.source = normalTheme?"../appIMG/6.Common/person-outline-inactive-4x.png":"../appIMG/7.LightMode/person-outline-inactive-4x.png"
                }
                onClicked: {
                    console.log("Account Screen")
                    selectedApp = 4
                    main_loaderItem.source = "AccountScreen.qml"
                    m_mainScreen.sendThemeValueToSubScreen(normalTheme)
                }
            }
        }

        //Setting Icon
        Image {
            id: settingScreenId
            width: 25
            height: 25
            x: 20
            y: 273
            source: "../appIMG/6.Common/settings-2-outline-inactive-4x.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if (selectedApp != 5) settingScreenId.source = normalTheme?"../appIMG/6.Common/settings-2-outline-active-4x.png":"../appIMG/7.LightMode/settings-2-outline-active-4x.png"
                }

                onReleased: {
                    if (selectedApp != 5) settingScreenId.source = normalTheme?"../appIMG/6.Common/settings-2-outline-inactive-4x.png":"../appIMG/7.LightMode/settings-2-outline-inactive-4x.png"
                }

                onClicked: {
                    console.log("Setting Screen")
                    selectedApp = 5
                    main_loaderItem.source = "SettingScreen.qml"
                    m_mainScreen.sendThemeValueToSubScreen(normalTheme)
                }
            }
        }

        //Change Theme icon
        Image {
            id: changeThemeId
            width: 26
            height: 26
            x: 20
            y: 686
            source: "../appIMG/6.Common/sun-outline-4x.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (normalTheme) {
                        changeThemeId.source = "../appIMG/7.LightMode/moon-outline-4x.png"
                        normalTheme = false
                    } else {
                        changeThemeId.source = "../appIMG/6.Common/sun-outline-4x.png"
                        normalTheme = true
                    }
                    m_mainScreen.sendThemeValueToSubScreen(normalTheme)
                }
            }

//            source: "../appIMG/6.Common/moon-icon.png"
        }
    }
    Rectangle {
        id: rectComponent
        //        x: 0
        //        y: 0
        //        width: 284
        //        height: 730

        anchors.left: mainScreenborderLeftMain.right
        anchors.leftMargin: (65/1200)* m_mainScreen.width //x
        anchors.top: mainScreenborderLeftMain.bottom
        anchors.topMargin: (0/730)* m_mainScreen.height //y
        width: (284/1200) * m_mainScreen.width //width
        height: (730/730) * m_mainScreen.height //height
        color: "#282645"
    }
    Loader {
        id: main_loaderItem
        width: 1135
        height: 730
        x: 65
        y: 0
        source: ""
        onLoaded: m_mainScreen.sendThemeValueToSubScreen.connect(main_loaderItem.item.changeTheme)
    }
    Connections {
        target: main_loaderItem.item
        onMessage: {
            abcd(msg)
        }
    }
    function abcd(m_msg) {
        bacgroundForLoaderSubItem.visible = true
        console.log(m_msg)
        if (m_msg === "task_screen_add_group") {
            setLoaderSize(582, 300, 309, 135)
            loaderSubItem.source = "CreateTaskGroupScreen.qml"
        } else if (m_msg === "profile_screen_add_group") {
            setLoaderSize(582, 300, 309, 135)
            loaderSubItem.source = "CreateProfileGroupScreen.qml"
        } else if (m_msg === "task_screen_add_item") {
            setLoaderSize(582, 461, 309, 135)
            loaderSubItem.source = "CreateTaskScreen.qml"
        } else if (m_msg === "profile_screen_add_item") {
            setLoaderSize(582, 633, 309, 49)
            loaderSubItem.source = "ProfileShippingScreen.qml"
        } else if (m_msg === "proxy_screen_add_group") {
            setLoaderSize(582, 300, 309, 135)
            loaderSubItem.source = "CreateProxyGroupScreen.qml"
        } else if (m_msg === "account_screen_add_group") {
            setLoaderSize(582, 300, 309, 135)
            loaderSubItem.source = "CreateAccountGroupScreen.qml"
        }
        m_mainScreen.sendThemeValueToPopup(normalTheme)
    }

    function setLoaderSize(w, h, positionX, positionY) {
        loaderW = w
        loaderH = h
        loaderX = positionX
        loaderY = positionY
        reSizeLoaderSize();
    }

    function reSizeLoaderSize() {
        loaderSubItem.width = (loaderW/1200) * m_mainScreen.width //width
        loaderSubItem.height = (loaderH/730) * m_mainScreen.height //height
        loaderSubItem.anchors.left = mainScreenborderLeftMain.right
        loaderSubItem.anchors.leftMargin = (loaderX/1200)* m_mainScreen.width //x
        loaderSubItem.anchors.top = mainScreenborderLeftMain.bottom
        loaderSubItem.anchors.topMargin = (loaderY/730)* m_mainScreen.height //y
    }

    Rectangle {
        id: border_main_itemMinimize
        width: 25
        height: 25
        x: 1143
        y: 0
        color: minimumBtn.containsMouse ? "red" : "transparent"
    }

    Image {
        id: main_itemMinimize
        anchors.fill: border_main_itemMinimize
        source: normalTheme?"../appIMG/6.Common/minus-outline-4x.png":"../appIMG/7.LightMode/minus-outline.png"
    }
    MouseArea {
        id: minimumBtn
        anchors.fill: border_main_itemMinimize
        hoverEnabled: true
        onClicked: {
            console.log("Minimize")
                m_mainScreen.showMinimized();
        }
    }

    Rectangle {
        id: border_main_itemClose
        width: 25
        height: 25
        x: 1171
        y: 0
        color: mcloseBtn.containsMouse ? "red" : "transparent"
    }

    Image {
        id: main_itemClose
        anchors.fill: border_main_itemClose
        source: normalTheme?"../appIMG/6.Common/close-outline-4x.png":"../appIMG/7.LightMode/close-outline.png"
    }
    MouseArea {
        id: mcloseBtn
        anchors.fill: border_main_itemClose
        hoverEnabled: true
        onClicked: {
            console.log("Close icon")
            m_mainScreen.close()
        }
    }

    Rectangle {
        id: bacgroundForLoaderSubItem
        anchors.fill: parent
        color: normalTheme?"#000000":"#F2F2F2"
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
            height: (670/730)* m_mainScreen.height
            anchors.top: leftMarginBackground.bottom
            anchors.topMargin: (60/730)* m_mainScreen.height
        }
    }

    Loader {
        id: loaderSubItem
        width: (582/1200) * parent.width //width
        height: (300/730) * parent.height //height
        anchors.left: mainScreenborderLeftMain.right
        anchors.leftMargin: (309/1200)* parent.width //x
        anchors.top: mainScreenborderLeftMain.bottom
        anchors.topMargin: (135/730)* parent.height //y
        source: ""
        onLoaded: m_mainScreen.sendThemeValueToPopup.connect(loaderSubItem.item.changeTheme)
    }

    Connections {
        target: loaderSubItem.item
        onSignalFromCreateScreen: {
            bacgroundForLoaderSubItem.visible = false
            console.log(msg)
            if (msg === "evG_Cancel") {
                loaderSubItem.source = ""
            } else if (msg === "create_task_group_create_group") {
                loaderSubItem.source = ""
            } else if (msg === "create_profile_group_create") {
                loaderSubItem.source = ""
            } else if (msg === "create_proxy_group_create" ) {
                loaderSubItem.source = ""
            } else if (msg === "create_task_create") {
                loaderSubItem.source = ""
            } else if (msg === "create_account_group_create") {
                loaderSubItem.source = ""
            } else if (msg === "profile_shipping_screen_create") {
                loaderSubItem.source = ""
            } else if (msg === "profile_payment_screen_create") {
                loaderSubItem.source = ""
            } else if (msg === "profile_billing_screen_create") {
                loaderSubItem.source = ""
            } else if (msg === "profile_shipping_screen_billing") {
                setLoaderSize(582, 609, 309, 61)
                loaderSubItem.source = "ProfileBillingScreen.qml"
                m_mainScreen.sendThemeValueToPopup(normalTheme)
                bacgroundForLoaderSubItem.visible = true
            } else if (msg === "profile_shipping_screen_payment") {
                setLoaderSize(582, 453, 309, 139)
                loaderSubItem.source = "ProfilePaymentScreen.qml"
                m_mainScreen.sendThemeValueToPopup(normalTheme)
                bacgroundForLoaderSubItem.visible = true
            } else if (msg === "profile_shipping_screen_shipping") {
                setLoaderSize(582, 633, 309, 49)
                loaderSubItem.source = "ProfileShippingScreen.qml"
                m_mainScreen.sendThemeValueToPopup(normalTheme)
                bacgroundForLoaderSubItem.visible = true
            }

        }
    }

    onSelectedAppChanged: {
        updateTheme();
        updateIcon();

    }
    function updateIcon() {
        main_itemClose.source = normalTheme?"../appIMG/6.Common/close-outline-4x.png":"../appIMG/7.LightMode/close-outline.png"
        main_itemMinimize.source = normalTheme?"../appIMG/6.Common/minus-outline-4x.png":"../appIMG/7.LightMode/minus-outline.png"
        if (selectedApp == 0) {
            selectIconId.y = (dashboardScreenId.y + dashboardScreenId.width/2 - selectIconId.width/2)
            if (normalTheme) {
                dashboardScreenId.source = "../appIMG/6.Common/grid-outline-active-4x.png"
                taskScreenId.source = "../appIMG/6.Common/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/6.Common/credit-card-outline-inactive-4x.png"
                proxyScreenId.source = "../appIMG/6.Common/flash-outline-2-inactive-4x.png"
                accountScreenId.source = "../appIMG/6.Common/person-outline-inactive-4x.png"
                settingScreenId.source = "../appIMG/6.Common/settings-2-outline-inactive-4x.png"
            } else {
                dashboardScreenId.source = "../appIMG/7.LightMode/grid-outline-active-4x.png"
                taskScreenId.source = "../appIMG/7.LightMode/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/7.LightMode/credit-card-outline-inactive-4x.png"
                proxyScreenId.source = "../appIMG/7.LightMode/flash-outline-2-inactive-4x.png"
                accountScreenId.source = "../appIMG/7.LightMode/person-outline-inactive-4x.png"
                settingScreenId.source = "../appIMG/7.LightMode/settings-2-outline-inactive-4x.png"
            }

        } else if (selectedApp == 1) {
            selectIconId.y = (taskScreenId.y + taskScreenId.width/2 - selectIconId.width/2)
             if (normalTheme) {
                 dashboardScreenId.source = "../appIMG/6.Common/grid-outline-inactive-4x.png"
                 taskScreenId.source = "../appIMG/6.Common/cube-outline-active-4x.png"
                 profileScreenId.source = "../appIMG/6.Common/credit-card-outline-inactive-4x.png"
                 proxyScreenId.source = "../appIMG/6.Common/flash-outline-2-inactive-4x.png"
                 accountScreenId.source = "../appIMG/6.Common/person-outline-inactive-4x.png"
                 settingScreenId.source = "../appIMG/6.Common/settings-2-outline-inactive-4x.png"
             } else {
                 dashboardScreenId.source = "../appIMG/7.LightMode/grid-outline-inactive-4x.png"
                 taskScreenId.source = "../appIMG/7.LightMode/cube-outline-active-4x.png"
                 profileScreenId.source = "../appIMG/7.LightMode/credit-card-outline-inactive-4x.png"
                 proxyScreenId.source = "../appIMG/7.LightMode/flash-outline-2-inactive-4x.png"
                 accountScreenId.source = "../appIMG/7.LightMode/person-outline-inactive-4x.png"
                 settingScreenId.source = "../appIMG/7.LightMode/settings-2-outline-inactive-4x.png"
             }


        } else if (selectedApp == 2) {
            selectIconId.y = (profileScreenId.y + profileScreenId.width/2 - selectIconId.width/2)
            if (normalTheme) {
                dashboardScreenId.source = "../appIMG/6.Common/grid-outline-inactive-4x.png"
                taskScreenId.source = "../appIMG/6.Common/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/6.Common/credit-card-outline-active-4x.png"
                proxyScreenId.source = "../appIMG/6.Common/flash-outline-2-inactive-4x.png"
                accountScreenId.source = "../appIMG/6.Common/person-outline-inactive-4x.png"
                settingScreenId.source = "../appIMG/6.Common/settings-2-outline-inactive-4x.png"
            } else {
                dashboardScreenId.source = "../appIMG/7.LightMode/grid-outline-inactive-4x.png"
                taskScreenId.source = "../appIMG/7.LightMode/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/7.LightMode/credit-card-outline-active-4x.png"
                proxyScreenId.source = "../appIMG/7.LightMode/flash-outline-2-inactive-4x.png"
                accountScreenId.source = "../appIMG/7.LightMode/person-outline-inactive-4x.png"
                settingScreenId.source = "../appIMG/7.LightMode/settings-2-outline-inactive-4x.png"
            }

        } else if (selectedApp == 3) {
            selectIconId.y = (proxyScreenId.y + proxyScreenId.width/2 - selectIconId.width/2)
            if (normalTheme) {
                dashboardScreenId.source = "../appIMG/6.Common/grid-outline-inactive-4x.png"
                taskScreenId.source = "../appIMG/6.Common/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/6.Common/credit-card-outline-inactive-4x.png"
                proxyScreenId.source = "../appIMG/6.Common/flash-outline-2-active-4x.png"
                accountScreenId.source = "../appIMG/6.Common/person-outline-inactive-4x.png"
                settingScreenId.source = "../appIMG/6.Common/settings-2-outline-inactive-4x.png"
            } else {
                dashboardScreenId.source = "../appIMG/7.LightMode/grid-outline-inactive-4x.png"
                taskScreenId.source = "../appIMG/7.LightMode/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/7.LightMode/credit-card-outline-inactive-4x.png"
                proxyScreenId.source = "../appIMG/7.LightMode/flash-outline-2-active-4x.png"
                accountScreenId.source = "../appIMG/7.LightMode/person-outline-inactive-4x.png"
                settingScreenId.source = "../appIMG/7.LightMode/settings-2-outline-inactive-4x.png"
            }

        } else if (selectedApp == 4) {
            selectIconId.y = (accountScreenId.y + accountScreenId.width/2 - selectIconId.width/2)
            if (normalTheme) {
                dashboardScreenId.source = "../appIMG/6.Common/grid-outline-inactive-4x.png"
                taskScreenId.source = "../appIMG/6.Common/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/6.Common/credit-card-outline-inactive-4x.png"
                proxyScreenId.source = "../appIMG/6.Common/flash-outline-2-inactive-4x.png"
                accountScreenId.source = "../appIMG/6.Common/person-outline-active-4x.png"
                settingScreenId.source = "../appIMG/6.Common/settings-2-outline-inactive-4x.png"
            } else {
                dashboardScreenId.source = "../appIMG/7.LightMode/grid-outline-inactive-4x.png"
                taskScreenId.source = "../appIMG/7.LightMode/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/7.LightMode/credit-card-outline-inactive-4x.png"
                proxyScreenId.source = "../appIMG/7.LightMode/flash-outline-2-inactive-4x.png"
                accountScreenId.source = "../appIMG/7.LightMode/person-outline-active-4x.png"
                settingScreenId.source = "../appIMG/7.LightMode/settings-2-outline-inactive-4x.png"
            }

        } else if (selectedApp == 5) {
            selectIconId.y = (settingScreenId.y + settingScreenId.width/2 - selectIconId.width/2)
            if (normalTheme) {
                dashboardScreenId.source = "../appIMG/6.Common/grid-outline-inactive-4x.png"
                taskScreenId.source = "../appIMG/6.Common/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/6.Common/credit-card-outline-inactive-4x.png"
                proxyScreenId.source = "../appIMG/6.Common/flash-outline-2-inactive-4x.png"
                accountScreenId.source = "../appIMG/6.Common/person-outline-inactive-4x.png"
                settingScreenId.source = "../appIMG/6.Common/settings-2-outline-active-4x.png"
            } else {
                dashboardScreenId.source = "../appIMG/7.LightMode/grid-outline-inactive-4x.png"
                taskScreenId.source = "../appIMG/7.LightMode/cube-outline-inactive-4x.png"
                profileScreenId.source = "../appIMG/7.LightMode/credit-card-outline-inactive-4x.png"
                proxyScreenId.source = "../appIMG/7.LightMode/flash-outline-2-inactive-4x.png"
                accountScreenId.source = "../appIMG/7.LightMode/person-outline-inactive-4x.png"
                settingScreenId.source = "../appIMG/7.LightMode/settings-2-outline-active-4x.png"
            }
        } else {
            console.log("incorrect slected app")
        }
    }

    onNormalThemeChanged: {
        console.log("Change Theme + " + normalTheme)
        updateTheme()
        updateIcon()
    }

    function updateTheme() {
        if (normalTheme) {
            m_mainScreen.color = "#2E2C50"
            if (selectedApp != 0 && selectedApp != 5) {
                rectComponent.color = "#282645"
            } else {
                rectComponent.color = "#2E2C50"
            }
        } else {
            m_mainScreen.color = "#F7F8FC"
            if (selectedApp != 0 && selectedApp != 5) {
                rectComponent.color = "#EFF0F6"
            } else {
                rectComponent.color = "#F7F8FC"
            }

        }
    }

    Component.onCompleted: {
        updateTheme()
        if (selectedApp == 0) {
            main_loaderItem.source = "DashboardScreen.qml"
        } else if (selectedApp == 1) {
            main_loaderItem.source = "TaskScreen.qml"
        } else if (selectedApp == 2) {
            main_loaderItem.source = "ProfileScreen.qml"
        } else if (selectedApp == 3) {
            main_loaderItem.source = "ProxyScreen.qml"
        } else if (selectedApp == 4) {
            main_loaderItem.source = "AccountScreen.qml"
        } else if (selectedApp == 5) {
            main_loaderItem.source = "SettingScreen.qml"
        } else {
            console.log("Incorrect value")
        }

        listIMG_ID.push(main_img_1)
        listIMG_ID.push(dashboardScreenId)
        listIMG_ID.push(selectIconId)
        listIMG_ID.push(taskScreenId)
        listIMG_ID.push(profileScreenId)
        listIMG_ID.push(proxyScreenId)
        listIMG_ID.push(accountScreenId)
        listIMG_ID.push(settingScreenId)
        listIMG_ID.push(changeThemeId)
        listIMG_ID.push(main_itemMinimize)
        listIMG_ID.push(border_main_itemMinimize)
        listIMG_ID.push(main_itemClose)
        listIMG_ID.push(border_main_itemClose)
        listIMG_ID.push(main_loaderItem)

        listREC_ID.push(rec_1)
    }
    onHeightChanged: {
        if (height < 710) {
            height = 710
        }
        reSizeLoaderSize();
        console.log("hunght H " + height)
        var rate = height/currentHeight
        var rateTextSize = height/730
        for (var i = 0; i < listIMG_ID.length; i++) {
            listIMG_ID[i].y = listIMG_ID[i].y * rate
            listIMG_ID[i].height = listIMG_ID[i].height * rate
        }

        for (var j = 0; j < listREC_ID.length; j++) {
            listREC_ID[j].y = listREC_ID[j].y * rate
            listREC_ID[j].height = listREC_ID[j].height * rate
        }
        for (var k = 0; k < listTXT_7.length; k++) {
            listTXT_7[k].y = listTXT_7[k].y * rate
            listTXT_7[k].height = listTXT_7[k].height * rate
            listTXT_7[k].textSize = 7 * rateTextSize
        }
        for (var l = 0; l < listTXT_8.length; l++) {
            listTXT_8[l].y = listTXT_8[l].y * rate
            listTXT_8[l].height = listTXT_8[l].height * rate
            listTXT_8[l].textSize = 8 * rateTextSize
        }
        for (var m = 0; m < listTXT_9.length; m++) {
            listTXT_9[m].y = listTXT_9[m].y * rate
            listTXT_9[m].height = listTXT_9[m].height * rate
            listTXT_9[m].textSize = 9 * rateTextSize
        }
        for (var n = 0; n < listTXT_13.length; n++) {
            listTXT_13[n].y = listTXT_13[n].y * rate
            listTXT_13[n].height = listTXT_13[n].height * rate
            listTXT_13[n].textSize = 13 * rateTextSize
        }
        for (var p = 0; p < listListViewID.length; p++) {
            listListViewID[p].y = listListViewID[p].y * rate
            listListViewID[p].height = listListViewID[p].height * rate
        }
    }

    onWidthChanged: {
        if (width < 1140) {
            width = 1140
        }
        reSizeLoaderSize();
        var rate = width/currentWidth
        for (var i = 0; i < listIMG_ID.length; i++) {
            listIMG_ID[i].x = listIMG_ID[i].x * rate
            listIMG_ID[i].width = listIMG_ID[i].width * rate
        }

        for (var j = 0; j < listREC_ID.length; j++) {
            listREC_ID[j].x = listREC_ID[j].x * rate
            listREC_ID[j].width = listREC_ID[j].width * rate
        }
        for (var k = 0; k < listTXT_7.length; k++) {
            listTXT_7[k].x = listTXT_7[k].x * rate
            listTXT_7[k].width = listTXT_7[k].width * rate
        }
        for (var l = 0; l < listTXT_8.length; l++) {
            listTXT_8[l].x = listTXT_8[l].x * rate
            listTXT_8[l].width = listTXT_8[l].width * rate
        }
        for (var m = 0; m < listTXT_9.length; m++) {
            listTXT_9[m].x = listTXT_9[m].x * rate
            listTXT_9[m].width = listTXT_9[m].width * rate
        }
        for (var n = 0; n < listTXT_13.length; n++) {
            listTXT_13[n].x = listTXT_13[n].x * rate
            listTXT_13[n].width = listTXT_13[n].width * rate
        }
        for (var p = 0; p < listListViewID.length; p++) {
            listListViewID[p].x = listListViewID[p].x * rate
            listListViewID[p].width = listListViewID[p].width * rate
        }
    }
}
