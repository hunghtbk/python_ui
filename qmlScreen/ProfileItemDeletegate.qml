import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    id: profileItem_rect_item
    property int profileItem_widthDelegate : 0
    property int profileItem_heightDelegate : 0

    property var profileItem_listChildrentItem: []
    property var profileItem_listChildrentTXT: []
    property int profileItem_currentDetaiItemWidth: profileItem_rect_item.width

    width: profileItem_widthDelegate
    height: profileItem_heightDelegate
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: profileItem1
        width: profileItem_widthDelegate
        height: profileItem_heightDelegate
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
        property int textSize: 8
        width: (5/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (12/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: idtxtContent
    }

    Text {
        id: profileTxt2
//        width: 44
//        height: 12
//        x: 40
//        y: 9
        property int textSize: 8
        width: (44/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (40/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: profileNameContent
    }

    Text {
        id: profileTxt3
//        width: 46
//        height: 12
//        x: 210
//        y: 9
        property int textSize: 8
        width: (46/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (210/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: nameOnCard
    }

    Image {
        id: profileItem2
//        width: 29
//        height: 10
//        x: 489.25
//        y: 9.75
        width: (29/770) * parent.width //width
        height: (10/30) * parent.height //height
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
//        width: 27
//        height: 12
//        x: 530
//        y: 9
        property int textSize: 8
        width: (27/770) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: profileLeftCorner.right
        anchors.leftMargin: (530/770)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: cardNumber
    }

    Image {
        id: profileItem3
//        width: 20
//        height: 20
//        x: 720
//        y: 5
        width: (20/770) * parent.width //width
        height: (20/30) * parent.height //height
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
//        width: 20
//        height: 20
//        x: 744
//        y: 5
        width: (20/770) * parent.width //width
        height: (20/30) * parent.height //height
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

    onHeightChanged: {
        var rateTextSize = height/30
        profileTxt1.textSize = 8 * rateTextSize
        profileTxt2.textSize = 8 * rateTextSize
        profileTxt3.textSize = 8 * rateTextSize
        profileTxt4.textSize = 8 * rateTextSize
    }
}
