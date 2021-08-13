import QtQuick 2.5
//property :
//idtxtContent
//productContent

Rectangle {
    id: rect_item
    property int accountItemWidthItem : 0
    property int accountItemHeightItem: 0
    property string colorItem: ""
    onColorItemChanged: {
        cItem1.color = colorItem
    }

    width: accountItemWidthItem
    height: accountItemHeightItem
    color: "transparent"
    property int itemWid: 0
    Rectangle {
        id: cItem1
        width: accountItemWidthItem
        height: accountItemHeightItem
        color: colorItem
        radius: 5

        MouseArea {
            anchors.fill: parent
            onPressed: {
                cItem1.color = "#907DE2"
            }
            onReleased: {
                cItem1.color = colorItem
            }
        }
    }

    Text {
        id: accountLeftCorner
        width: 0
        height: 0
        text: qsTr("")
    }

    Text {
        id: ctxt1
        property int textSize: 8
        width: (101/385) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: accountLeftCorner.right
        anchors.leftMargin: (19/385)* parent.width
//        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: emailTxtContent
    }

    Text {
        id: ctxt2
        property int textSize: 8
        width: (90/385) * parent.width //width
        height: (12/30) * parent.height //height
        anchors.left: accountLeftCorner.right
        anchors.leftMargin: (181/385)* parent.width
//        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font.family: "Inter"
        font.pointSize: textSize
        color: (colorItem ==="#37345E")?"#FFFFFF":"#000000"
        text: passWordContent
    }

    Image {
        id: cItem3
        width: (20/385) * parent.width //width
        height: (20/30) * parent.height //height
        anchors.left: accountLeftCorner.right
        anchors.leftMargin: (335/385)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: (colorItem ==="#37345E")?"../appIMG/4.AccountScreen/item_edit_all_4x.png":"../appIMG/7.LightMode/edit-icon-4x.png"//action1Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action1")
            }
        }
    }

    Image {
        id: cItem4
        width: (20/385) * parent.width //width
        height: (20/30) * parent.height //height
        anchors.left: accountLeftCorner.right
        anchors.leftMargin: (359/385)* parent.width
        anchors.verticalCenter: parent.verticalCenter
        source: (colorItem ==="#37345E")?"../appIMG/4.AccountScreen/item_delete_all_4x.png":"../appIMG/7.LightMode/item_delete_all_4x.png"//action2Source

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("action2")
            }
        }
    }
    onHeightChanged: {
        var rateTextSize = height/30
        ctxt1.textSize = 8 * rateTextSize
        ctxt1.textSize = 8 * rateTextSize
    }
}
