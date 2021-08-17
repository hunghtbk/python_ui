import QtQuick 2.5
import QtQuick.Controls 2.0
import QtCharts 2.2
import QtGraphicalEffects 1.0

Rectangle {
    id: m_dashboardScreen
    visible: true
    width: 1135
    height: 730
    //    title: qsTr("Task Screen")
    color: "transparent"
    //    flags:Qt.FramelessWindowHint
    signal message(string msg)
    property int currentWidth: m_dashboardScreen.width
    property int currentHeight: m_dashboardScreen.height

    property var listTXT_9: []
    property var listTXT_11: []
    property var listTXT_13: []
    property var listTXT_15: []
    property var listTXT_17: []

    property bool dashboardNormalTheme: true

    function changeTheme(abcd) {
        console.log("dashboard " + abcd)
        dashboardNormalTheme = abcd
    }

    Text {
        id: dashboardScreenborderLeftMain
        x: 0
        y: 0
        width: 0
        height: 0
    }

    Text {
        id: txt_1
        property int textSize: 13
        text: qsTr("Dashboard")
        width: (83/1135) * m_dashboardScreen.width //width
        height: (19/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: dashboardNormalTheme ? "#FFFFFF" : "#000000"
    }


    Rectangle {
        id: rectWelcomeback
        width: (507/1135) * m_dashboardScreen.width //width
        height: (149/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (64/730)* parent.height //y
        color: "#907DE2"
        radius: 5
    }

    Text {
        id: txt_2
        property int textSize: 11
        text: qsTr("Welcome back,")
        width: (104/1135) * m_dashboardScreen.width //width
        height: (17/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (69/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (89/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: txt_3
        property int textSize: 15
        text: qsTr("Bob")
        width: (34/1135) * m_dashboardScreen.width //width
        height: (22/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (69/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (113/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Rectangle {
        id: rectCreateSomeTask
        width: (160/1135) * m_dashboardScreen.width //width
        height: (30/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (69/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (155/730)* parent.height //y
        color: "#FFFFFF"
        radius: 5
    }

    Text {
        id: txt_4
        property int textSize: 9
        text: qsTr("Create some tasks")
        width: (109/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (90/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (163/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#2E2C50"
    }

    Image {
        id: rigth_arrow
        width: (5/1135) * m_dashboardScreen.width //width
        height: (8/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (205/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (167/730)* parent.height //y
        source: "../appIMG/0.Dashboard/arrow-right-2.png"
    }

    Image {
        id: img_lotus
        width: (205/1135) * m_dashboardScreen.width //width
        height: (149/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (335/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (64/730)* parent.height //y
        source: "../appIMG/0.Dashboard/lotus_512w.png"
    }

    Rectangle {
        id: recTotalInfo
        width: (539/1135) * m_dashboardScreen.width //width
        height: (149/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (563/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (64/730)* parent.height //y
        color: "#282645"
        radius: 5
    }

    Image {
        id: img_dola
        width: (12/1135) * m_dashboardScreen.width //width
        height: (22/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (597/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (96/730)* parent.height //y
        source: "../appIMG/0.Dashboard/dollar-sign-15@2x.png"
    }

    Image {
        id: img_dola_line
        width: (93.77/1135) * m_dashboardScreen.width //width
        height: (1/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (620/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (106.5/730)* parent.height //y
        source: "../appIMG/0.Dashboard/Path 3-1.png"
    }

    Image {
        id: img_shopping_bag
        width: (24/1135) * m_dashboardScreen.width //width
        height: (24/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (771/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (95/730)* parent.height //y
        source: "../appIMG/0.Dashboard/shopping-bag-outline@2x.png"
    }

    Image {
        id: img_shopping_bag_line
        width: (87.21/1135) * m_dashboardScreen.width //width
        height: (1/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (803.56/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (106.5/730)* parent.height //y
        source: "../appIMG/0.Dashboard/Path 3 Copy@2x.png"
    }

    Image {
        id: img_shopping_bag_outline
        width: (24/1135) * m_dashboardScreen.width //width
        height: (24/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (950/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (95/730)* parent.height //y
        source: "../appIMG/0.Dashboard/shopping-bag-outline copy@2x.png"
    }

    Image {
        id: img_path4
        width: (18/1135) * m_dashboardScreen.width //width
        height: (19.44/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (953/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (97.37/730)* parent.height //y
        source: "../appIMG/0.Dashboard/Path 4.png"
    }

    Image {
        id: img_shopping_bag_outline_line
        width: (87.21/1135) * m_dashboardScreen.width //width
        height: (1/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (982.56/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (106.5/730)* parent.height //y
        source: "../appIMG/0.Dashboard/Path 3 Copy 2@2x.png"
    }

    Text {
        id: txt_5
        property int textSize: 17
        text: qsTr("$12,235")
        width: (81/1135) * m_dashboardScreen.width //width
        height: (25/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (597/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (129/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: txt_6
        property int textSize: 17
        text: qsTr("281")
        width: (36/1135) * m_dashboardScreen.width //width
        height: (25/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (774/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (129/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: txt_7
        property int textSize: 17
        text: qsTr("42")
        width: (27/1135) * m_dashboardScreen.width //width
        height: (25/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (953/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (129/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: txt_8
        property int textSize: 9
        text: qsTr("Total Spent")
        width: (67/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (597/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (165/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#75719B"
    }

    Text {
        id: txt_9
        property int textSize: 9
        text: qsTr("Total Checkouts")
        width: (95/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (774/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (165/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#75719B"
    }

    Text {
        id: txt_10
        property int textSize: 9
        text: qsTr("Total Declines")
        width: (82/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (953/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (165/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#75719B"
    }

    Text {
        id: txt_11
        property int textSize: 13
        text: qsTr("Checkouts")
        width: (81/1135) * m_dashboardScreen.width //width
        height: (19/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (238/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: txt_12
        property int textSize: 13
        text: qsTr("Previous Checkouts")
        width: (150/1135) * m_dashboardScreen.width //width
        height: (19/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (673/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (238/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Rectangle {
        id: backgroundChartView
        width: (620/1135) * m_dashboardScreen.width //width
        height: (415/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (28/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (271/730)* parent.height //y
        color: "#37345E"
        radius: 5
    }

    Rectangle {
        id: selectedYear
        width: (32/1135) * m_dashboardScreen.width //width
        height: (1/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (56/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (307.07/730)* parent.height //y
        color: "#907DE2"
        visible: false
    }

    Rectangle {
        id: selectedMonth
        width: (32/1135) * m_dashboardScreen.width //width
        height: (1/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (109/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (307.07/730)* parent.height //y
        color: "#907DE2"
        visible: false
    }

    Rectangle {
        id: selectedWeek
        width: (32/1135) * m_dashboardScreen.width //width
        height: (1/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (172/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (307.07/730)* parent.height //y
        color: "#907DE2"
        visible: true
    }

    Rectangle {
        id: selectedDay
        width: (32/1135) * m_dashboardScreen.width //width
        height: (1/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (231/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (307.07/730)* parent.height //y
        color: "#907DE2"
        visible: false
    }

    Text {
        id: txt_13
        property int textSize: 9
        text: qsTr("Year")
        width: (26/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (56/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (287/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (dashboardNormalTheme) {
                    txt_13.color = "#FFFFFF"
                } else {
                    txt_13.color = "#000000"
                }

                txt_14.color = "#5D5984"
                txt_15.color = "#5D5984"
                txt_16.color = "#5D5984"
                selectedYear.visible = true
                selectedMonth.visible = false
                selectedWeek.visible = false
                selectedDay.visible = false
            }
        }
    }

    Text {
        id: txt_14
        property int textSize: 9
        text: qsTr("Month")
        width: (38/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (109/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (287/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                txt_13.color = "#5D5984"
                if (dashboardNormalTheme) {
                    txt_14.color = "#FFFFFF"
                } else {
                    txt_14.color = "#000000"
                }

                txt_15.color = "#5D5984"
                txt_16.color = "#5D5984"
                selectedYear.visible = false
                selectedMonth.visible = true
                selectedWeek.visible = false
                selectedDay.visible = false
            }
        }
    }

    Text {
        id: txt_15
        property int textSize: 9
        text: qsTr("Week")
        width: (38/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (172/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (287/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: dashboardNormalTheme ? "#FFFFFF" : "#000000"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                txt_13.color = "#5D5984"
                txt_14.color = "#5D5984"
                if (dashboardNormalTheme) {
                    txt_15.color = "#FFFFFF"
                } else {
                    txt_15.color = "#000000"
                }

                txt_16.color = "#5D5984"
                selectedYear.visible = false
                selectedMonth.visible = false
                selectedWeek.visible = true
                selectedDay.visible = false
            }
        }
    }

    Text {
        id: txt_16
        property int textSize: 9
        text: qsTr("Day")
        width: (38/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (231/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (287/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                txt_13.color = "#5D5984"
                txt_14.color = "#5D5984"
                txt_15.color = "#5D5984"
                if (dashboardNormalTheme) {
                    txt_16.color = "#FFFFFF"
                } else {
                    txt_16.color = "#000000"
                }

                selectedYear.visible = false
                selectedMonth.visible = false
                selectedWeek.visible = false
                selectedDay.visible = true
            }
        }
    }

    ChartView {
        //        title: "Spline"
        id: chartID
        width: (600/1135) * m_dashboardScreen.width //width
        height: (370/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (28/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (320/730)* parent.height //y
        antialiasing: true
        backgroundColor: "transparent"
        legend.visible: false
        theme: ChartView.ChartThemeDark
        //        axes: xAxis

        ValueAxis {
            id: xAxis
            min: 2
            max: 8
            color: "#4B486E"
            gridLineColor: "#4B486E"
            labelsColor: "#5D5984"
            labelsVisible: false
            tickCount: 7
        }

        ValueAxis {
            id: yAxis
            min: 0
            max: 15
            color: "#4B486E"
            gridLineColor: "#4B486E"
            labelsColor: "#5D5984"
//            labelsVisible: false
            tickCount: 6
            labelFormat: "%.0f"

        }

        AreaSeries {
            name: "Label for Chart"
            axisX: xAxis
            axisY: yAxis
            color: "grey"
            opacity: 0.175
            upperSeries: LineSeries {
                XYPoint { x: 2; y: 1.5 }
                XYPoint { x: 2.3; y: 4.0}
                XYPoint { x: 2.4; y: 4.4}
                XYPoint { x: 2.5; y: 4.5 }
                XYPoint { x: 3; y: 3.8 }
                XYPoint { x: 3.5; y: 3 }
                XYPoint { x: 4; y: 2 }
                XYPoint { x: 4.5; y: 2.3 }
                XYPoint { x: 5; y: 3.1 }
                XYPoint { x: 5.5; y: 6 }
                XYPoint { x: 6; y: 7.5 }
                XYPoint { x: 6.5; y: 10.0 }
                XYPoint { x: 7; y: 12.0 }
                XYPoint { x: 7.5; y: 13.0 }
                XYPoint { x: 8; y: 14.0 }
            }
        }
//        SplineSeries {
//            id: splineSeries
//            //            name: "SplineSeries"
//            XYPoint { x: 0; y: 0.0 }
//            XYPoint { x: 1.1; y: 3.2 }
//            XYPoint { x: 1.9; y: 2.4 }
//            XYPoint { x: 2.1; y: 2.1 }
//            XYPoint { x: 2.9; y: 2.6 }
//            XYPoint { x: 3.4; y: 2.3 }
//            XYPoint { x: 4.1; y: 3.1 }
//            XYPoint { x: 4.5; y: 6.2 }
//            XYPoint { x: 9.1; y: 10.0 }
//            XYPoint { x: 10.0; y: 11.3 }
//            color: "#907DE2"
//            width: (2/730) * m_dashboardScreen.height
//            axisX: xAxis
//            axisY: yAxis
//        }

        //        Glow {
        //            id:glow
        //            anchors.fill: splineSeries
        //            radius: 18
        //            samples: 168
        //            color: "purple"
        //            source: splineSeries

        //        }

        //        LinearGradient {
        //            id:gradient
        //            // 200 is length of gamut
        //            start:Qt.point(200,0)
        //            end:Qt.point(0,0)
        //            gradient: Gradient {
        //                GradientStop {
        //                    position: 1;
        //                    color: "#312c36";
        //                }

        //                GradientStop {
        //                    position: 0.5;
        //                    color: "#5f4a69";
        //                }


        //                GradientStop {
        //                    position: 0.2;
        //                    color: "#a600ff";
        //                }
        //            }
        //            anchors.fill: splineSeries
        //            source : splineSeries
        //        }


        //        AreaSeries {
        //                name: "Label for Chart"
        //                axisX: xAxis
        //                axisY: yAxis
        //                color: "#37345E"
        //                opacity: 0.75
        //                upperSeries: LineSeries {
        //                    XYPoint { x: 0; y: 0.0 }
        //                    XYPoint { x: 1.1; y: 3.2 }
        //                    XYPoint { x: 1.9; y: 2.4 }
        //                    XYPoint { x: 2.1; y: 2.1 }
        //                    XYPoint { x: 2.9; y: 2.6 }
        //                    XYPoint { x: 3.4; y: 2.3 }
        //                    XYPoint { x: 4.1; y: 3.1 }
        //                    XYPoint { x: 4.1; y: 3.1 }
        //                    XYPoint { x: 4.5; y: 6.2 }
        //                    XYPoint { x: 10; y: 10.0 }
        //                }
        //            }
    }

    Text {
        id: txt_17
        property int textSize: 9
        text: qsTr("Mon")
        width: (26/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (65/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (656/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"
    }

    Text {
        id: txt_18
        property int textSize: 9
        text: qsTr("Tue")
        width: (26/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (154/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (656/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"
    }

    Text {
        id: txt_19
        property int textSize: 9
        text: qsTr("Wed")
        width: (26/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (240/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (656/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"
    }

    Text {
        id: txt_20
        property int textSize: 9
        text: qsTr("Thu")
        width: (26/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (330/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (656/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"
    }

    Text {
        id: txt_21
        property int textSize: 9
        text: qsTr("Fri")
        width: (26/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (416/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (656/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"
    }

    Text {
        id: txt_22
        property int textSize: 9
        text: qsTr("Sat")
        width: (26/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (494/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (656/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"
    }

    Text {
        id: txt_23
        property int textSize: 9
        text: qsTr("Sun")
        width: (26/1135) * m_dashboardScreen.width //width
        height: (15/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (577/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (656/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#5D5984"
    }

    Rectangle {
        id: img_border_rect
        width: (9/1135) * m_dashboardScreen.width //width
        height: (402/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (1093/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (273/730)* parent.height //y
        color: dashboardNormalTheme?"#282645":"#d7d6de"
        radius: 5
    }

    ListView {
        id: listItem
        width: (431/1135) * m_dashboardScreen.width //width
        height: (405/730) * m_dashboardScreen.height //height
        anchors.left: dashboardScreenborderLeftMain.right
        anchors.leftMargin: (673/1135)* parent.width //x
        anchors.top: dashboardScreenborderLeftMain.bottom
        anchors.topMargin: (271/730)* parent.height //y
        model: DashboardItemModel {}
        delegate: DashboardItemDeletegate {
            dashboardItemWidthItem: (405/1135) * m_dashboardScreen.width
            dashboardItemHeightItem: (50/730) * m_dashboardScreen.height
            colorItem: dashboardNormalTheme?"#37345E":"#FFFFFF"
        }
        spacing: 8
        clip: true
        flickableDirection: Flickable.VerticalFlick
        boundsBehavior: Flickable.StopAtBounds
        ScrollBar.vertical: ScrollBar {
            contentItem: Rectangle {
                id: rec_4
                implicitWidth: (9/1135) * m_dashboardScreen.width
                implicitHeight: (200/730) * m_dashboardScreen.height
                color: dashboardNormalTheme?"#423F6B":"#FFFFFF"
                radius: 10
            }
        }
    }
    function updateTheme() {
        if (selectedYear.visible) {
            txt_13.color = dashboardNormalTheme ? "#FFFFFF" : "#000000"
        }
        if (selectedMonth.visible) {
            txt_14.color = dashboardNormalTheme ? "#FFFFFF" : "#000000"
        }
        if (selectedWeek.visible) {
            txt_15.color = dashboardNormalTheme ? "#FFFFFF" : "#000000"
        }

        if (selectedDay.visible) {
            txt_16.color = dashboardNormalTheme ? "#FFFFFF" : "#000000"
        }

        var nColor = "#FFFFFF" //white
        var abnColor = "#000000" //black
        if (dashboardNormalTheme) {
            txt_1.color = nColor
            txt_11.color = nColor
            txt_12.color = nColor
            txt_5.color = nColor
            txt_6.color = nColor
            txt_7.color = nColor
            recTotalInfo.color = "#282645"
            backgroundChartView.color = "#37345E"
        } else {
            txt_1.color = abnColor
            txt_11.color = abnColor
            txt_12.color = abnColor
            txt_5.color = abnColor
            txt_6.color = abnColor
            txt_7.color = abnColor
            recTotalInfo.color = nColor
            backgroundChartView.color = "#FFFFFF"
        }
    }

    onDashboardNormalThemeChanged: {
        updateTheme()
    }

    Component.onCompleted: {
        updateTheme()
        listTXT_13.push(txt_1)
        listTXT_11.push(txt_2)
        listTXT_15.push(txt_3)
        listTXT_9.push(txt_4)
        listTXT_17.push(txt_5)

        listTXT_17.push(txt_6)
        listTXT_17.push(txt_7)
        listTXT_9.push(txt_8)
        listTXT_9.push(txt_9)
        listTXT_9.push(txt_10)
        listTXT_13.push(txt_11)
        listTXT_13.push(txt_12)
        listTXT_9.push(txt_13)
        listTXT_9.push(txt_14)
        listTXT_9.push(txt_15)
        listTXT_9.push(txt_16)
    }
    onHeightChanged: {
        var rateTextSize = height/730
        for (var m = 0; m < listTXT_9.length; m++) {
            listTXT_9[m].textSize = 9 * rateTextSize
        }
        for (var l = 0; l < listTXT_11.length; l++) {
            listTXT_11[l].textSize = 11 * rateTextSize
        }
        for (var n = 0; n < listTXT_13.length; n++) {
            listTXT_13[n].textSize = 13 * rateTextSize
        }
        for (var n = 0; n < listTXT_15.length; n++) {
            listTXT_15[n].textSize = 15 * rateTextSize
        }
        for (var p = 0; p < listTXT_17.length; p++) {
            listTXT_17[p].textSize = 17 * rateTextSize
        }
    }
}
