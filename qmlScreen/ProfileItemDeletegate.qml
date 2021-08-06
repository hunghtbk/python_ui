import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    id: profileItem_rect_item
    property int profileItem_widthDelegate : profileScreen_list_2.width - 20

    property var profileItem_listChildrentItem: []
    property var profileItem_listChildrentTXT: []
    property int profileItem_currentDetaiItemWidth: profileItem_rect_item.width

    width: profileItem_widthDelegate
    height: 30
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: profileItem1
        width: profileItem_widthDelegate
        height: 30
        color: "#37345E"
        radius: 3

        MouseArea {
            anchors.fill: parent
            onPressed: {
                profileItem1.color = "#907DE2"
            }
            onReleased: {
                profileItem1.color = "#37345E"
            }
            onClicked: {
                console.log("Profile item width" + profileItem1.width)
            }
        }
    }

    Text {
        id: profileLeftCorner
        width: 0
        height: 0
        text: qsTr("")
    }

    Text {
        id: profileTxt1
        width: 5
        height: 12
//        x: 12
//        y: 9
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (12/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: idtxtContent
    }

    Text {
        id: profileTxt2
        width: 44
        height: 12
//        x: 40
//        y: 9
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (40/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: profileNameContent
    }

    Text {
        id: profileTxt3
        width: 46
        height: 12
//        x: 210
//        y: 9
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (210/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: nameOnCard
    }

    Image {
        id: profileItem2
        width: 29
        height: 10
//        x: 489.25
//        y: 9.75
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (489.25/770)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: cardImage

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("cardImage")
            }
        }
    }

    Text {
        id: profileTxt4
        width: 27
        height: 12
//        x: 530
//        y: 9
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (530/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: cardNumber
    }

    Image {
        id: profileItem3
        width: 20
        height: 20
//        x: 720
//        y: 5
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (720/770)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: action1Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action1")
            }
        }
    }

    Image {
        id: profileItem4
        width: 20
        height: 20
//        x: 744
//        y: 5
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (744/770)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: action2Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action2")
            }
        }
    }

    Component.onCompleted: {
//        profileItem_listChildrentItem.push(profileItem1)
//        profileItem_listChildrentItem.push(profileItem2)
//        profileItem_listChildrentItem.push(profileItem3)
//        profileItem_listChildrentItem.push(profileItem4)

//        profileItem_listChildrentTXT.push(profileTxt1)
//        profileItem_listChildrentTXT.push(profileTxt2)
//        profileItem_listChildrentTXT.push(profileTxt3)
//        profileItem_listChildrentTXT.push(profileTxt4)
    }

    onWidthChanged: {
        var rate = width/profileItem_currentDetaiItemWidth
//        console.log(rate)
        for (var a = 0; a < profileItem_listChildrentItem.length; a++) {
            profileItem_listChildrentItem[a].x = profileItem_listChildrentItem[a].x * rate
            profileItem_listChildrentItem[a].width = profileItem_listChildrentItem[a].width * rate
        }

        for (var b = 0; b < profileItem_listChildrentTXT.length; b++) {
            profileItem_listChildrentTXT[b].x = profileItem_listChildrentTXT[b].x * rate
            profileItem_listChildrentTXT[b].width = profileItem_listChildrentTXT[b].width * rate
        }
    }
}
