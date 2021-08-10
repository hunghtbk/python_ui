import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    id: rect_item
    property int proxyItemWidthItem : 0
    property int proxyItemHeightItem : 0

    width: proxyItemWidthItem
    height: proxyItemHeightItem
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: cItem1
        width: proxyItemWidthItem
        height: proxyItemHeightItem
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
        property int textSize: 8

        width: (209/385) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: proxyLeftCorner.right
        anchors.leftMargin: (19/385)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom


        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: proxyTxtContent
    }

    Text {
        id: ctxt2
        property int textSize: 8
        width: (32/385) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: proxyLeftCorner.right
        anchors.leftMargin: (271/385)* parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom


        font.family: "Inter"
        font.pointSize: textSize
        color: statusColorTxt
        text: statusContent
    }

    Image {
        id: cItem3
//        width: 20
//        height: 20
//        x: 335
//        y: 5
        width: (20/385) * parent.width //width
        height: (20/30) * parent.height //height
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
//        width: 20
//        height: 20
//        x: 359
//        y: 5
        width: (20/385) * parent.width //width
        height: (20/30) * parent.height //height
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

    onHeightChanged: {
        console.log(height)
        var rateTextSize = height/30
        ctxt1.textSize = 8 * rateTextSize
        ctxt1.textSize = 8 * rateTextSize
    }
}
