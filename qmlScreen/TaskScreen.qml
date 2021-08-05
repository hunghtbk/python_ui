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
    property int taskScreenCurrentWidth: m_taskScreen.width
    property int taskScreenCurrentHeight: m_taskScreen.height

    property var taskScreenListIMG_ID: []
    property var taskScreenListREC_ID: []
    property var taskScreenListListViewID: []
    property var taskScreenListtaskScreen_txt_7: []
    property var taskScreenListtaskScreen_txt_8: []
    property var taskScreenListtaskScreen_txt_9: []
    property var taskScreenListtaskScreenTxt_13: []
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
        id: taskScreenRec_2
        x: 0
        y: 0
        width: 284
        height: 730
        color: "#282645"

        Text {
            id: taskScreenTxt_1
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
            id: taskScreenImg_9
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
            id: taskScreenList_1
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
        id: taskScreenRec_3
        x: 284
        y: 0
        width: 851
        height: 730
        color: "transparent"

        Image {
            id: taskScreen_img_19
            width: 70.4
            height: 70.4
            x: 27
            y: 22
            source: "qrc:/image/TaskScreen/image_borde.png"

            Image {
                id: taskScreen_img_20
                width: 52
                height: 56
                x: 9
                y: 7
                source: "qrc:/image/Sony-Playstation-5-Blu-Ray-Edition-Console-White_Big.png"
            }
        }

        Text {
            id: taskScreen_txt_7
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
            id: taskScreen_txt_8
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
            id: taskScreen_txt_9
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
            id: taskScreenTxt_10
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
            id: taskScreen_img_10
            width: 246
            height: 30
            x: 512
            y: 21
            source: "qrc:/image/border_2.png"

            Image {
                id: taskScreen_img_21
                width: 6
                height: 11
                x: 14
                y: 9
                source: "qrc:/image/TaskScreen/dollar-sign-15.png"
            }

            Text {
                id: taskScreenTxt_12
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
                id: taskScreen_img_22
                width: 12
                height: 12
                x: 107
                y: 9
                source: "qrc:/image/TaskScreen/shopping-bag-outline-green.png"
            }

            Text {
                id: taskScreenTxt_13
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
                id: taskScreen_img_23
                width: 12
                height: 12
                x: 189
                y: 9
                source: "qrc:/image/TaskScreen/shopping-bag-outline-red.png"
            }

            Text {
                id: taskScreenTxt_14
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
            id: taskScreenRec_3_1
            width: 196
            height: 30
            x: 512
            y: 63
            color:"#37345E"
            radius: 3

            TextInput {
                id: taskScreenTxt_15
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
            id: taskScreenRec_3_2
            width: 98
            height: 30
            x: 720
            y: 63
            color: "#FFFFFF"
            radius: 5

            Text {
                id: taskScreenTxt_16
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
                id: taskScreen_img_26
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
            id: taskScreen_img_27
            width: 851
            height: 1
            x: 0
            y: 115.5
            source: "qrc:/image/TaskScreen/line.png"
        }

        Text {
            id: taskScreenTxt_17
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
            id: taskScreen_img_28
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
            id: taskScreen_img_29
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
            id: taskScreen_img_30
            width: 104
            height: 30
            x: 490
            y: 134
            source: "qrc:/image/TaskScreen/white_border.png"

            Image {
                id: taskScreen_img_31
                width: 7.7
                height: 9.9
                x: 75
                y: 10
                source: "qrc:/image/TaskScreen/starAll_icon.png"
            }

            Text {
                id: taskScreenTxt_18
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
            id: taskScreen_img_32
            width: 104
            height: 30
            x: 602
            y: 134
            source: "qrc:/image/TaskScreen/white_border.png"

            Image {
                id: taskScreen_img_33
                width: 8
                height: 8
                x: 75
                y: 11
                source: "qrc:/image/TaskScreen/stopAll_icon.png"
            }

            Text {
                id: taskScreenTxt_19
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
            id: taskScreen_img_34
            width: 104
            height: 30
            x: 714
            y: 134
            source: "qrc:/image/TaskScreen/white_border.png"

            Image {
                id: taskScreen_img_35
                width: 9.6
                height: 9.6
                x: 77.96
                y: 9.96
                source: "qrc:/image/TaskScreen/deleteAll_icon.png"
            }
            Text {
                id: taskScreen_txt_20
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
            id: taskScreenRec_3_3
            width: 791
            height: 30
            x: 27
            y: 183
            color: "#907DE2"
            radius: 3

            Text {
                id: taskScreen_txt_21
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
                id: taskScreen_txt_22
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
                id: taskScreen_txt_23
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
                id: taskScreen_txt_24
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
                id: taskScreen_txt_25
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
                id: taskScreen_txt_26
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
                id: taskScreen_txt_27
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
                id: taskScreen_txt_28
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
            id: taskScreenList_2
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

            onWidthChanged: {
                console.log("taskScreenList_2 = " + width)
            }
        }
    }

    Component.onCompleted: {
        console.log("complete")
//        taskScreenListIMG_ID.push(img_1)
//        taskScreenListIMG_ID.push(img_2)
//        taskScreenListIMG_ID.push(img_3_1)
//        taskScreenListIMG_ID.push(img_3)
//        taskScreenListIMG_ID.push(img_4)
//        taskScreenListIMG_ID.push(img_5)
//        taskScreenListIMG_ID.push(img_6)
//        taskScreenListIMG_ID.push(img_7)
//        taskScreenListIMG_ID.push(img_8)
        taskScreenListIMG_ID.push(taskScreenImg_9)
        taskScreenListIMG_ID.push(taskScreen_img_10)
        taskScreenListIMG_ID.push(taskScreen_img_19)
        taskScreenListIMG_ID.push(taskScreen_img_20)
        taskScreenListIMG_ID.push(taskScreen_img_21)
        taskScreenListIMG_ID.push(taskScreen_img_22)
        taskScreenListIMG_ID.push(taskScreen_img_23)
//        taskScreenListIMG_ID.push(img_24)
//        taskScreenListIMG_ID.push(img_25)
        taskScreenListIMG_ID.push(taskScreen_img_26)
        taskScreenListIMG_ID.push(taskScreen_img_27)
        taskScreenListIMG_ID.push(taskScreen_img_28)
        taskScreenListIMG_ID.push(taskScreen_img_29)
        taskScreenListIMG_ID.push(taskScreen_img_30)
        taskScreenListIMG_ID.push(taskScreen_img_31)
        taskScreenListIMG_ID.push(taskScreen_img_32)
        taskScreenListIMG_ID.push(taskScreen_img_33)
        taskScreenListIMG_ID.push(taskScreen_img_34)
        taskScreenListIMG_ID.push(taskScreen_img_35)
        taskScreenListIMG_ID.push(img_36)

//        taskScreenListREC_ID.push(rec_1)
        taskScreenListREC_ID.push(taskScreenRec_2)
        taskScreenListREC_ID.push(taskScreenRec_3)
        taskScreenListREC_ID.push(taskScreenRec_3_1)
        taskScreenListREC_ID.push(taskScreenRec_3_2)
        taskScreenListREC_ID.push(taskScreenRec_3_3)

        taskScreenListtaskScreen_txt_7.push(taskScreen_txt_7)
        taskScreenListtaskScreen_txt_7.push(taskScreen_txt_9)

        taskScreenListtaskScreen_txt_8.push(taskScreen_txt_21)
        taskScreenListtaskScreen_txt_8.push(taskScreen_txt_22)
        taskScreenListtaskScreen_txt_8.push(taskScreen_txt_23)
        taskScreenListtaskScreen_txt_8.push(taskScreen_txt_24)
        taskScreenListtaskScreen_txt_8.push(taskScreen_txt_25)
        taskScreenListtaskScreen_txt_8.push(taskScreen_txt_26)
        taskScreenListtaskScreen_txt_8.push(taskScreen_txt_27)
        taskScreenListtaskScreen_txt_8.push(taskScreen_txt_28)

        taskScreenListtaskScreen_txt_9.push(taskScreen_txt_8)
        taskScreenListtaskScreen_txt_9.push(taskScreenTxt_10)
        taskScreenListtaskScreen_txt_9.push(taskScreenTxt_12)
        taskScreenListtaskScreen_txt_9.push(taskScreenTxt_13)
        taskScreenListtaskScreen_txt_9.push(taskScreenTxt_14)
        taskScreenListtaskScreen_txt_9.push(taskScreenTxt_15)
        taskScreenListtaskScreen_txt_9.push(taskScreenTxt_16)
        taskScreenListtaskScreen_txt_9.push(taskScreenTxt_18)
        taskScreenListtaskScreen_txt_9.push(taskScreenTxt_19)
        taskScreenListtaskScreen_txt_9.push(taskScreen_txt_20)

        taskScreenListtaskScreenTxt_13.push(taskScreenTxt_1)
        taskScreenListtaskScreenTxt_13.push(taskScreenTxt_17)

        taskScreenListListViewID.push(taskScreenList_1)
        taskScreenListListViewID.push(taskScreenList_2)
    }
    onHeightChanged: {
        var rate = height/taskScreenCurrentHeight
        var rateTextSize = height/730
        for (var i = 0; i < taskScreenListIMG_ID.length; i++) {
            taskScreenListIMG_ID[i].y = taskScreenListIMG_ID[i].y * rate
            taskScreenListIMG_ID[i].height = taskScreenListIMG_ID[i].height * rate
        }

        for (var j = 0; j < taskScreenListREC_ID.length; j++) {
            taskScreenListREC_ID[j].y = taskScreenListREC_ID[j].y * rate
            taskScreenListREC_ID[j].height = taskScreenListREC_ID[j].height * rate
        }
        for (var k = 0; k < taskScreenListtaskScreen_txt_7.length; k++) {
            taskScreenListtaskScreen_txt_7[k].y = taskScreenListtaskScreen_txt_7[k].y * rate
            taskScreenListtaskScreen_txt_7[k].height = taskScreenListtaskScreen_txt_7[k].height * rate
            taskScreenListtaskScreen_txt_7[k].textSize = 7 * rateTextSize
        }
        for (var l = 0; l < taskScreenListtaskScreen_txt_8.length; l++) {
            taskScreenListtaskScreen_txt_8[l].y = taskScreenListtaskScreen_txt_8[l].y * rate
            taskScreenListtaskScreen_txt_8[l].height = taskScreenListtaskScreen_txt_8[l].height * rate
            taskScreenListtaskScreen_txt_8[l].textSize = 8 * rateTextSize
        }
        for (var m = 0; m < taskScreenListtaskScreen_txt_9.length; m++) {
            taskScreenListtaskScreen_txt_9[m].y = taskScreenListtaskScreen_txt_9[m].y * rate
            taskScreenListtaskScreen_txt_9[m].height = taskScreenListtaskScreen_txt_9[m].height * rate
            taskScreenListtaskScreen_txt_9[m].textSize = 9 * rateTextSize
        }
        for (var n = 0; n < taskScreenListtaskScreenTxt_13.length; n++) {
            taskScreenListtaskScreenTxt_13[n].y = taskScreenListtaskScreenTxt_13[n].y * rate
            taskScreenListtaskScreenTxt_13[n].height = taskScreenListtaskScreenTxt_13[n].height * rate
            taskScreenListtaskScreenTxt_13[n].textSize = 13 * rateTextSize
        }
        for (var p = 0; p < taskScreenListListViewID.length; p++) {
            taskScreenListListViewID[p].y = taskScreenListListViewID[p].y * rate
            taskScreenListListViewID[p].height = taskScreenListListViewID[p].height * rate
        }
        rec_4.implicitHeight = rec_4.implicitHeight * rate
    }

    onWidthChanged: {
        console.log("Parent width changed = " + width)
        var rate = width/taskScreenCurrentWidth
        for (var i = 0; i < taskScreenListIMG_ID.length; i++) {
            taskScreenListIMG_ID[i].x = taskScreenListIMG_ID[i].x * rate
            taskScreenListIMG_ID[i].width = taskScreenListIMG_ID[i].width * rate
        }

        for (var j = 0; j < taskScreenListREC_ID.length; j++) {
            taskScreenListREC_ID[j].x = taskScreenListREC_ID[j].x * rate
            taskScreenListREC_ID[j].width = taskScreenListREC_ID[j].width * rate
        }
        for (var k = 0; k < taskScreenListtaskScreen_txt_7.length; k++) {
            taskScreenListtaskScreen_txt_7[k].x = taskScreenListtaskScreen_txt_7[k].x * rate
            taskScreenListtaskScreen_txt_7[k].width = taskScreenListtaskScreen_txt_7[k].width * rate
        }
        for (var l = 0; l < taskScreenListtaskScreen_txt_8.length; l++) {
            taskScreenListtaskScreen_txt_8[l].x = taskScreenListtaskScreen_txt_8[l].x * rate
            taskScreenListtaskScreen_txt_8[l].width = taskScreenListtaskScreen_txt_8[l].width * rate
        }
        for (var m = 0; m < taskScreenListtaskScreen_txt_9.length; m++) {
            taskScreenListtaskScreen_txt_9[m].x = taskScreenListtaskScreen_txt_9[m].x * rate
            taskScreenListtaskScreen_txt_9[m].width = taskScreenListtaskScreen_txt_9[m].width * rate
        }
        for (var n = 0; n < taskScreenListtaskScreenTxt_13.length; n++) {
            taskScreenListtaskScreenTxt_13[n].x = taskScreenListtaskScreenTxt_13[n].x * rate
            taskScreenListtaskScreenTxt_13[n].width = taskScreenListtaskScreenTxt_13[n].width * rate
        }
        for (var p = 0; p < taskScreenListListViewID.length; p++) {
            taskScreenListListViewID[p].x = taskScreenListListViewID[p].x * rate
            taskScreenListListViewID[p].width = taskScreenListListViewID[p].width * rate
        }
        rec_4.implicitWidth = rec_4.implicitWidth *rate
    }
}
