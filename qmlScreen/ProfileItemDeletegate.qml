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
        id: cItem1
        width: 770
        height: 30
        color: "#37345E"
        radius: 3

        MouseArea {
            anchors.fill: parent
            onPressed: {
                cItem1.color = "#907DE2"
            }
            onReleased: {
                cItem1.color = "#37345E"
            }
        }
    }

    Text {
        id: ctxt1
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
        id: ctxt2
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
        id: ctxt3
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
        id: cItem2
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
        id: ctxt4
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
        id: cItem3
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
        id: cItem4
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
        listChildrentItem.push(cItem1)
        listChildrentItem.push(cItem2)
        listChildrentItem.push(cItem3)
        listChildrentItem.push(cItem4)

        listChildrentTXT.push(ctxt1)
        listChildrentTXT.push(ctxt2)
        listChildrentTXT.push(ctxt3)
        listChildrentTXT.push(ctxt4)
    }

    onWidthChanged: {
        console.log("width change 1234")
        var rate = width/currentDetaiItemWidth
        console.log(rate)
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
