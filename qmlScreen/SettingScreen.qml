import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_settingScreen
    visible: true
    width: 1135
    height: 730
//    title: qsTr("Account Screen")
    color: "#2E2C50"
//    flags:Qt.FramelessWindowHint

    property int currentWidth: m_settingScreen.width
    property int currentHeight: m_settingScreen.height

    property var listItemID: []
    property var listTXT_7: []
    property var listTXT_8: []
    property var listTXT_9: []
    property var listTXT_11: []
    property var listTXT_13: []
    property var listTXT_15: []
/*
    Rectangle {
        id: item0
        width: 65
        height: 730
        color: "#37345E"

        //Define small lotus
        Image {
            id: item1
            width: 31
            height: 30
            x: 17
            y: 13
            source: "qrc:/image/0.Common/Small_lotus.png"
        }
        //Dashboard icon
        Image {
            id: item2
            width: 18
            height: 18
            x: 24
            y: 59
            source: "qrc:/image/0.Common/grid-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    item2.source = "qrc:/image/0.Common/grid-outline-active.png"
                }
                onReleased: {
                    item2.source = "qrc:/image/0.Common/grid-outline-inactive.png"
                }
            }
        }

        //task group icon
        Image {
            id: item3
            width: 18
            height: 18
            x: 24
            y: 93
            source: "qrc:/image/0.Common/cube-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    item3.source = "qrc:/image/0.Common/cube-outline-active.png"
                }
                onReleased: {
                    item3.source = "qrc:/image/0.Common/cube-outline-inactive.png"
                }
            }
        }

        //Selected Icon
        Rectangle {
            id: item4
            width: 8
            height: 8
            x: 61
            y: 230
            color: "#907DE2"
            radius: 100
        }
        //End Selected Icon
        //Profile Icon
        Image {
            id: item5
            width: 18
            height: 18
            x: 24
            y: 127
            source: "qrc:/image/0.Common/credit-card-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    item5.source = "qrc:/image/0.Common/credit-card-outline-active.png"
                }
                onReleased: {
                    item5.source = "qrc:/image/0.Common/credit-card-outline-inactive.png"
                }
            }
        }

        //Proxy icon
        Image {
            id: item6
            width: 18
            height: 18
            x: 24
            y: 161
            source: "qrc:/image/0.Common/flash-outline-2-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    item6.source = "qrc:/image/0.Common/flash-outline-2-active.png"
                }
                onReleased: {
                    item6.source = "qrc:/image/0.Common/flash-outline-2-inactive.png"
                }
            }
        }

        //Account Icon
        Image {
            id: item7
            width: 18
            height: 18
            x: 24
            y: 193
            source: "qrc:/image/0.Common/person-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    item7.source = "qrc:/image/0.Common/person-outline-active.png"
                }
                onReleased: {
                    item7.source = "qrc:/image/0.Common/person-outline-inactive.png"
                }
            }
        }

        //Setting Icon
        Image {
            id: item8
            width: 18
            height: 18
            x: 24
            y: 225
            source: "qrc:/image/0.Common/settings-2-outline-active.png"
        }

        //Change Theme icon
        Image {
            id: item9
            width: 24
            height: 24
            x: 21
            y: 686
            source: "qrc:/image/0.Common/sun-outline-inactive.png"
        }
    }
*/
    Rectangle {
        id: item10
        width: 1130
        height: 730
        x: 0
        y: 0
        color: "#2E2C50"

        Text {
            id: txt_1
            property int textSize: 13
            width: 63
            height: 19
            x: 33
            y: 19
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            text: qsTr("Settings")
        }

        Rectangle {
            id: item11
            width: 320
            height: 166
            x: 33
            y: 64
            color: "#907DE2"
            radius: 3

            Text {
                id: txt_2
                property int textSize: 11
                width: 69
                height: 17
                x: 36
                y: 25
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
                text: qsTr("Expiration")
            }

            Text {
                id: txt_3
                property int textSize: 15
                width: 109
                height: 22
                x: 36
                y: 49
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
                text: qsTr("June 8, 2021")
            }

            Rectangle {
                id: item12
                width: 115
                height: 30
                x: 36
                y: 105
                color: "#FFFFFF"
                radius: 3

                Text {
                    id: txt_4
                    property int textSize: 9
                    width: 64
                    height: 15
                    x: 21
                    y: 8
                    font.family: "Inter"
                    font.pointSize: textSize
                    color: "#2E2C50"
                    text: qsTr("Dashboard")
                }

                Image {
                    id: item13
                    width: 4
                    height: 7
                    x: 91
                    y: 12
                    source: "qrc:/image/Setting/arrow-right.png"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("Dashboard button")
                    }
                }
            }

            Image {
                id: item14
                width: 82
                height: 82
                x: 200
                y: 42
                source: "qrc:/image/Setting/full-rate.png"
            }

            Image {
                id: item15
                width: 41
                height: 78.69
                x: 200
                y: 42
                source: "qrc:/image/Setting/expired_rate.png"
            }

            Text {
                id: txt_5
                property int textSize: 15
                width: 22
                height: 22
                x: 230
                y: 66
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
                text: qsTr("73")
            }

            Text {
                id: txt_6
                property int textSize: 7
                width: 24
                height: 12
                x: 229
                y: 88
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
                text: qsTr("days")
            }
        }

        Text {
            id: txt_7
            property int textSize: 11
            width: 108
            height: 17
            x: 376
            y: 35
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            text: qsTr("AYCD Autosolve")
        }

        Text {
            id: txt_8
            property int textSize: 11
            width: 45
            height: 17
            x: 750
            y: 35
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            text: qsTr("Delays")
        }

