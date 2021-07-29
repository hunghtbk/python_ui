import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    id: m_taskScreen
    visible: true
    width: 1200
    height: 730
    title: qsTr("Task Screen")
    color: "#2E2C50"
//    flags:Qt.FramelessWindowHint

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

    Rectangle {
        id: rec_2
        x: 65
        y: 0
        width: 284
        height: 730
        color: "#282645"

        Text {
            id: txt_1
            text: qsTr("Tasks Groups")
            width: 103
            height: 19
            x: 33
            y: 19
            font.family: "Inter"
            font.pointSize: 13
            color: "#FFFFFF"
        }

        Image {
            id: img_9
            width: 21
            height: 21
            x: 158
            y: 19
            source: "qrc:/image/0.Common/Add_inactive_icon.png"
        }

        //List task group
        ListView {
            id: list_1
            width: 221
            height: 660
            x: 33
            y: 64
            model: TaskGroupModel {}
            delegate: Rectangle {
                id: rec_2_1
                width: 221
                height: 106
                color: "transparent"
                Rectangle {
                    id: rec_2_2
                    width: 221
                    height: 98
                    color: "#37345E"
                }

                Image {
                    id: img_10
                    x: 17
                    y: 15
                    width: 44
                    height: 44
                    source: "qrc:/image/TaskScreen/image_borde.png"

                    Image {
                        id: img_11
                        x: 5
                        y: 5
                        width: 32
                        height: 34
                        source: itemSource
                    }
                }

                Text {
                    id: txt_2
                    x: 74
                    y: 15
                    width: 41
                    height: 12
                    font.family: "Inter"
                    font.pointSize: 7
                    color: "#FFFFFF"
                    text: itemStatus
                }

                Text {
                    id: txt3
                    width: 122
                    height: 15
                    x: 74
                    y: 31
                    font.family: "Inter"
                    font.pointSize: 9
                    color: "#FFFFFF"
                    text: itemName
                }

                Image {
                    id: img_12
                    width: 50
                    height: 21
                    x: 17
                    y: 71
                    source: "qrc:/image/TaskScreen/border_50_21.png"

                    Image {
                        id: whiteIcon
                        width: 5
                        height: 5
                        x: 8
                        y: 8
                        source: "qrc:/image/white_oval.png"
                    }

                    Text {
                        id: whiteIndextxt
                        width: 14
                        height: 10
                        x: 19
                        y: 5
                        font.family: "Inter"
                        font.pointSize: 5
                        color: "#FFFFFF"
                        text: whiteIndex
                    }
                }

                Image {
                    id: boarder2
                    width: 50
                    height: 21
                    x: 72
                    y: 71
                    source: "qrc:/image/TaskScreen/border_50_21.png"

                    Image {
                        id: greenIcon
                        width: 5
                        height: 5
                        x: 8
                        y: 8
                        source: "qrc:/image/green_oval.png"
                    }

                    Text {
                        id: greenIndextxt
                        width: 14
                        height: 10
                        x: 19
                        y: 5
                        font.family: "Inter"
                        font.pointSize: 5
                        color: "#FFFFFF"
                        text: greenIndex
                    }
                }

                Image {
                    id: boarder3
                    width: 50
                    height: 21
                    x: 127
                    y: 71
                    source: "qrc:/image/TaskScreen/border_50_21.png"

                    Image {
                        id: redIcon
                        width: 5
                        height: 5
                        x: 8
                        y: 8
                        source: "qrc:/image/red_oval.png"
                    }

                    Text {
                        id: redIndextxt
                        width: 14
                        height: 10
                        x: 19
                        y: 5
                        font.family: "Inter"
                        font.pointSize: 5
                        color: "#FFFFFF"
                        text: redIndex
                    }
                }

                Image {
                    id: boarder4
                    width: 21
                    height: 21
                    x: 182
                    y: 71
                    source: "qrc:/image/TaskScreen/border_50_21.png"

                    Image {
                        id: deleteIcon
                        width: 9.6
                        height: 9.6
                        x: 5.46
                        y: 5.46
                        source: "qrc:/image/delete_icon.png"
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    onPressed: {
                        rec_2_2.color = "#907DE2"
                    }
                    onReleased: {
                        rec_2_2.color = "#37345E"
                    }
                    onCanceled: {
                        rec_2_2.color = "#37345E"
                    }
                }
            }
            clip: true
        }

    }

    Rectangle {
        id: detailItem
        x: 349
        y: 0
        width: 851
        height: 730
        color: "transparent"

        Image {
            id: borderImage1
            width: 70.4
            height: 70.4
            x: 27
            y: 22
            source: "qrc:/image/TaskScreen/image_borde.png"

            Image {
                id: siteImage
                width: 52
                height: 56
                x: 9
                y: 7
                source: "qrc:/image/Sony-Playstation-5-Blu-Ray-Edition-Console-White_Big.png"
            }
        }

        Text {
            id: siteTitle
            text: qsTr("Site")
            width: 19
            height: 12
            x: 118
            y: 21
            font.family: "Inter"
            font.pointSize: 7
            color: "#75719B"
        }

        Text {
            id: siteName
            text: qsTr("Bestbuy")
            width: 47
            height: 15
            x: 118
            y: 37
            font.family: "Inter"
            font.pointSize: 9
            color: "#FFFFFF"
        }

        Text {
            id: productTitle
            text: qsTr("Product")
            width: 39
            height: 12
            x: 118
            y: 62
            font.family: "Inter"
            font.pointSize: 7
            color: "#75719B"
        }

        Text {
            id: productName
            text: qsTr("Playstation 5 Digital Console")
            width: 162
            height: 15
            x: 118
            y: 78
            font.family: "Inter"
            font.pointSize: 9
            color: "#FFFFFF"
        }

        Image {
            id: boder2
            width: 246
            height: 30
            x: 512
            y: 21
            source: "qrc:/image/border_2.png"

            Image {
                id: dolaIcon
                width: 6
                height: 7
                x: 14
                y: 11
                source: "qrc:/image/Dola_icon.png"
            }

            Text {
                id: dolaContent
                text: qsTr("$2,309")
                width: 43
                height: 15
                x: 27
                y: 7
                font.family: "Inter"
                font.pointSize: 9
                color: "#FFFFFF"
            }

            Image {
                id: greenIcon
                width: 9
                height: 9
                x: 108.5
                y: 10.5
                source: "qrc:/image/Green_icon.png"
            }
            Image {
                id: greenIcon1
                width: 4
                height: 2.5
                x: 111
                y: 14.5
                source: "qrc:/image/Green_icon_1.png"
            }

            Text {
                id: greenContent
                text: qsTr("78")
                width: 43
                height: 15
                x: 125
                y: 7
                font.family: "Inter"
                font.pointSize: 9
                color: "#FFFFFF"
            }

            Image {
                id: redIcon
                width: 9
                height: 9
                x: 190.5
                y: 10.5
                source: "qrc:/image/Red_icon.png"
            }
            Image {
                id: redIcon1
                width: 9
                height: 9.72
                x: 190.5
                y: 10.18
                source: "qrc:/image/Red_icon_1.png"
            }

            Text {
                id: redContent
                text: qsTr("28")
                width: 43
                height: 15
                x: 207
                y: 7
                font.family: "Inter"
                font.pointSize: 9
                color: "#FFFFFF"
            }
        }

        Image {
            id: minimizeIcon
            width: 12
            height: 1.5
            x: 797
            y: 22.5
            source: "qrc:/image/minimize_icon.png"
        }
        MouseArea {
            width: 18
            height: 18
            x: 794
            y: 14
            onClicked: {
                console.log("Minimize")
            }
        }

        Image {
            id: closeIcon
            width: 9.01
            height: 9.01
            x: 818.5
            y: 18.5
            source: "qrc:/image/close_icon.png"
        }

        MouseArea {
            width: 18
            height: 18
            x: 814
            y: 14
            onClicked: {
                console.log("Close icon")
            }
        }

        Image {
            id: masklinkboder
            width: 196
            height: 30
            x: 512
            y: 63
            source: "qrc:/image/mask_link_border.png"

//            Text {
//                id: masklinkcontent
//                text: qsTr("Mass link change")
//                width: 101
//                height: 15
//                x: 12
//                y: 7
//                font.family: "Inter"
//                font.pointSize: 9
//                color: "#75719B"
//            }
            TextInput {
                id: masklinkcontent
                text: qsTr("Mass link change")
                width: 101
                height: 15
                x: 12
                y: 8
                font.family: "Inter"
                font.pointSize: 9
                color: "#75719B"
            }
        }

        Image {
            id: confimborder
            width: 98
            height: 30
            x: 720
            y: 63
            source: "qrc:/image/confirm_border.png"

            Text {
                id: confimbordercontent
                text: qsTr("Confirm")
                width: 47
                height: 15
                x: 20
                y: 8
                font.family: "Inter"
                font.pointSize: 9
                color: "#2E2C50"
            }
            Image {
                id: arrowConfirm
                width: 3.5
                height: 8
                x: 74
                y: 12
                source: "qrc:/image/arrow_confirm.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Confirm button")
                }
            }
        }

        Image {
            id: line
            width: 851
            height: 1
            x: 0
            y: 115.5
            source: "qrc:/image/line.png"
        }

        Text {
            id: tasktxt
            text: qsTr("Tasks")
            width: 44
            height: 19
            x: 27
            y: 139
            font.family: "Inter"
            font.pointSize: 13
            color: "#FFFFFF"
        }

        Image {
            id: addTaskIcon
            width: 9.6
            height: 9.6
            x: 96.4
            y: 144.4
            source: "qrc:/image/add_icon2.png"
        }
        Image {
            id: addtaskIconBorder
            width: 21
            height: 21
            x: 91
            y: 139
            source: "qrc:/image/add_icon1.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Add new Task Item")
                }
            }
        }

        Image {
            id: startAllbtn
            width: 104
            height: 30
            x: 490
            y: 134
            source: "qrc:/image/white_border.png"

            Image {
                id: startAllIcon
                width: 7.7
                height: 9.9
                x: 75
                y: 10
                source: "qrc:/image/starAll_icon.png"
            }

            Text {
                id: startAlltxt
                text: qsTr("Start All")
                width: 47
                height: 15
                x: 21
                y: 8
                font.family: "Inter"
                font.pointSize: 9
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
            id: stopAllbtn
            width: 104
            height: 30
            x: 602
            y: 134
            source: "qrc:/image/white_border.png"

            Image {
                id: stopAllIcon
                width: 8
                height: 8
                x: 75
                y: 11
                source: "qrc:/image/stopAll_icon.png"
            }

            Text {
                id: stopAlltxt
                text: qsTr("Stop All")
                width: 45
                height: 15
                x: 22
                y: 8
                font.family: "Inter"
                font.pointSize: 9
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
            id: deleteAllbtn
            width: 104
            height: 30
            x: 714
            y: 134
            source: "qrc:/image/white_border.png"

            Image {
                id: deleteAllIcon
                width: 9.6
                height: 9.6
                x: 77.96
                y: 9.96
                source: "qrc:/image/deleteAll_icon.png"
            }
            Text {
                id: deleteAlltxt
                text: qsTr("Delete All")
                width: 56
                height: 15
                x: 14
                y: 8
                font.family: "Inter"
                font.pointSize: 9
                color: "#FA5B79"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("stop all button")
                }
            }
        }

        Image {
            id: listviewTitleBorder
            width: 791
            height: 30
            x: 27
            y: 183
            source: "qrc:/image/listviewTitleBorder.png"

            Text {
                id: idtxt
                text: qsTr("ID")
                width: 10
                height: 12
                x: 12
                y: 9
                font.family: "Inter"
                font.pointSize: 8
                color: "#FFFFFF"
            }

            Text {
                id: producttxt
                text: qsTr("PRODUCT")
                width: 50
                height: 12
                x: 40
                y: 9
                font.family: "Inter"
                font.pointSize: 8
                color: "#FFFFFF"
            }

            Text {
                id: sizetxt
                text: qsTr("SIZE")
                width: 22
                height: 12
                x: 235
                y: 9
                font.family: "Inter"
                font.pointSize: 8
                color: "#FFFFFF"
            }

            Text {
                id: sitetxt
                text: qsTr("SITE")
                width: 22
                height: 12
                x: 280
                y: 9
                font.family: "Inter"
                font.pointSize: 8
                color: "#FFFFFF"
            }

            Text {
                id: profiletxt
                text: qsTr("PROFILE")
                width: 42
                height: 12
                x: 377
                y: 9
                font.family: "Inter"
                font.pointSize: 8
                color: "#FFFFFF"
            }

            Text {
                id: proxytxt
                text: qsTr("PROXY")
                width: 35
                height: 12
                x: 468
                y: 9
                font.family: "Inter"
                font.pointSize: 8
                color: "#FFFFFF"
            }

            Text {
                id: statustxt
                text: qsTr("STATUS")
                width: 40
                height: 12
                x: 575
                y: 9
                font.family: "Inter"
                font.pointSize: 8
                color: "#FFFFFF"
            }

            Text {
                id: actiontxt
                text: qsTr("ACTION")
                width: 46
                height: 12
                x: 696
                y: 9
                font.family: "Inter"
                font.pointSize: 8
                color: "#FFFFFF"
            }
        }
        //List item
        Image {
            id: taskScrollBorder
            width: 9
            height: 480
            x: 809
            y: 229
            source: "qrc:/image/task_scroll_border.png"
        }
        ListView {
            id: listTaskItem
            width: 793.2
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
                    implicitWidth: 9
                    implicitHeight: 221
                    color: "#423F6B"
                    radius: 10
                }
            }
        }

    }
}
