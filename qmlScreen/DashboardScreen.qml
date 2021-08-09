import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtCharts 2.0

Rectangle {
    id: m_dashboardScreen
    visible: true
    width: 1200
    height: 730
    //    title: qsTr("Task Screen")
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

    ChartView {
//        title: "Spline"
        width: 617
        height: 414
        x: 33
        y: 273
        antialiasing: true
        backgroundColor: "#37345E"
        theme: ChartView.ChartThemeDark
        axes: xAxis

        ValueAxis {
                id: xAxis
                min: 0
                max: 10
            }
        SplineSeries {
//            name: "SplineSeries"
            XYPoint { x: 0; y: 0.0 }
            XYPoint { x: 1.1; y: 3.2 }
            XYPoint { x: 1.9; y: 2.4 }
            XYPoint { x: 2.1; y: 2.1 }
            XYPoint { x: 2.9; y: 2.6 }
            XYPoint { x: 3.4; y: 2.3 }
            XYPoint { x: 4.1; y: 3.1 }
            color: "#907DE2"
        }
    }

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
        //        listItemID.push(item10)
        //        listItemID.push(item11)
//        listItemID.push(item12)
        //        listItemID.push(item13)
        //        listItemID.push(item14)
        //        listItemID.push(item15)
        //        listItemID.push(item16)
        //        listItemID.push(item17)
        //        listItemID.push(item18)
        //        listItemID.push(item19)
        //        listItemID.push(item20)
        //        listItemID.push(item21)
        //        listItemID.push(item211)
        //        listItemID.push(item212)
//        listItemID.push(item213)
        listItemID.push(item22)

        //        listTXT_9.push(txt_3)
        //        listTXT_9.push(txt_4)
        //        listTXT_9.push(txt_5)

        //        listTXT_8.push(txt_6)
        //        listTXT_8.push(txt_7)
//        listTXT_8.push(txt_8)
//        listTXT_8.push(txt_9)
//        listTXT_8.push(txt_10)

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
