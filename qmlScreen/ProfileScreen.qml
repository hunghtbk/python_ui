import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    id: m_profoleScreen
    visible: true
    width: 1200
    height: 730
    title: qsTr("Task Screen")
    color: "#2E2C50"
//    flags:Qt.FramelessWindowHint

    property int currentWidth: m_profoleScreen.width
    property int currentHeight: m_profoleScreen.height

    property var listItemID: []
    property var listListViewID: []
    property var listTXT_7: []
    property var listTXT_8: []
    property var listTXT_9: []
    property var listTXT_13: []

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
                    img_2.source = "qrc:/image/0.Common/grid-outline-active.png"
                }
                onReleased: {
                    img_2.source = "qrc:/image/0.Common/grid-outline-inactive.png"
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
                    img_3.source = "qrc:/image/0.Common/cube-outline-active.png"
                }
                onReleased: {
                    img_3.source = "qrc:/image/0.Common/cube-outline-inactive.png"
                }
            }
        }

        //Selected Icon
        Rectangle {
            id: item4
            width: 8
            height: 8
            x: 61
            y: 132
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
            source: "qrc:/image/0.Common/credit-card-outline-active.png"
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
                    img_5.source = "qrc:/image/0.Common/flash-outline-2-active.png"
                }
                onReleased: {
                    img_5.source = "qrc:/image/0.Common/flash-outline-2-inactive.png"
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
                    img_6.source = "qrc:/image/0.Common/person-outline-active.png"
                }
                onReleased: {
                    img_6.source = "qrc:/image/0.Common/person-outline-inactive.png"
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
            id: item9
            width: 24
            height: 24
            x: 21
            y: 686
            source: "qrc:/image/0.Common/sun-outline-inactive.png"
        }
    }

    Rectangle {
        id: item10
        x: 65
        y: 0
        width: 284
        height: 730
        color: "#282645"

        Text {
            id: txt_1
            property int textSize: 13
            text: qsTr("Profile Groups")
            width: 108
            height: 19
            x: 33
            y: 19
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
        }

        Image {
            id: item11
            width: 21
            height: 21
            x: 158
            y: 19
            source: "qrc:/image/0.Common/Add_inactive_icon.png"
        }

        //List profile group
        ListView {
            id: list_1
            width: 221
            height: 660
            x: 33
            y: 64
            model: ProfileGroupModel {}
            delegate: ProfileGroupDelegate {}
            clip: true
        }

    }

    Rectangle {
        id: item12
        x: 349
        y: 0
        width: 851
        height: 730
        color: "transparent"

        Image {
            id: item13
            width: 18
            height: 18
            x: 794
            y: 14
            source: "qrc:/image/0.Common/minus-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Minimize")
                    m_profoleScreen.showMinimized();
                }
            }
        }

        Image {
            id: item14
            width: 18
            height: 18
            x: 814
            y: 14
            source: "qrc:/image/0.Common/close-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Close icon")
                    m_profoleScreen.close()
                }
            }
        }

        Text {
            id: txt_2
            property int textSize: 13
            text: qsTr("Profiles")
            width: 57
            height: 19
            x: 27
            y: 19
            font.family: "Inter"
            font.pointSize: textSize
            color: "#FFFFFF"
        }

        Image {
            id: item15
            width: 21
            height: 21
            x: 100
            y: 19
            source: "qrc:/image/0.Common/Add_inactive_icon.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Add new Profile Item")
                }
            }
        }

        Rectangle {
            id: item16
            width: 196
            height: 30
            x: 27
            y: 56
            color: "#37345E"
            clip: true
            TextInput {
                id: txt_3
                property int textSize: 9
                width: 170
                height: 15
                x: 12
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
                text: qsTr("Privacy")
            }
        }

        Rectangle {
            id: item17
            width: 98
            height: 30
            x: 235
            y: 56
            color: "#FFFFFF"
            radius: 5

            Text {
                id: txt_4
                property int textSize: 9
                width: 47
                height: 15
                x: 20
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#2E2C50"
                text: qsTr("Confirm")
            }

            Image {
                id: item18
                width: 3.5
                height: 7
                x: 74
                y: 12
                source: "qrc:/image/Profile/arrow-right.png"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Confirm button")
                }
            }
        }

        Rectangle {
            id: item19
            width: 104
            height: 30
            x: 714
            y: 56
            color: "#FFFFFF"
            radius: 5

            Text {
                id: txt_5
                property int textSize: 9
                width: 56
                height: 15
                x: 14
                y: 8
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FA5B79"
                text: qsTr("Delete All")
            }

            Image {
                id: item20
                width: 12
                height: 12
                x: 77
                y: 9
                source: "qrc:/image/Profile/trash-outline-red.png"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Delete All button")
                }
            }
        }

        Rectangle {
            id: item21
            width: 791
            height: 30
            x: 27
            y: 102
            color: "#907DE2"

            Text {
                id: txt_6
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
                id: txt_7
                property int textSize: 8
                text: qsTr("PROFILE NAME")
                width: 74
                height: 12
                x: 40
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_8
                property int textSize: 8
                text: qsTr("NAME ON CARD")
                width: 79
                height: 12
                x: 210
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_9
                property int textSize: 8
                text: qsTr("CARD")
                width: 22
                height: 12
                x: 490
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_10
                property int textSize: 8
                text: qsTr("ACTION")
                width: 46
                height: 12
                x: 720
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }
        }
        //List item
        Image {
            id: item22
            width: 9
            height: 558
            x: 807
            y: 148
            source: "qrc:/image/TaskScreen/task_scroll_border.png"
        }
        ListView {
            id: list_2
            width: 791
            height: 558
            x: 27
            y: 148
            model: ProfileItemModel {}
            delegate: ProfileItemDeletegate {}
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
        listItemID.push(item0)
        listItemID.push(item1)
        listItemID.push(item2)
        listItemID.push(item3)
        listItemID.push(item4)
        listItemID.push(item5)
        listItemID.push(item6)
        listItemID.push(item7)
        listItemID.push(item8)
        listItemID.push(item9)
        listItemID.push(item10)
        listItemID.push(item11)
        listItemID.push(item12)
        listItemID.push(item13)
        listItemID.push(item14)
        listItemID.push(item15)
        listItemID.push(item16)
        listItemID.push(item17)
        listItemID.push(item18)
        listItemID.push(item19)
        listItemID.push(item20)
        listItemID.push(item21)
        listItemID.push(item22)

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

        listListViewID.push(list_1)
        listListViewID.push(list_2)
    }
    onHeightChanged: {
        var rate = height/currentHeight
        var rateTextSize = height/730
        for (var i = 0; i < listItemID.length; i++) {
            listItemID[i].y = listItemID[i].y * rate
            listItemID[i].height = listItemID[i].height * rate
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
