import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtCharts 2.0

Window {
    id: m_dashboardScreen
    visible: true
    width: 1200
    height: 730
    title: qsTr("Task Screen")
    color: "#2E2C50"
//    flags:Qt.FramelessWindowHint
    signal message(string msg)
    property int currentWidth: m_dashboardScreen.width
    property int currentHeight: m_dashboardScreen.height

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
            source: "qrc:/image/0.Common/grid-outline-active.png"
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
            y: 63
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
            source: "qrc:/image/0.Common/settings-2-outline-inactive.png"

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    item8.source = "qrc:/image/0.Common/settings-2-outline-active.png"
                }

                onReleased: {
                    item8.source = "qrc:/image/0.Common/settings-2-outline-inactive.png"
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
        id: item12
        x: 349
        y: 0
        width: 851
        height: 730
        color: "transparent"

//        Image {
//            id: item13
//            width: 18
//            height: 18
//            x: 794
//            y: 14
//            source: "qrc:/image/0.Common/minus-outline-inactive.png"

//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    console.log("Minimize")
//                    m_dashboardScreen.showMinimized();
//                }
//            }
//        }

//        Image {
//            id: item14
//            width: 18
//            height: 18
//            x: 814
//            y: 14
//            source: "qrc:/image/0.Common/close-outline-inactive.png"

//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    console.log("Close icon")
//                    m_dashboardScreen.close()
//                }
//            }
//        }

        ChartView {
            title: "Line"
            anchors.fill: parent
            antialiasing: true

            LineSeries {
                name: "LineSeries"
                XYPoint { x: 0; y: 0 }
                XYPoint { x: 1.1; y: 2.1 }
                XYPoint { x: 1.9; y: 3.3 }
                XYPoint { x: 2.1; y: 2.1 }
                XYPoint { x: 2.9; y: 4.9 }
                XYPoint { x: 3.4; y: 3.0 }
                XYPoint { x: 4.1; y: 3.3 }
            }
        }

        Rectangle {
            id: item213
            width: 406
            height: 30
            x: 412
            y: 102
            color: "#907DE2"
            radius: 3

            Text {
                id: txt_8
                property int textSize: 8
                text: qsTr("PROXY")
                width: 35
                height: 12
                x: 19
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_9
                property int textSize: 8
                text: qsTr("STATUS")
                width: 40
                height: 12
                x: 271
                y: 9
                font.family: "Inter"
                font.pointSize: textSize
                color: "#FFFFFF"
            }

            Text {
                id: txt_10
                property int textSize: 8
                text: qsTr("ACTIONS")
                width: 46
                height: 12
                x: 335
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
            source: "qrc:/image/0.Common/task_scroll_border.png"
        }
        ListView {
            id: list_2
            width: 406
            height: 558
            x: 412
            y: 144
            model: ProxyItemModel {}
            delegate: ProxyItemDeletegate {}
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
//        listItemID.push(item10)
//        listItemID.push(item11)
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
        listItemID.push(item211)
        listItemID.push(item212)
        listItemID.push(item213)
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
