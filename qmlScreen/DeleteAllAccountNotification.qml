import QtQuick 2.0

Rectangle {
//    width: 582
//    height: 150
    id: notificationMain
    property bool dashboardNormalTheme: true
    function changeThemePopup(abcd) {
        console.log("TaskScreen " + abcd)
        dashboardNormalTheme = abcd
    }

    color: dashboardNormalTheme?"#37345E":"#FFFFFF"
    radius: 5
    signal deleteAllAccountsMessage(string msg)
    Text {
        id: marginLeft
        x: 0
        y: 0
        width: 0
        height: 0
    }

    Rectangle {
        id: circleIcon
        x: 30
        y: 45
        width: 30
        height: 30
        anchors.left: marginLeft.right
        anchors.leftMargin: (30/500)* parent.width
        anchors.top: marginLeft.bottom
        anchors.topMargin: (45/150)* parent.height
        radius: circleIcon.width * 0.5
        border.color: "orange"
        border.width: 2
        color: "transparent"

        Text {
            id: txtname
            text: qsTr("!")
            anchors.fill: parent
            font.pointSize: 17
            anchors.centerIn: parent.Center
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "orange"
        }
    }

    Text {
        id: noticationContent
        property int textSize: 12
        text: qsTr("Do you want to delete all accounts?")
        width: (46/500) * parent.width
        height: (12/150) * parent.height
        anchors.left: marginLeft.right
        anchors.leftMargin: (70/500)* parent.width
        anchors.top: marginLeft.bottom
        anchors.topMargin: (50/150)* parent.height
        font.family: "Inter"
        font.pointSize: textSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: cancelBorder
//        width: 100
//        height: 30
//        x: 230
//        y: 100
        width: (100/500) * parent.width
        height: (30/150) * parent.height
        anchors.left: marginLeft.right
        anchors.leftMargin: (230/500)* parent.width
        anchors.top: marginLeft.bottom
        anchors.topMargin: (100/150)* parent.height
        border.color: dashboardNormalTheme?"#3F3C68":"#EEF0F6"
        border.width: 1
        radius: 5
        color: dashboardNormalTheme?"#37345E":"#FFFFFF"

        Text {
            id: txtCancel
            text: qsTr("Cancel")
            anchors.fill: parent
            font.pointSize: 12
            anchors.centerIn: parent.Center
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: dashboardNormalTheme?"#FFFFFF":"#000000"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("DeleteAllAccountsNotification.qml - Cancel")
                notificationMain.deleteAllAccountsMessage("delete_all_accounts_cancel")
            }
        }
    }

    Rectangle {
        id: okBorder
//        width: 100
//        height: 30
//        x: 350
//        y: 100
        width: (100/500) * parent.width
        height: (30/150) * parent.height
        anchors.left: marginLeft.right
        anchors.leftMargin: (350/500)* parent.width
        anchors.top: marginLeft.bottom
        anchors.topMargin: (100/150)* parent.height
        color: dashboardNormalTheme?"#FFFFFF":"#F7F8FC"
        border.color: dashboardNormalTheme?"#FFFFFF":"#F7F8FC"
        border.width: 1
        radius: 5

        Text {
            id: txtOK
            text: qsTr("OK")
            anchors.fill: parent
            font.pointSize: 12
            anchors.centerIn: parent.Center
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "#000000"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("DeleteAllAccountsNotification.qml - OK")
                notificationMain.deleteAllAccountsMessage("delete_all_accounts_ok")
            }
        }
    }

}
