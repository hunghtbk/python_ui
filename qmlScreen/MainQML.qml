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
//    flags:Qt.FramelessWindowHint

    property int currentWidth: m_mainScreen.width
    property int currentHeight: m_mainScreen.height

    property int selectedApp: 1
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

    Rectangle {
        id: rec_1
        width: 65
        height: 730
        color: "#37345E"

        //Define small lotus
        Image {
            id: main_img_1
            width: 31
            height: 30
            x: 17
            y: 13
            source: "qrc:/image/0.Common/Small_lotus.png"
        }
        //Dashboard icon
        Image {
            id: main_img_2
            width: 18
            height: 18
            x: 24
            y: 59
            source: "qrc:/image/0.Common/grid-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    main_img_2.source = "qrc:/image/0.Common/grid-outline-active.png"
                }
                onReleased: {
                    main_img_2.source = "qrc:/image/0.Common/grid-outline-inactive.png"
                }
                onClicked: {
                    console.log("Dash Board Screen")
                }
            }
        }

        //task group icon
        Image {
            id: main_img_3
            width: 18
            height: 18
            x: 24
            y: 93
            source: "qrc:/image/0.Common/cube-outline-active.png"
            MouseArea {
                anchors.fill: parent
                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        if (selectedApp != 1) main_img_3.source = "qrc:/image/0.Common/cube-outline-active.png"
                    }
                    onReleased: {
                        if (selectedApp != 1) main_img_3.source = "qrc:/image/0.Common/cube-outline-inactive.png"
                    }
                    onClicked: {
                        console.log("Task Group Screen")
                        selectedApp = 1
                        main_loaderItem.source = "TaskScreen.qml"
                    }
                }
            }
        }

        //Selected Icon
        Rectangle {
            id: main_img_3_1
            width: 8
            height: 8
            x: 61
            y: if (selectedApp == 0) {
                   64
               } else if (selectedApp == 1) {
                   98
               } else if (selectedApp == 2) {
                   132
               } else if (selectedApp == 3) {
                   166
               } else if (selectedApp == 4) {
                   198
               } else {
                   230
               }

            color: "#907DE2"
            radius: 100
        }
        //End Selected Icon
        //Profile Icon
        Image {
            id: main_img_4
            width: 18
            height: 18
            x: 24
            y: 127
            source: "qrc:/image/0.Common/credit-card-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if (selectedApp != 2) main_img_4.source = "qrc:/image/0.Common/credit-card-outline-active.png"
                }
                onReleased: {
                    if (selectedApp != 2) main_img_4.source = "qrc:/image/0.Common/credit-card-outline-inactive.png"
                }
                onClicked: {
                    console.log("Profile Screen")
                    selectedApp = 2
                    main_loaderItem.source = "ProfileScreen.qml"
                }
            }
        }

        //Proxy icon
        Image {
            id: main_img_5
            width: 18
            height: 18
            x: 24
            y: 161
            source: "qrc:/image/0.Common/flash-outline-2-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if (selectedApp != 3) main_img_5.source = "qrc:/image/0.Common/flash-outline-2-active.png"
                }
                onReleased: {
                    if (selectedApp != 3) main_img_5.source = "qrc:/image/0.Common/flash-outline-2-inactive.png"
                }
                onClicked: {
                    console.log("Proxy Screen")
                    selectedApp = 3
                    main_loaderItem.source = "ProxyScreen.qml"
                }
            }
        }

        //Account Icon
        Image {
            id: main_img_6
            width: 18
            height: 18
            x: 24
            y: 193
            source: "qrc:/image/0.Common/person-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if (selectedApp != 4) main_img_6.source = "qrc:/image/0.Common/person-outline-active.png"
                }
                onReleased: {
                    if (selectedApp != 4) main_img_6.source = "qrc:/image/0.Common/person-outline-inactive.png"
                }
                onClicked: {
                    console.log("Account Screen")
                    selectedApp = 4
                    main_loaderItem.source = "AccountScreen.qml"
                }
            }
        }

        //Setting Icon
        Image {
            id: main_img_7
            width: 18
            height: 18
            x: 24
            y: 225
            source: "qrc:/image/0.Common/settings-2-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    if (selectedApp != 5) main_img_7.source = "qrc:/image/0.Common/settings-2-outline-active.png"
                }

                onReleased: {
                    if (selectedApp != 5) main_img_7.source = "qrc:/image/0.Common/settings-2-outline-inactive.png"
                }

                onClicked: {
                    console.log("Setting Screen")
                    selectedApp = 5
                    main_loaderItem.source = "SettingScreen.qml"
                }
            }
        }

        //Change Theme icon
        Image {
            id: main_img_8
            width: 24
            height: 24
            x: 21
            y: 686
            source: "qrc:/image/0.Common/sun-outline-inactive.png"
        }
    }

    Loader {
        id: main_loaderItem
        width: 1135
        height: 730
        x: 65
        y: 0
        source: ""
    }
    Connections {
        target: main_loaderItem.item
        onMessage: {
            console.log(msg)
            loaderSubItem.source = "CreateTaskScreen.qml"
        }
    }

    Image {
        id: main_itemMinimize
        width: 18
        height: 18
        x: 1146
        y: 14
        source: "qrc:/image/0.Common/minus-outline-inactive.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Minimize")
                    m_mainScreen.showMinimized();
            }
        }
    }

    Image {
        id: main_itemClose
        width: 18
        height: 18
        x: 1163
        y: 14
        source: "qrc:/image/0.Common/close-outline-inactive.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Close icon")
                m_mainScreen.close()
            }
        }
    }