//        Image {
//            id: item16
//            width: 18
//            height: 18
//            x: 1078
//            y: 14
//            source: "qrc:/image/0.Common/minus-outline-inactive.png"

//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    console.log("Minimize")
//                    m_settingScreen.showMinimized();
//                }
//            }
//        }

//        Image {
//            id: item17
//            width: 18
//            height: 18
//            x: 1098
//            y: 14
//            source: "qrc:/image/0.Common/close-outline-inactive.png"

//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    console.log("Close icon")
//                    m_settingScreen.close()
//                }
//            }
//        }

        Text {
            id: txt_9
            property int textSize: 9
            width: 81
            height: 15
            x: 376
            y: 64
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            text: qsTr("Access Token")
        }

        Rectangle {
            id: item18
            width: 352
            height: 30
            x: 376
            y: 88
            color: "#37345E"

            TextInput {
                id: txt_10
                property int textSize: 9
                width: 322
                height: 15
                x: 12
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#75719B"
                text: qsTr("Enter token")
            }
        }

        Text {
            id: txt_11
            property int textSize: 9
            width: 81
            height: 15
            x: 750
            y: 64
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            text: qsTr("Monitor Delay")
        }

        Rectangle {
            id: item19
            width: 352
            height: 30
            x: 750
            y: 88
            color: "#37345E"

            TextInput {
                id: txt_12
                property int textSize: 9
                width: 322
                height: 15
                x: 12
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#75719B"
                text: qsTr("0")
            }
        }

        Text {
            id: txt_13
            property int textSize: 9
            width: 81
            height: 15
            x: 376
            y: 134
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            text: qsTr("API Key")
        }

        Rectangle {
            id: item20
            width: 352
            height: 30
            x: 376
            y: 165
            color: "#37345E"

            TextInput {
                id: txt_14
                property int textSize: 9
                width: 322
                height: 15
                x: 12
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#75719B"
                text: qsTr("Enter key")
            }
        }

        Text {
            id: txt_15
            property int textSize: 9
            width: 81
            height: 15
            x: 750
            y: 134
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            text: qsTr("Retry Delay")
        }

        Rectangle {
            id: item21
            width: 352
            height: 30
            x: 750
            y: 165
            color: "#37345E"

            TextInput {
                id: txt_16
                property int textSize: 9
                width: 322
                height: 15
                x: 12
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#75719B"
                text: qsTr("0")
            }
        }

        Rectangle {
            id: item22
            width: 91
            height: 30
            x: 637
            y: 200
            color: "#FFFFFF"
            radius: 5

            TextInput {
                id: txt_17
                property int textSize: 9
                width: 29
                height: 15
                x: 22
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#2AE182"
                text: qsTr("Save")
            }

            Image {
                id: item23
                width: 12
                height: 12
                x: 56
                y: 9
                source: "qrc:/image/Setting/save-outline.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Save 1 button")
                }
            }
        }

        Rectangle {
            id: item24
            width: 91
            height: 30
            x: 1011
            y: 200
            color: "#FFFFFF"
            radius: 5

            TextInput {
                id: txt_18
                property int textSize: 9
                width: 29
                height: 15
                x: 22
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#2AE182"
                text: qsTr("Save")
            }

            Image {
                id: item25
                width: 12
                height: 12
                x: 56
                y: 9
                source: "qrc:/image/Setting/save-outline.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Save 2 button")
                }
            }
        }

        Text {
            id: txt_19
            property int textSize: 11
            width: 70
            height: 17
            x: 33
            y: 257
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            text: qsTr("Webhooks")
        }

        Text {
            id: txt_20
            property int textSize: 9
            width: 70
            height: 17
            x: 33
            y: 286
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
            text: qsTr("Discord Webhook")
        }

        Rectangle {
            id: item26
            width: 695
            height: 30
            x: 33
            y: 310
            color: "#37345E"
            radius: 3

            TextInput {
                id: txt_21
                property int textSize: 9
                width: 600
                height: 15
                x: 12
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#75719B"
                text: qsTr("Enter webhook")
            }
        }

        Rectangle {
            id: item27
            width: 91
            height: 30
            x: 637
            y: 352
            color: "#FFFFFF"
            radius: 5

            TextInput {
                id: txt_22
                property int textSize: 9
                width: 29
                height: 15
                x: 22
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#2AE182"
                text: qsTr("Save")
            }

            Image {
                id: item28
                width: 12
                height: 12
                x: 56
                y: 9
                source: "qrc:/image/Setting/save-outline.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Save 3 button")
                }
            }
        }

        Rectangle {
            id: item29
            width: 91
            height: 30
            x: 536
            y: 352
            color: "#FFFFFF"
            radius: 5

            TextInput {
                id: txt_23
                property int textSize: 9
                width: 29
                height: 15
                x: 22
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#2E2C50"
                text: qsTr("Test")
            }

            Image {
                id: item30
                width: 4
                height: 7
                x: 59
                y: 12
                source: "qrc:/image/Setting/arrow-right.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Test button")
                }
            }
        }

        Rectangle {
            id: item31
            width: 352
            height: 123
            x: 750
            y: 259
            radius: 3
            color: "#37345E"

            Text {
                id: txt_24
                property int textSize: 11
                width: 57
                height: 17
                x: 21
                y: 16
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
                text: qsTr("Updates")
            }

            Text {
                id: txt_25
                property int textSize: 9
                width: 111
                height: 15
                x: 21
                y: 43
                font.family: "Inter"
                font.pointSize: textSize
                color: "#907DE2"
                text: qsTr("Latest Version 1.0.2")
            }

            Rectangle {
                id: item32
                width: 161
                height: 30
                x: 21
                y: 73
                color: "#FFFFFF"
                radius: 5

                TextInput {
                    id: txt_26
                    property int textSize: 9
                    width: 107
                    height: 15
                    x: 22
                    y: 8
                    font.family: "Inter"
                    font.pointSize: textSize
                    color: "#2E2C50"
                    text: qsTr("Check for updates")
                }

                Image {
                    id: item33
                    width: 4
                    height: 7
                    x: 135
                    y: 12
                    source: "qrc:/image/Setting/arrow-right.png"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.log("Check for updates button")
                    }
                }
            }
        }

        Image {
            id: item34
            width: 260
            height: 300
            x: -64
            y: 430
            source: "qrc:/image/Setting/grey_oval.png"
        }

        Rectangle {
            id: item35
            width: 65
            height: 300
            x: -65
            y: 300
            color: "#37345E"
        }

        Image {
            id: item36
            width: 239
            height: 235
            x: 99.25
            y: 466.44
            source: "qrc:/image/Setting/normal_lotus.png"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log(width + "-" + height)
                }
            }
        }

        Image {
            id: item37
            width: 424
            height: 381
            x: 711.44
            y: 349.51
            source: "qrc:/image/Setting/big_lotus.png"
        }

        Image {
            id: item38
            width: 621
            height: 165
            x: 343
            y: 565
            source: "qrc:/image/Setting/white_oval.png"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log(width + "-" + height)
                }
            }
        }
    }

    Component.onCompleted: {
        console.log("complete")
//        listItemID.push(item0)
//        listItemID.push(item1)
//        listItemID.push(item2)
//        listItemID.push(item3)
//        listItemID.push(item4)
//        listItemID.push(item5)
//        listItemID.push(item6)
//        listItemID.push(item7)
//        listItemID.push(item8)
//        listItemID.push(item9)
        listItemID.push(item10)
        listItemID.push(item11)
        listItemID.push(item12)
        listItemID.push(item13)
        listItemID.push(item14)
        listItemID.push(item15)
//        listItemID.push(item16)
//        listItemID.push(item17)
        listItemID.push(item18)
        listItemID.push(item19)
        listItemID.push(item20)
        listItemID.push(item21)
        listItemID.push(item22)
        listItemID.push(item23)
        listItemID.push(item24)
        listItemID.push(item25)
        listItemID.push(item26)
        listItemID.push(item27)
        listItemID.push(item28)
        listItemID.push(item29)
        listItemID.push(item30)
        listItemID.push(item31)
        listItemID.push(item32)
        listItemID.push(item33)
        listItemID.push(item34)
        listItemID.push(item35)
        listItemID.push(item36)
        listItemID.push(item37)
        listItemID.push(item38)


        listTXT_13.push(txt_1)
        listTXT_11.push(txt_2)

        listTXT_15.push(txt_3)
        listTXT_9.push(txt_4)
        listTXT_15.push(txt_5)

        listTXT_7.push(txt_6)
        listTXT_11.push(txt_7)
        listTXT_11.push(txt_8)
        listTXT_9.push(txt_9)
        listTXT_9.push(txt_10)
        listTXT_9.push(txt_11)
        listTXT_9.push(txt_12)
        listTXT_9.push(txt_13)
        listTXT_9.push(txt_14)
        listTXT_9.push(txt_15)
        listTXT_9.push(txt_16)
        listTXT_9.push(txt_17)
        listTXT_9.push(txt_18)
        listTXT_11.push(txt_19)
        listTXT_9.push(txt_20)
        listTXT_9.push(txt_21)
        listTXT_9.push(txt_22)
        listTXT_9.push(txt_23)
        listTXT_11.push(txt_24)
        listTXT_9.push(txt_25)
        listTXT_9.push(txt_26)
    }
    onHeightChanged: {
        var rate = height/currentHeight
        var rateTextSize = height/730
        for (var i = 0; i < listItemID.length; i++) {
            listItemID[i].y = listItemID[i].y * rate
            listItemID[i].height = listItemID[i].height * rate
        }

        for (var j = 0; j < listTXT_7.length; j++) {
            listTXT_7[j].y = listTXT_7[j].y * rate
            listTXT_7[j].height = listTXT_7[j].height * rate
            listTXT_7[j].textSize = 7 * rateTextSize
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

        for (var k = 0; k < listTXT_11.length; k++) {
            listTXT_11[k].y = listTXT_11[k].y * rate
            listTXT_11[k].height = listTXT_11[k].height * rate
            listTXT_11[k].textSize = 11 * rateTextSize
        }

        for (var n = 0; n < listTXT_13.length; n++) {
            listTXT_13[n].y = listTXT_13[n].y * rate
            listTXT_13[n].height = listTXT_13[n].height * rate
            listTXT_13[n].textSize = 13 * rateTextSize
        }
        for (var p = 0; p < listTXT_15.length; p++) {
            listTXT_15[p].y = listTXT_15[p].y * rate
            listTXT_15[p].height = listTXT_15[p].height * rate
            listTXT_15[p].textSize = 15 * rateTextSize
        }
    }

    onWidthChanged: {
        var rate = width/currentWidth
        for (var i = 0; i < listItemID.length; i++) {
            listItemID[i].x = listItemID[i].x * rate
            listItemID[i].width = listItemID[i].width * rate
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

        for (var k = 0; k < listTXT_11.length; k++) {
            listTXT_11[k].x = listTXT_11[k].x * rate
            listTXT_11[k].width = listTXT_11[k].width * rate
        }

        for (var n = 0; n < listTXT_13.length; n++) {
            listTXT_13[n].x = listTXT_13[n].x * rate
            listTXT_13[n].width = listTXT_13[n].width * rate
        }
        for (var p = 0; p < listTXT_15.length; p++) {
            listTXT_15[p].x= listTXT_15[p].x * rate
            listTXT_15[p].width = listTXT_15[p].width * rate
        }
    }
}
