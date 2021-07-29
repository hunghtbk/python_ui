import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    property int widthDelegate : parent.width

    width: widthDelegate
    height: 38
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: rec_3_4
        width: 770
        height: 30
        color: "#37345E"

        MouseArea {
            anchors.fill: parent
            onPressed: {
                rec_3_4.color = "#907DE2"
            }
            onReleased: {
                rec_3_4.color = "#37345E"
            }
        }
    }

    Text {
        id: txt_29
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
        id: txt_30
        width: 97
        height: 12
        x: 40
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: productContent
    }

    Text {
        id: txt_31
        width: 16
        height: 12
        x: 235
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: sizeContent
    }

    Text {
        id: txt_32
        width: 52
        height: 12
        x: 280
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: siteContent
    }

    Text {
        id: txt_33
        width: 45
        height: 12
        x: 377
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: profileContent
    }

    Text {
        id: txt_35
        width: 57
        height: 12
        x: 468
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: "#FFFFFF"
        text: proxyContent
    }

    Text {
        id: txt_36
        width: 69
        height: 12
        x: 575
        y: 9
        font.family: "Inter"
        font.pointSize: 8
        color: statusColor
        text: statusContent
    }

    Image {
        id: img_37
        width: 20
        height: 20
        x: 696
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
        id: img_38
        width: 20
        height: 20
        x: 720
        y: 5
        source: action2Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action2")
            }
        }
    }

    Image {
        id: img_39
        width: 20
        height: 20
        x: 744
        y: 5
        source: action3Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action3")
            }
        }
    }

    onWidthDelegateChanged: {
        console.log("width change to " + widthDelegate)
        rec_3_4.width = widthDelegate
    }
}
