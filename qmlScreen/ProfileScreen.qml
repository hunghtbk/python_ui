import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_profileScreen
    visible: true
    width: 1135
    height: 730
//    title: qsTr("Task Screen")
    color: "#2E2C50"
//    flags:Qt.FramelessWindowHint

    signal message(string msg)
    property int currentWidth: m_profileScreen.width
    property int currentHeight: m_profileScreen.height

    property var profileScreen_listItemID: []
    property var profileScreen_listListViewID: []
    property var profileScreen_listprofileScreen_txt_7: []
    property var profileScreen_listprofileScreen_txt_8: []
    property var profileScreen_listprofileScreen_txt_9: []
    property var profileScreen_listprofileScreen_txt_13: []
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
*/
    Rectangle {
        id: profileScreen_item10
        x: 0
        y: 0
        width: 284
        height: 730
        color: "#282645"

        Text {
            id: profileScreen_txt_1
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
            id: profileScreen_item11
            width: 21
            height: 21
            x: 158
            y: 19
            source: "qrc:/image/0.Common/Add_inactive_icon.png"
        }

        //List profile group
        ListView {
            id: profileScreen_list_1
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
        id: profileScreen_item12
        x: 284
        y: 0
        width: 851
        height: 730
        color: "transparent"

        Text {
            id: profileScreen_txt_2
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
            id: profileScreen_item15
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
            id: profileScreen_item16
            width: 196
            height: 30
            x: 27
            y: 56
            color: "#37345E"
            clip: true
            radius: 3
            TextInput {
                id: profileScreen_txt_3
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
            id: profileScreen_item17
            width: 98
            height: 30
            x: 235
            y: 56
            color: "#FFFFFF"
            radius: 5

            Text {
                id: profileScreen_txt_4
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
                id: profileScreen_item18
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
            id: profileScreen_item19
            width: 104
            height: 30
            x: 714
            y: 56
            color: "#FFFFFF"
            radius: 5

            Text {
                id: profileScreen_txt_5
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
                id: profileScreen_item20
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
            id: profileScreen_item21
            width: 791
            height: 30
            x: 27
            y: 102
            color: "#907DE2"
            radius: 3

            Text {
                id: profileScreen_txt_6
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
                id: profileScreen_txt_7
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
                id: profileScreen_txt_8
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
                id: profileScreen_txt_9
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
                id: profileScreen_txt_10
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
            id: profileScreen_item22
            width: 9
            height: 558
            x: 807
            y: 148
            source: "qrc:/image/TaskScreen/task_scroll_border.png"
        }
        ListView {
            id: profileScreen_list_2
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
                    id: profileScreen_rec_4
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
//        profileScreen_listItemID.push(item0)
//        profileScreen_listItemID.push(item1)
//        profileScreen_listItemID.push(item2)
//        profileScreen_listItemID.push(item3)
//        profileScreen_listItemID.push(item4)
//        profileScreen_listItemID.push(item5)
//        profileScreen_listItemID.push(item6)
//        profileScreen_listItemID.push(item7)
//        profileScreen_listItemID.push(item8)
//        profileScreen_listItemID.push(item9)
        profileScreen_listItemID.push(profileScreen_item10)
        profileScreen_listItemID.push(profileScreen_item11)
        profileScreen_listItemID.push(profileScreen_item12)
//        profileScreen_listItemID.push(item13)
//        profileScreen_listItemID.push(item14)
        profileScreen_listItemID.push(profileScreen_item15)
        profileScreen_listItemID.push(profileScreen_item16)
        profileScreen_listItemID.push(profileScreen_item17)
        profileScreen_listItemID.push(profileScreen_item18)
        profileScreen_listItemID.push(profileScreen_item19)
        profileScreen_listItemID.push(profileScreen_item20)
        profileScreen_listItemID.push(profileScreen_item21)
        profileScreen_listItemID.push(profileScreen_item22)

        profileScreen_listprofileScreen_txt_9.push(profileScreen_txt_3)
        profileScreen_listprofileScreen_txt_9.push(profileScreen_txt_4)
        profileScreen_listprofileScreen_txt_9.push(profileScreen_txt_5)

        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_6)
        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_7)
        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_8)
        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_9)
        profileScreen_listprofileScreen_txt_8.push(profileScreen_txt_10)

        profileScreen_listprofileScreen_txt_13.push(profileScreen_txt_1)
        profileScreen_listprofileScreen_txt_13.push(profileScreen_txt_2)

        profileScreen_listListViewID.push(profileScreen_list_1)
        profileScreen_listListViewID.push(profileScreen_list_2)
    }
    onHeightChanged: {
        var rate = height/currentHeight
        var rateTextSize = height/730
        for (var i = 0; i < profileScreen_listItemID.length; i++) {
            profileScreen_listItemID[i].y = profileScreen_listItemID[i].y * rate
            profileScreen_listItemID[i].height = profileScreen_listItemID[i].height * rate
        }

        for (var l = 0; l < profileScreen_listprofileScreen_txt_8.length; l++) {
            profileScreen_listprofileScreen_txt_8[l].y = profileScreen_listprofileScreen_txt_8[l].y * rate
            profileScreen_listprofileScreen_txt_8[l].height = profileScreen_listprofileScreen_txt_8[l].height * rate
            profileScreen_listprofileScreen_txt_8[l].textSize = 8 * rateTextSize
        }
        for (var m = 0; m < profileScreen_listprofileScreen_txt_9.length; m++) {
            profileScreen_listprofileScreen_txt_9[m].y = profileScreen_listprofileScreen_txt_9[m].y * rate
            profileScreen_listprofileScreen_txt_9[m].height = profileScreen_listprofileScreen_txt_9[m].height * rate
            profileScreen_listprofileScreen_txt_9[m].textSize = 9 * rateTextSize
        }
        for (var n = 0; n < profileScreen_listprofileScreen_txt_13.length; n++) {
            profileScreen_listprofileScreen_txt_13[n].y = profileScreen_listprofileScreen_txt_13[n].y * rate
            profileScreen_listprofileScreen_txt_13[n].height = profileScreen_listprofileScreen_txt_13[n].height * rate
            profileScreen_listprofileScreen_txt_13[n].textSize = 13 * rateTextSize
        }
        for (var p = 0; p < profileScreen_listListViewID.length; p++) {
            profileScreen_listListViewID[p].y = profileScreen_listListViewID[p].y * rate
            profileScreen_listListViewID[p].height = profileScreen_listListViewID[p].height * rate
        }
        profileScreen_rec_4.implicitHeight = profileScreen_rec_4.implicitHeight * rate
    }

    onWidthChanged: {
        var rate = width/currentWidth
        for (var i = 0; i < profileScreen_listItemID.length; i++) {
            profileScreen_listItemID[i].x = profileScreen_listItemID[i].x * rate
            profileScreen_listItemID[i].width = profileScreen_listItemID[i].width * rate
        }

        for (var k = 0; k < profileScreen_listprofileScreen_txt_7.length; k++) {
            profileScreen_listprofileScreen_txt_7[k].x = profileScreen_listprofileScreen_txt_7[k].x * rate
            profileScreen_listprofileScreen_txt_7[k].width = profileScreen_listprofileScreen_txt_7[k].width * rate
        }
        for (var l = 0; l < profileScreen_listprofileScreen_txt_8.length; l++) {
            profileScreen_listprofileScreen_txt_8[l].x = profileScreen_listprofileScreen_txt_8[l].x * rate
            profileScreen_listprofileScreen_txt_8[l].width = profileScreen_listprofileScreen_txt_8[l].width * rate
        }
        for (var m = 0; m < profileScreen_listprofileScreen_txt_9.length; m++) {
            profileScreen_listprofileScreen_txt_9[m].x = profileScreen_listprofileScreen_txt_9[m].x * rate
            profileScreen_listprofileScreen_txt_9[m].width = profileScreen_listprofileScreen_txt_9[m].width * rate
        }
        for (var n = 0; n < profileScreen_listprofileScreen_txt_13.length; n++) {
            profileScreen_listprofileScreen_txt_13[n].x = profileScreen_listprofileScreen_txt_13[n].x * rate
            profileScreen_listprofileScreen_txt_13[n].width = profileScreen_listprofileScreen_txt_13[n].width * rate
        }
        for (var p = 0; p < profileScreen_listListViewID.length; p++) {
            profileScreen_listListViewID[p].x = profileScreen_listListViewID[p].x * rate
            profileScreen_listListViewID[p].width = profileScreen_listListViewID[p].width * rate
        }
        profileScreen_rec_4.implicitWidth = profileScreen_rec_4.implicitWidth *rate
    }
}
