import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    width: 770
    height: 38
    color: "transparent"

    Image {
        id: bacgroundItem
        width: 770
        height: 30
        source: "qrc:/image/task_item_border.png"
    }

    Text {
        id: idtxt
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
        id: productxt
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
        id: sizetxt
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
        id: sitetxt
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
        id: profiletxt
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
        id: proxytxt
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
        id: statustxt
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
        id: action1
        x: mouseAction1.x + 6
        y: mouseAction1.y + 6
        source: action1Source
    }

    MouseArea {
        id: mouseAction1
        width: 20
        height: 20
        x: 696
        y: 5
        onClicked: {
            console.log("action1")
        }
    }

    Image {
        id: action2
        x: mouseAction2.x + 6
        y: mouseAction2.y + 6
        source: action2Source
    }

    MouseArea {
        id: mouseAction2
        width: 20
        height: 20
        x: 720
        y: 5
        onClicked: {
            console.log("action2")
        }
    }

    Image {
        id: action3
        x: mouseAction3.x + 6
        y: mouseAction3.y + 6
        source: action3Source
    }

    MouseArea {
        id: mouseAction3
        width: 20
        height: 20
        x: 744
        y: 5
        onClicked: {
            console.log("action3")
        }
    }

}