//    Rectangle {
//        id: border
//        anchors.fill: parent
//        color: "green"
//        visible: false
//    }

    Loader {
        id: loaderSubItem
        width: 582
        height: 461
        x: 309
        y: 135
        source: ""
    }

    Connections {
        target: loaderSubItem.item
        onCreateTaskScreenSignal: {
            console.log(msg)
            loaderSubItem.source = ""
        }
    }

    onSelectedAppChanged: {
        if (selectedApp == 0) {
            main_img_2.source = "qrc:/image/0.Common/grid-outline-active.png"
            main_img_3.source = "qrc:/image/0.Common/cube-outline-inactive.png"
            main_img_4.source = "qrc:/image/0.Common/credit-card-outline-inactive.png"
            main_img_5.source = "qrc:/image/0.Common/flash-outline-2-inactive.png"
            main_img_6.source = "qrc:/image/0.Common/person-outline-inactive.png"
            main_img_7.source = "qrc:/image/0.Common/settings-2-outline-inactive.png"
        } else if (selectedApp == 1) {
            main_img_2.source = "qrc:/image/0.Common/grid-outline-inactive.png"
            main_img_3.source = "qrc:/image/0.Common/cube-outline-active.png"
            main_img_4.source = "qrc:/image/0.Common/credit-card-outline-inactive.png"
            main_img_5.source = "qrc:/image/0.Common/flash-outline-2-inactive.png"
            main_img_6.source = "qrc:/image/0.Common/person-outline-inactive.png"
            main_img_7.source = "qrc:/image/0.Common/settings-2-outline-inactive.png"
        } else if (selectedApp == 2) {
            main_img_2.source = "qrc:/image/0.Common/grid-outline-inactive.png"
            main_img_3.source = "qrc:/image/0.Common/cube-outline-inactive.png"
            main_img_4.source = "qrc:/image/0.Common/credit-card-outline-active.png"
            main_img_5.source = "qrc:/image/0.Common/flash-outline-2-inactive.png"
            main_img_6.source = "qrc:/image/0.Common/person-outline-inactive.png"
            main_img_7.source = "qrc:/image/0.Common/settings-2-outline-inactive.png"
        } else if (selectedApp == 3) {
            main_img_2.source = "qrc:/image/0.Common/grid-outline-inactive.png"
            main_img_3.source = "qrc:/image/0.Common/cube-outline-inactive.png"
            main_img_4.source = "qrc:/image/0.Common/credit-card-outline-inactive.png"
            main_img_5.source = "qrc:/image/0.Common/flash-outline-2-active.png"
            main_img_6.source = "qrc:/image/0.Common/person-outline-inactive.png"
            main_img_7.source = "qrc:/image/0.Common/settings-2-outline-inactive.png"
        } else if (selectedApp == 4) {
            main_img_2.source = "qrc:/image/0.Common/grid-outline-inactive.png"
            main_img_3.source = "qrc:/image/0.Common/cube-outline-inactive.png"
            main_img_4.source = "qrc:/image/0.Common/credit-card-outline-inactive.png"
            main_img_5.source = "qrc:/image/0.Common/flash-outline-2-inactive.png"
            main_img_6.source = "qrc:/image/0.Common/person-outline-active.png"
            main_img_7.source = "qrc:/image/0.Common/settings-2-outline-inactive.png"
        } else if (selectedApp == 5) {
            main_img_2.source = "qrc:/image/0.Common/grid-outline-inactive.png"
            main_img_3.source = "qrc:/image/0.Common/cube-outline-inactive.png"
            main_img_4.source = "qrc:/image/0.Common/credit-card-outline-inactive.png"
            main_img_5.source = "qrc:/image/0.Common/flash-outline-2-inactive.png"
            main_img_6.source = "qrc:/image/0.Common/person-outline-inactive.png"
            main_img_7.source = "qrc:/image/0.Common/settings-2-outline-active.png"
        } else {
            console.log("incorrect slected app")
        }
    }

    Component.onCompleted: {
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

        console.log("complete")
        listIMG_ID.push(main_img_1)
        listIMG_ID.push(main_img_2)
        listIMG_ID.push(main_img_3_1)
        listIMG_ID.push(main_img_3)
        listIMG_ID.push(main_img_4)
        listIMG_ID.push(main_img_5)
        listIMG_ID.push(main_img_6)
        listIMG_ID.push(main_img_7)
        listIMG_ID.push(main_img_8)
        listIMG_ID.push(main_itemMinimize)
        listIMG_ID.push(main_itemClose)
        listIMG_ID.push(main_loaderItem)
        listIMG_ID.push(loaderSubItem)

        listREC_ID.push(rec_1)
    }
    onHeightChanged: {
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
        console.log("hunght w" + width)
        if (width < 1140) {
            width = 1140
        }

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
