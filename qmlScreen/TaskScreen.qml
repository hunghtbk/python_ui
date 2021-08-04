import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_taskScreen
    visible: true
    width: 1135
    height: 730
//    title: qsTr("Task Screen")
    color: "#2E2C50"
//    flags:Qt.FramelessWindowHint
    signal message(string msg)
    property int currentWidth: m_taskScreen.width
    property int currentHeight: m_taskScreen.height

    property var listIMG_ID: []
    property var listREC_ID: []
    property var listListViewID: []
    property var listTXT_7: []
    property var listTXT_8: []
    property var listTXT_9: []
    property var listTXT_13: []
/*
    Rectangle {
        id: rec_1
        width: 65
        height: 730
        color: "#37345E"

        //Define small lotus
        Image {
            id: img_1
            width: 31
            height: 30
            x: 17
            y: 13
            source: "qrc:/image/0.Common/Small_lotus.png"
        }
        //Dashboard icon
        Image {
            id: img_2
            width: 18
            height: 18
            x: 24
            y: 59
            source: "qrc:/image/0.Common/grid-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    img_2.source = "qrc:/image/0.Common/grid-outline-active.png"
                }
                onReleased: {
                    img_2.source = "qrc:/image/0.Common/grid-outline-inactive.png"
                }
            }
        }

        //task group icon
        Image {
            id: img_3
            width: 18
            height: 18
            x: 24
            y: 93
            source: "qrc:/image/0.Common/cube-outline-active.png"
        }

        //Selected Icon
        Rectangle {
            id: img_3_1
            width: 8
            height: 8
            x: 61
            y: 98
            color: "#907DE2"
            radius: 100
        }
        //End Selected Icon
        //Profile Icon
        Image {
            id: img_4
            width: 18
            height: 18
            x: 24
            y: 127
            source: "qrc:/image/0.Common/credit-card-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    img_4.source = "qrc:/image/0.Common/credit-card-outline-active.png"
                }
                onReleased: {
                    img_4.source = "qrc:/image/0.Common/credit-card-outline-inactive.png"
                }
            }
        }

        //Proxy icon
        Image {
            id: img_5
            width: 18
            height: 18
            x: 24
            y: 161
            source: "qrc:/image/0.Common/flash-outline-2-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    img_5.source = "qrc:/image/0.Common/flash-outline-2-active.png"
                }
                onReleased: {
                    img_5.source = "qrc:/image/0.Common/flash-outline-2-inactive.png"
                }
            }
        }

        //Account Icon
        Image {
            id: img_6
            width: 18
            height: 18
            x: 24
            y: 193
            source: "qrc:/image/0.Common/person-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    img_6.source = "qrc:/image/0.Common/person-outline-active.png"
                }
                onReleased: {
                    img_6.source = "qrc:/image/0.Common/person-outline-inactive.png"
                }
            }
        }

        //Setting Icon
        Image {
            id: img_7
            width: 18
            height: 18
            x: 24
            y: 225
            source: "qrc:/image/0.Common/settings-2-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    img_7.source = "qrc:/image/0.Common/settings-2-outline-active.png"
                }

                onReleased: {
                    img_7.source = "qrc:/image/0.Common/settings-2-outline-inactive.png"
                }
            }
        }

        //Change Theme icon
        Image {
            id: img_8
            width: 24
            height: 24
            x: 21
            y: 686
            source: "qrc:/image/0.Common/sun-outline-inactive.png"
        }
    }
*/
    Rectangle {
        id: rec_2
        x: 0
        y: 0
        width: 284
        height: 730
        color: "#282645"

        Text {
            id: txt_1
            property int textSize: 13
            text: qsTr("Tasks Groups")
            width: 103
            height: 19
            x: 33
            y: 19
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
        }

        Image {
            id: img_9
            width: 21
            height: 21
            x: 158
            y: 19
            source: "qrc:/image/0.Common/Add_inactive_icon.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                   m_taskScreen.message("clicked!")
                }
            }
        }

        //List task group
        ListView {
            id: list_1
            width: 221
            height: 660
            x: 33
            y: 64
            model: TaskGroupModel {}
            delegate: TaskGroupDelegate {}
            clip: true
        }

    }

    Rectangle {
        id: rec_3
        x: 284
        y: 0
        width: 851
        height: 730
        color: "transparent"

        Image {
            id: img_19
            width: 70.4
            height: 70.4
            x: 27
            y: 22
            source: "qrc:/image/TaskScreen/image_borde.png"

            Image {
                id: img_20
                width: 52
                height: 56
                x: 9
                y: 7
                source: "qrc:/image/Sony-Playstation-5-Blu-Ray-Edition-Console-White_Big.png"
            }
        }

        Text {
            id: txt_7
            property int textSize: 7
            text: qsTr("Site")
            width: 19
            height: 12
            x: 118
            y: 21
            font.family: "Inter"
            font.pointSize: textSize
            color: "#75719B"
        }

        Text {
            id: txt_8
            property int textSize: 9
            text: qsTr("Bestbuy")
            width: 47
            height: 15
            x: 118
            y: 37
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
        }

        Text {
            id: txt_9
            property int textSize: 7
            text: qsTr("Product")
            width: 39
            height: 12
            x: 118
            y: 62
            font.family: "Inter"
            font.pointSize: textSize
            color: "#75719B"
        }

        Text {
            id: txt_10
            property int textSize: 9
            text: qsTr("Playstation 5 Digital Console")
            width: 162
            height: 15
            x: 118
            y: 78
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
        }

        Image {
            id: img_10
            width: 246
            height: 30
            x: 512
            y: 21
            source: "qrc:/image/border_2.png"

            Image {
                id: img_21
                width: 6
                height: 11
                x: 14
                y: 9
                source: "qrc:/image/TaskScreen/dollar-sign-15.png"
            }

            Text {
                id: txt_12
                property int textSize: 9
                text: qsTr("$2,309")
                width: 43
                height: 15
                x: 27
                y: 7
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Image {
                id: img_22
                width: 12
                height: 12
                x: 107
                y: 9
                source: "qrc:/image/TaskScreen/shopping-bag-outline-green.png"
            }

            Text {
                id: txt_13
                property int textSize: 9
                text: qsTr("78")
                width: 43
                height: 15
                x: 125
                y: 7
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Image {
                id: img_23
                width: 12
                height: 12
                x: 189
                y: 9
                source: "qrc:/image/TaskScreen/shopping-bag-outline-red.png"
            }

            Text {
                id: txt_14
                property int textSize: 9
                text: qsTr("28")
                width: 43
                height: 15
                x: 207
                y: 7
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }
        }

//        Image {
//            id: img_24
//            width: 18
//            height: 18
//            x: 794
//            y: 14
//            source: "qrc:/image/0.Common/minus-outline-inactive.png"

//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    console.log("Minimize")
//                    m_taskScreen.showMinimized();
//                }
//            }
//        }

//        Image {
//            id: img_25
//            width: 18
//            height: 18
//            x: 814
//            y: 14
//            source: "qrc:/image/0.Common/close-outline-inactive.png"

//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    console.log("Close icon")
//                    m_taskScreen.close()
//                }
//            }
//        }

        Rectangle {
            id: rec_3_1
            width: 196
            height: 30
            x: 512
            y: 63
            color:"#37345E"
            radius: 3

            TextInput {
                id: txt_15
                property int textSize: 9
                text: qsTr("Mass link change")
                width: 450
                height: 15
                x: 12
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#75719B"
            }
        }

        Rectangle {
            id: rec_3_2
            width: 98
            height: 30
            x: 720
            y: 63
            color: "#FFFFFF"
            radius: 5

            Text {
                id: txt_16
                property int textSize: 9
                text: qsTr("Confirm")
                width: 47
                height: 15
                x: 20
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#2E2C50"
            }
            Image {
                id: img_26
                width: 3.5
                height: 8
                x: 74
                y: 12
                source: "qrc:/image/TaskScreen/arrow_confirm.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Confirm button")
                }
            }
        }

        Image {
            id: img_27
            width: 851
            height: 1
            x: 0
            y: 115.5
            source: "qrc:/image/TaskScreen/line.png"
        }

        Text {
            id: txt_17
            property int textSize: 13
            text: qsTr("Tasks")
            width: 44
            height: 19
            x: 27
            y: 139
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
        }

        Image {
            id: img_28
            width: 9.6
            height: 9.6
            x: 96.4
            y: 144.4
            source: "qrc:/image/add_icon2.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("hunght")
                }
            }
        }
        Image {
            id: img_29
            width: 21
            height: 21
            x: 91
            y: 139
            source: "qrc:/image/0.Common/Add_inactive_icon.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Add new Task Item")
                }
            }
        }

        Image {
            id: img_30
            width: 104
            height: 30
            x: 490
            y: 134
            source: "qrc:/image/TaskScreen/white_border.png"

            Image {
                id: img_31
                width: 7.7
                height: 9.9
                x: 75
                y: 10
                source: "qrc:/image/TaskScreen/starAll_icon.png"
            }

            Text {
                id: txt_18
                property int textSize: 9
                text: qsTr("Start All")
                width: 47
                height: 15
                x: 21
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#29E182"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("start all button")
                }
            }
        }

        Image {
            id: img_32
            width: 104
            height: 30
            x: 602
            y: 134
            source: "qrc:/image/TaskScreen/white_border.png"

            Image {
                id: img_33
                width: 8
                height: 8
                x: 75
                y: 11
                source: "qrc:/image/TaskScreen/stopAll_icon.png"
            }

            Text {
                id: txt_19
                property int textSize: 9
                text: qsTr("Stop All")
                width: 45
                height: 15
                x: 22
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFA94F"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("stop all button")
                }
            }
        }

        Image {
            id: img_34
            width: 104
            height: 30
            x: 714
            y: 134
            source: "qrc:/image/TaskScreen/white_border.png"

            Image {
                id: img_35
                width: 9.6
                height: 9.6
                x: 77.96
                y: 9.96
                source: "qrc:/image/TaskScreen/deleteAll_icon.png"
            }
            Text {
                id: txt_20
                property int textSize: 9
                text: qsTr("Delete All")
                width: 56
                height: 15
                x: 14
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FA5B79"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("stop all button")
                }
            }
        }

        Rectangle {
            id: rec_3_3
            width: 791
            height: 30
            x: 27
            y: 183
            color: "#907DE2"
            radius: 3

            Text {
                id: txt_21
                property int textSize: 8
                text: qsTr("ID")
                width: 10
                height: 12
                x: 12
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_22
                property int textSize: 8
                text: qsTr("PRODUCT")
                width: 50
                height: 12
                x: 40
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_23
                property int textSize: 8
                text: qsTr("SIZE")
                width: 22
                height: 12
                x: 235
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_24
                property int textSize: 8
                text: qsTr("SITE")
                width: 22
                height: 12
                x: 280
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_25
                property int textSize: 8
                text: qsTr("PROFILE")
                width: 42
                height: 12
                x: 377
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_26
                property int textSize: 8
                text: qsTr("PROXY")
                width: 35
                height: 12
                x: 468
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_27
                property int textSize: 8
                text: qsTr("STATUS")
                width: 40
                height: 12
                x: 575
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_28
                property int textSize: 8
                text: qsTr("ACTION")
                width: 46
                height: 12
                x: 696
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }
        }
        //List item
        Image {
            id: img_36
            width: 9
            height: 480
            x: 809
            y: 229
            source: "qrc:/image/TaskScreen/task_scroll_border.png"
        }
        ListView {
            id: list_2
            width: 793
            height: 498
            x: 27
            y: 227
            model: TaskItemModel {}
            delegate: TaskItemDelegate {}
            clip: true
            flickableDirection: Flickable.VerticalFlick
            boundsBehavior: Flickable.StopAtBounds
            ScrollBar.vertical: ScrollBar {
                contentItem: Rectangle {
                    id: rec_4
                    implicitWidth: 9
                    implicitHeight: 221
                    color: "#423F6B"
                    radius: 10
                }
            }
        }
    }

    Component.onCompleted: {
        console.log("complete")
        listIMG_ID.push(img_1)
        listIMG_ID.push(img_2)
        listIMG_ID.push(img_3_1)
        listIMG_ID.push(img_3)
        listIMG_ID.push(img_4)
        listIMG_ID.push(img_5)
        listIMG_ID.push(img_6)
        listIMG_ID.push(img_7)
        listIMG_ID.push(img_8)
        listIMG_ID.push(img_9)
        listIMG_ID.push(img_10)
        listIMG_ID.push(img_19)
        listIMG_ID.push(img_20)
        listIMG_ID.push(img_21)
        listIMG_ID.push(img_22)
        listIMG_ID.push(img_23)
//        listIMG_ID.push(img_24)
//        listIMG_ID.push(img_25)
        listIMG_ID.push(img_26)
        listIMG_ID.push(img_27)
        listIMG_ID.push(img_28)
        listIMG_ID.push(img_29)
        listIMG_ID.push(img_30)
        listIMG_ID.push(img_31)
        listIMG_ID.push(img_32)
        listIMG_ID.push(img_33)
        listIMG_ID.push(img_34)
        listIMG_ID.push(img_35)
        listIMG_ID.push(img_36)

        listREC_ID.push(rec_1)
        listREC_ID.push(rec_2)
        listREC_ID.push(rec_3)
        listREC_ID.push(rec_3_1)
        listREC_ID.push(rec_3_2)
        listREC_ID.push(rec_3_3)

        listTXT_7.push(txt_7)
        listTXT_7.push(txt_9)

        listTXT_8.push(txt_21)
        listTXT_8.push(txt_22)
        listTXT_8.push(txt_23)
        listTXT_8.push(txt_24)
        listTXT_8.push(txt_25)
        listTXT_8.push(txt_26)
        listTXT_8.push(txt_27)
        listTXT_8.push(txt_28)

        listTXT_9.push(txt_8)
        listTXT_9.push(txt_10)
        listTXT_9.push(txt_12)
        listTXT_9.push(txt_13)
        listTXT_9.push(txt_14)
        listTXT_9.push(txt_15)
        listTXT_9.push(txt_16)
        listTXT_9.push(txt_18)
        listTXT_9.push(txt_19)
        listTXT_9.push(txt_20)

        listTXT_13.push(txt_1)
        listTXT_13.push(txt_17)

        listListViewID.push(list_1)
        listListViewID.push(list_2)
    }
    onHeightChanged: {
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
        rec_4.implicitHeight = rec_4.implicitHeight * rate
    }

    onWidthChanged: {
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
        rec_4.implicitWidth = rec_4.implicitWidth *rate
    }
}
