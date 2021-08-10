import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    id: rect_item
    property int dashboardItemWidthItem : 0
    property int dashboardItemHeightItem : 0

    property var listChildrentItem: []
    property var listChildrentTXT: []
    property int currentDetaiItemWidth: rect_item.width

    width: dashboardItemWidthItem
    height: dashboardItemHeightItem
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: cItem1
        width: dashboardItemWidthItem
        height: dashboardItemHeightItem
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
        id: dashboardLeftCorner
        width: 0
        height: 0
        text: qsTr("")
    }

    Rectangle {
        width: (37/405) * parent.width //width
        height: (37/50) * parent.height //height
        anchors.left: dashboardLeftCorner.right
        anchors.leftMargin: (7/405)* parent.width //x
        anchors.top: dashboardLeftCorner.bottom
        anchors.topMargin: (6/50)* parent.height //y
        color: "#FFFFFF"
    }

    Image {
        id: img_icon

        width: (28/405) * parent.width //width
        height: (30/50) * parent.height //height
        anchors.left: dashboardLeftCorner.right
        anchors.leftMargin: (11.07/405)* parent.width //x
        anchors.top: dashboardLeftCorner.bottom
        anchors.topMargin: (9.5/50)* parent.height //y
        source: iconSource
    }

    Text {
        id: txt_name
        property int textSize: 7
        width: (139/405) * parent.width //width
        height: (12/50) * parent.height //height
        anchors.left: dashboardLeftCorner.right
        anchors.leftMargin: (58/405)* parent.width //x
        anchors.top: dashboardLeftCorner.bottom
        anchors.topMargin: (11/50)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: txtName
    }

    Text {
        id: txt_size
        property int textSize: 7
        width: (42/405) * parent.width //width
        height: (12/50) * parent.height //height
        anchors.left: dashboardLeftCorner.right
        anchors.leftMargin: (58/405)* parent.width //x
        anchors.top: dashboardLeftCorner.bottom
        anchors.topMargin: (27/50)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#75719B"
        text: txtSize
    }

    Text {
        id: txt_target
        property int textSize: 7
        width: (32/405) * parent.width //width
        height: (12/50) * parent.height //height
        anchors.left: dashboardLeftCorner.right
        anchors.leftMargin: (222/405)* parent.width //x
        anchors.top: dashboardLeftCorner.bottom
        anchors.topMargin: (11/50)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: txtTarget
    }

    Text {
        id: txt_targetContent
        property int textSize: 7
        width: (45/405) * parent.width //width
        height: (12/50) * parent.height //height
        anchors.left: dashboardLeftCorner.right
        anchors.leftMargin: (222/405)* parent.width //x
        anchors.top: dashboardLeftCorner.bottom
        anchors.topMargin: (27/50)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#75719B"
        text: txtTargetContent
    }

    Text {
        id: txt_day
        property int textSize: 7
        width: (61/405) * parent.width //width
        height: (12/50) * parent.height //height
        anchors.left: dashboardLeftCorner.right
        anchors.leftMargin: (315/405)* parent.width //x
        anchors.top: dashboardLeftCorner.bottom
        anchors.topMargin: (11/50)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#FFFFFF"
        text: txtDay
    }

    Text {
        id: txt_time
        property int textSize: 7
        width: (60/405) * parent.width //width
        height: (12/50) * parent.height //height
        anchors.left: dashboardLeftCorner.right
        anchors.leftMargin: (315/405)* parent.width //x
        anchors.top: dashboardLeftCorner.bottom
        anchors.topMargin: (27/50)* parent.height //y
        font.family: "Inter"
        font.pointSize: textSize
        color: "#75719B"
        text: txtTime
    }


    Component.onCompleted: {
        listChildrentTXT.push(txt_name)
        listChildrentTXT.push(txt_size)
        listChildrentTXT.push(txt_target)
        listChildrentTXT.push(txt_targetContent)
        listChildrentTXT.push(txt_day)
        listChildrentTXT.push(txt_time)
    }

    onHeightChanged: {
        var rateTextSize = height/50
        for (var l = 0; l < listChildrentTXT.length; l++) {
            listChildrentTXT[l].textSize = 7 * rateTextSize
        }
    }
}
