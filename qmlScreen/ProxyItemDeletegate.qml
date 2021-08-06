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
    height: 30
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: cItem1
        width: widthDelegate
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
        id: proxyLeftCorner
        width: 0
        height: 0
        text: qsTr("")
    }

    Text {
        id: ctxt1
        width: 209
        height: 12
//        x: 19
//        y: 9
        anchors.left: proxyLeftCorner.right
        anchors.leftMargin: (19/385)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: proxyTxtContent
    }

    Text {
        id: ctxt2
        width: 32
        height: 12
//        x: 271
//        y: 9
        anchors.left: proxyLeftCorner.right
        anchors.leftMargin: (271/385)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: 8
        color: statusColorTxt
        text: statusContent
    }

    Image {
        id: cItem3
        width: 20
        height: 20
//        x: 335
//        y: 5
        anchors.left: proxyLeftCorner.right
        anchors.leftMargin: (335/385)* parent.width
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
        id: cItem4
        width: 20
        height: 20
//        x: 359
//        y: 5
        anchors.left: proxyLeftCorner.right
        anchors.leftMargin: (359/385)* parent.width
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
//        listChildrentItem.push(cItem1)
//        listChildrentItem.push(cItem3)
//        listChildrentItem.push(cItem4)

//        listChildrentTXT.push(ctxt1)
//        listChildrentTXT.push(ctxt2)
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
