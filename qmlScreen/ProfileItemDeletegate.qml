import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    id: rect_item
    property int widthDelegate : parent.width - 20

    property var listChildrentItem: []
    property var listChildrentTXT: []
    property int currentDetaiItemWidth: rect_item.width

    width: widthDelegate
    height: 38
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: profileItem1
        width: 770
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
        }
    }

    Text {
        id: profileTxt1
        width: 5
        height: 12
        x: 12
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: idtxtContent
    }

    Text {
        id: profileTxt2
        width: 44
        height: 12
        x: 40
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: profileNameContent
    }

    Text {
        id: profileTxt3
        width: 46
        height: 12
        x: 210
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: nameOnCard
    }

    Image {
        id: profileItem2
        width: 29
        height: 10
        x: 489.25
        y: 9.75
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
        x: 530
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: cardNumber
    }

    Image {
        id: profileItem3
        width: 20
        height: 20
        x: 720
        y: 5
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
        x: 744
        y: 5
        source: action2Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action2")
            }
        }
    }

    Component.onCompleted: {
        listChildrentItem.push(profileItem1)
        listChildrentItem.push(profileItem2)
        listChildrentItem.push(profileItem3)
        listChildrentItem.push(profileItem4)

        listChildrentTXT.push(profileTxt1)
        listChildrentTXT.push(profileTxt2)
        listChildrentTXT.push(profileTxt3)
        listChildrentTXT.push(profileTxt4)
    }

    onWidthChanged: {
        var rate = width/currentDetaiItemWidth
//        console.log(rate)
        for (var a = 0; a < listChildrentItem.length; a++) {
            listChildrentItem[a].x = listChildrentItem[a].x * rate
            listChildrentItem[a].width = listChildrentItem[a].width * rate
        }

        for (var b = 0; b < listChildrentTXT.length; b++) {
            listChildrentTXT[b].x = listChildrentTXT[b].x * rate
            listChildrentTXT[b].width = listChildrentTXT[b].width * rate
        }
    }
}
