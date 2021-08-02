import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    id: rect_1_1
    property int widthDelegate : parent.width - 20

    property var listIMG_ID_DetailItem: []
    property var listTEXT_ID_DetailItem: []
    property int currentDetaiItemWidth: rect_1_1.width

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

    Component.onCompleted: {
        listIMG_ID_DetailItem.push(img_37)
        listIMG_ID_DetailItem.push(img_38)
        listIMG_ID_DetailItem.push(img_39)
        listIMG_ID_DetailItem.push(rec_3_4)

        listTEXT_ID_DetailItem.push(txt_29)
        listTEXT_ID_DetailItem.push(txt_30)
        listTEXT_ID_DetailItem.push(txt_31)
        listTEXT_ID_DetailItem.push(txt_32)
        listTEXT_ID_DetailItem.push(txt_33)
        listTEXT_ID_DetailItem.push(txt_35)
        listTEXT_ID_DetailItem.push(txt_36)
    }

    onWidthChanged: {
        console.log("width change 1234")
        var rate = width/currentDetaiItemWidth
        console.log(rate)
        for (var a = 0; a < listIMG_ID_DetailItem.length; a++) {
            listIMG_ID_DetailItem[a].x = listIMG_ID_DetailItem[a].x * rate
            listIMG_ID_DetailItem[a].width = listIMG_ID_DetailItem[a].width * rate
        }

        for (var b = 0; b < listTEXT_ID_DetailItem.length; b++) {
            listTEXT_ID_DetailItem[b].x = listTEXT_ID_DetailItem[b].x * rate
            listTEXT_ID_DetailItem[b].width = listTEXT_ID_DetailItem[b].width * rate
        }
    }
}
