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

    Text {
        id: taskScreenborderLeftMain
        x: 0
        y: 0
        width: 0
        height: 0
    }

    Rectangle {
        id: taskScreenRec_2
        //        x: 0
        //        y: 0
        //        width: 284
        //        height: 730

        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (0/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (0/730)* parent.height //y
        width: (284/1135) * m_taskScreen.width //width
        height: (730/730) * m_taskScreen.height //height

        color: "#282645"

    }
    Text {
        id: taskScreenTxt_1
        property int textSize: 13
        text: qsTr("Tasks Groups")
        //        width: 103
        //        height: 19
        //        x: 33
        //        y: 19
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        width: (103/1135) * m_taskScreen.width //width
        height: (19/730) * m_taskScreen.height //height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Image {
        id: taskScreenImg_9
        //        width: 21
        //        height: 21
        //        x: 158
        //        y: 19
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (158/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (19/730)* parent.height //y
        width: (21/1135) * m_taskScreen.width //width
        height: (21/730) * m_taskScreen.height //height
        source: "qrc:/image/0.Common/Add_inactive_icon.png"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                m_taskScreen.message("task_screen_add_group")
            }
        }
    }

    //List task group
    ListView {
        id: taskScreenList_1
        //            x: 33
        //            y: 64
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (33/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (64/730)* parent.height
        width: (221/1135) * m_taskScreen.width
        height: (666/730) * m_taskScreen.height
        spacing: 8
        model: TaskGroupModel {}
        delegate: TaskGroupDelegate {
            widthItem: (221/1135) * m_taskScreen.width
            heightItem: (106/730) * m_taskScreen.height
        }
        clip: true
    }

    Rectangle {
        id: taskScreenRec_3
        //        x: 284
        //        y: 0
        //        width: 851
        //        height: 730
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (284/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (0/730)* parent.height //y
        width: (851/1135) * m_taskScreen.width //width
        height: (730/730) * m_taskScreen.height //height
        color: "transparent"
    }

    Image {
        id: taskScreen_img_19
//        width: 70.4
//        height: 70.4
//        x: 311
//        y: 22
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (22/730)* parent.height //y
        width: (70.4/1135) * m_taskScreen.width //width
        height: (70.4/730) * m_taskScreen.height //heigh
        source: "qrc:/image/TaskScreen/image_borde.png"
    }
    Image {
        id: taskScreen_img_20
//        width: 52
//        height: 56
//        x: 320
//        y: 29
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (320/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (29/730)* parent.height //y
        width: (52/1135) * m_taskScreen.width //width
        height: (56/730) * m_taskScreen.height //heigh
        source: "qrc:/image/Sony-Playstation-5-Blu-Ray-Edition-Console-White_Big.png"
    }

    Text {
        id: taskScreen_txt_7
        property int textSize: 7
        text: qsTr("Site")
//        width: 19
//        height: 12
//        x: 402
//        y: 21
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (402/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (21/730)* parent.height //y
        width: (19/1135) * m_taskScreen.width //width
        height: (12/730) * m_taskScreen.height //heigh
        font.family: "Inter"
        font.pointSize: textSize
        color: "#75719B"
    }

    Text {
        id: taskScreen_txt_8
        property int textSize: 9
        text: qsTr("Bestbuy")
//        x: 402
//        y: 37
//        width: 47
//        height: 15
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (402/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (37/730)* parent.height //y
        width: (47/1135) * m_taskScreen.width //width
        height: (15/730) * m_taskScreen.height //heigh
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: taskScreen_txt_9
        property int textSize: 7
        text: qsTr("Product")
//        width: 39
//        height: 12
//        x: 402
//        y: 62
        width: (39/1135) * m_taskScreen.width //width
        height: (12/730) * m_taskScreen.height //heigh
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (402/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (62/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#75719B"
    }

    Text {
        id: taskScreenTxt_10
        property int textSize: 9
        text: qsTr("Playstation 5 Digital Console")
//        width: 162
//        height: 15
//        x: 402
//        y: 78
        width: (162/1135) * m_taskScreen.width //width
        height: (15/730) * m_taskScreen.height //heigh
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (402/1135)* parent.width //x
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (78/730)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Image {
        id: taskScreen_img_10
//        width: 246
//        height: 30
//        x: 796
//        y: 21
        width: (246/1135) * m_taskScreen.width
        height: (30/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (796/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (21/730)* parent.height
        source: "qrc:/image/border_2.png"
    }
    Image {
        id: taskScreen_img_21
//        width: 6
//        height: 11
//        x: 14
//        y: 9
        width: (6/1135) * m_taskScreen.width
        height: (11/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (810/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (30/730)* parent.height
        source: "qrc:/image/TaskScreen/dollar-sign-15.png"
    }
    Text {
        id: taskScreenTxt_12
        property int textSize: 9
        text: qsTr("$2,309")
//        width: 43
//        height: 15
//        x: 27
//        y: 7
        width: (43/1135) * m_taskScreen.width
        height: (15/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (823/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (28/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: taskScreen_img_22
//        width: 12
//        height: 12
//        x: 107
//        y: 9
        width: (12/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (903/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (30/730)* parent.height
        source: "qrc:/image/TaskScreen/shopping-bag-outline-green.png"
    }
    Text {
        id: taskScreenTxt_13
        property int textSize: 9
        text: qsTr("78")
//        width: 43
//        height: 15
//        x: 125
//        y: 7
        width: (43/1135) * m_taskScreen.width
        height: (15/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (921/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (28/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: taskScreen_img_23
//        width: 12
//        height: 12
//        x: 189
//        y: 9
        width: (12/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (985/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (30/730)* parent.height
        source: "qrc:/image/TaskScreen/shopping-bag-outline-red.png"
    }
    Text {
        id: taskScreenTxt_14
        property int textSize: 9
        text: qsTr("28")
//        width: 43
//        height: 15
//        x: 207
//        y: 7
        width: (43/1135) * m_taskScreen.width
        height: (15/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (1003/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (28/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Rectangle {
        id: taskScreenRec_3_1
//        width: 196
//        height: 30
//        x: 796
//        y: 63
        width: (196/1135) * m_taskScreen.width
        height: (30/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (796/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (63/730)* parent.height
        color:"#37345E"
        radius: 3
    }
    TextInput {
        id: taskScreenTxt_15
        property int textSize: 9
        text: qsTr("Mass link change")
//        width: 450
//        height: 15
//        x: 12
//        y: 8
        width: (450/1135) * m_taskScreen.width
        height: (15/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (808/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (70/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#75719B"
    }
    Rectangle {
        id: taskScreenRec_3_2
//        width: 98
//        height: 30
//        x: 720
//        y: 63
        width: (98/1135) * m_taskScreen.width
        height: (30/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (1004/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (63/730)* parent.height
        color: "#FFFFFF"
        radius: 5
    }
    Text {
        id: taskScreenTxt_16
        property int textSize: 9
        text: qsTr("Confirm")
//        width: 47
//        height: 15
//        x: 20
//        y: 8
        width: (47/1135) * m_taskScreen.width
        height: (15/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (1024/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (70/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#2E2C50"
    }
    Image {
        id: taskScreen_img_26
//        width: 3.5
//        height: 8
//        x: 74
//        y: 12
        width: (3.5/1135) * m_taskScreen.width
        height: (8/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (1078/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (75/730)* parent.height
        source: "qrc:/image/TaskScreen/arrow_confirm.png"
    }
    MouseArea {
        anchors.fill: taskScreenRec_3_2
        onClicked: {
            console.log("Confirm button")
        }
    }
    Image {
        id: taskScreen_img_27
//        width: 851
//        height: 1
//        x: 0
//        y: 115.5
        width: (851/1135) * m_taskScreen.width
        height: (1/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (284/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (115.5/730)* parent.height
        source: "qrc:/image/TaskScreen/line.png"
    }
    Text {
        id: taskScreenTxt_17
        property int textSize: 13
        text: qsTr("Tasks")
//        width: 44
//        height: 19
//        x: 27
//        y: 139
        width: (44/1135) * m_taskScreen.width
        height: (19/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (139/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: taskScreen_img_29
//        width: 21
//        height: 21
//        x: 91
//        y: 139
        width: (21/1135) * m_taskScreen.width
        height: (21/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (375/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (139/730)* parent.height
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
//        width: 104
//        height: 30
//        x: 490
//        y: 134
        width: (104/1135) * m_taskScreen.width
        height: (30/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (774/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (134/730)* parent.height
        source: "qrc:/image/TaskScreen/white_border.png"

    }
    Image {
        id: taskScreen_img_31
//        width: 7.7
//        height: 9.9
//        x: 75
//        y: 10
        width: (7.7/1135) * m_taskScreen.width
        height: (9.9/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (849/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (144/730)* parent.height
        source: "qrc:/image/TaskScreen/starAll_icon.png"
    }
    Text {
        id: taskScreenTxt_18
        property int textSize: 9
        text: qsTr("Start All")
//        width: 47
//        height: 15
//        x: 21
//        y: 8
        width: (47/1135) * m_taskScreen.width
        height: (15/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (795/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (141/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#29E182"
    }
    MouseArea {
        anchors.fill: taskScreen_img_30
        onClicked: {
            console.log("start all button")
        }
    }
    Image {
        id: taskScreen_img_32
//        width: 104
//        height: 30
//        x: 602
//        y: 134
        width: (104/1135) * m_taskScreen.width
        height: (30/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (886/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (134/730)* parent.height
        source: "qrc:/image/TaskScreen/white_border.png"
    }
    Image {
        id: taskScreen_img_33
//        width: 8
//        height: 8
//        x: 75
//        y: 11
        width: (8/1135) * m_taskScreen.width
        height: (8/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (961/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (145/730)* parent.height
        source: "qrc:/image/TaskScreen/stopAll_icon.png"
    }
    Text {
        id: taskScreenTxt_19
        property int textSize: 9
        text: qsTr("Stop All")
//        width: 45
//        height: 15
//        x: 22
//        y: 8
        width: (45/1135) * m_taskScreen.width
        height: (15/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (908/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (141/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFA94F"
    }
    MouseArea {
        anchors.fill: taskScreen_img_32
        onClicked: {
            console.log("stop all button")
        }
    }
    Image {
        id: taskScreen_img_34
//        width: 104
//        height: 30
//        x: 714
//        y: 134
        width: (104/1135) * m_taskScreen.width
        height: (30/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (998/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (134/730)* parent.height
        source: "qrc:/image/TaskScreen/white_border.png"
    }
    Image {
        id: taskScreen_img_35
//        width: 9.6
//        height: 9.6
//        x: 77.96
//        y: 9.96
        width: (9.6/1135) * m_taskScreen.width
        height: (9.6/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (1075.96/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (143.96/730)* parent.height
        source: "qrc:/image/TaskScreen/deleteAll_icon.png"
    }
    Text {
        id: taskScreen_txt_20
        property int textSize: 9
        text: qsTr("Delete All")
//        width: 56
//        height: 15
//        x: 14
//        y: 8
        width: (56/1135) * m_taskScreen.width
        height: (15/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (1012/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (141/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FA5B79"
    }
    MouseArea {
        anchors.fill: taskScreen_img_34
        onClicked: {
            console.log("stop all button")
        }
    }
    Rectangle {
        id: taskScreenRec_3_3
//            width: 791
//            height: 30
//            x: 27
//            y: 183
        width: (791/1135) * m_taskScreen.width
        height: (30/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (183/730)* parent.height
        color: "#907DE2"
        radius: 3
    }
    Text {
        id: taskScreen_txt_21
        property int textSize: 8
        text: qsTr("ID")
//        width: 10
//        height: 12
//        x: 12
//        y: 9
        width: (10/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (323/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (192/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: taskScreen_txt_22
        property int textSize: 8
        text: qsTr("PRODUCT")
//        width: 50
//        height: 12
//        x: 40
//        y: 9
        width: (50/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (351/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (192/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: taskScreen_txt_23
        property int textSize: 8
        text: qsTr("SIZE")
//        width: 22
//        height: 12
//        x: 235
//        y: 9
        width: (22/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (546/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (192/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: taskScreen_txt_24
        property int textSize: 8
        text: qsTr("SITE")
//        width: 22
//        height: 12
//        x: 280
//        y: 9
        width: (22/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (591/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (192/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: taskScreen_txt_25
        property int textSize: 8
        text: qsTr("PROFILE")
//        width: 42
//        height: 12
//        x: 377
//        y: 9
        width: (42/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (688/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (192/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: taskScreen_txt_26
        property int textSize: 8
        text: qsTr("PROXY")
//        width: 35
//        height: 12
//        x: 468
//        y: 9
        width: (35/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (779/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (192/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: taskScreen_txt_27
        property int textSize: 8
        text: qsTr("STATUS")
//        width: 40
//        height: 12
//        x: 575
//        y: 9
        width: (40/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (886/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (192/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Text {
        id: taskScreen_txt_28
        property int textSize: 8
        text: qsTr("ACTION")
//        width: 46
//        height: 12
//        x: 696
//        y: 9
        width: (46/1135) * m_taskScreen.width
        height: (12/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (1030/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (192/730)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
    }
    Image {
        id: img_36
//        width: 9
//        height: 495
//        x: 809
//        y: 229
        width: (9/1135) * m_taskScreen.width
        height: (495/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (1093/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (229/730)* parent.height
        source: "qrc:/image/TaskScreen/task_scroll_border.png"
    }
    //List item
    ListView {
        id: taskScreenList_2
//        width: 793
//        height: 498
//        x: 27
//        y: 227
        width: (793/1135) * m_taskScreen.width
        height: (498/730) * m_taskScreen.height
        anchors.left: taskScreenborderLeftMain.right
        anchors.leftMargin: (311/1135)* parent.width
        anchors.top: taskScreenborderLeftMain.bottom
        anchors.topMargin: (225/730)* parent.height
        spacing: 8
        model: TaskItemModel {}
        delegate: TaskItemDelegate {
            taskItemWidthDelegate: (770/1135) * m_taskScreen.width
            taskItemHeightDelegate: (30/730) * m_taskScreen.height
        }
        clip: true
        flickableDirection: Flickable.VerticalFlick
        boundsBehavior: Flickable.StopAtBounds
        ScrollBar.vertical: ScrollBar {
            contentItem: Rectangle {
                id: rec_4
                implicitWidth: (9/1135) * m_taskScreen.width
                implicitHeight: (221/730) * m_taskScreen.height
                color: "#423F6B"
                radius: 10
            }
        }

        onWidthChanged: {
            console.log("taskScreenList_2 = " + width)
        }
    }

    Component.onCompleted: {
        console.log("complete")
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
    }
    onHeightChanged: {
        var rateTextSize = height/730
        for (var k = 0; k < taskScreenListtaskScreen_txt_7.length; k++) {
            taskScreenListtaskScreen_txt_7[k].textSize = 7 * rateTextSize
        }
        for (var l = 0; l < taskScreenListtaskScreen_txt_8.length; l++) {
            taskScreenListtaskScreen_txt_8[l].textSize = 8 * rateTextSize
        }
        for (var m = 0; m < taskScreenListtaskScreen_txt_9.length; m++) {
            taskScreenListtaskScreen_txt_9[m].textSize = 9 * rateTextSize
        }
        for (var n = 0; n < taskScreenListtaskScreenTxt_13.length; n++) {
            taskScreenListtaskScreenTxt_13[n].textSize = 13 * rateTextSize
        }
    }
}
