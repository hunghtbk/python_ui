import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: m_taskScreen
    visible: true
    width: 1200
    height: 730
    title: qsTr("Task Screen")
    color: "#2E2C50"
//    flags:Qt.FramelessWindowHint

    Rectangle {
        id: controlPart
        width: 65
        height: 730
        color: "#37345E"

        //Define small lotus
        Image {
            id: lotus1
            width: 11.82
            height: 7.28
            x: 17
            y: 23.9
            source: "qrc:/image/small_lotus/small_1.png"
        }
        Image {
            id: lotus2
            width: 12.14
            height: 6.38
            x: 17
            y: 21.36
            source: "qrc:/image/small_lotus/small_2.png"
        }
        Image {
            id: lotus3
            width: 5.96
            height: 12.43
            x: 27.07
            y: 13
            source: "qrc:/image/small_lotus/small_3.png"
        }
        Image {
            id: lotus4
            width: 5.96
            height: 12.43
            x: 30.97
            y: 13
            source: "qrc:/image/small_lotus/small_4.png"
        }

        Image {
            id: lotus5
            width: 12.14
            height: 6.38
            x: 34.86
            y: 21.37
            source: "qrc:/image/small_lotus/small_5.png"
        }

        Image {
            id: lotus6
            width: 11.82
            height: 7.28
            x: 35.18
            y: 23.91
            source: "qrc:/image/small_lotus/small_6.png"
        }

        Image {
            id: lotus7
            width: 8.11
            height: 11.07
            x: 33.97
            y: 30.47
            source: "qrc:/image/small_lotus/small_7.png"
        }

        Image {
            id: lotus8
            width: 8.92
            height: 10.19
            x: 32.35
            y: 31.38
            source: "qrc:/image/small_lotus/small_8.png"
        }

        Image {
            id: lotus9
            width: 8.92
            height: 10.19
            x: 22.73
            y: 31.38
            source: "qrc:/image/small_lotus/small_9.png"
        }

        Image {
            id: lotus10
            width: 8.11
            height: 11.07
            x: 21.92
            y: 30.47
            source: "qrc:/image/small_lotus/small_10.png"
        }
        //End small lotus
        //Dashboard icon
        Image {
            id: dbIcon1
            width: 6
            height: 6
            x: 26.25
            y: 61.25
            source: "qrc:/image/dashboardIcon_inactive.png"
        }

        Image {
            id: dbIcon2
            width: 6
            height: 6
            x: 33.75
            y: 61.25
            source: "qrc:/image/dashboardIcon_inactive.png"
        }

        Image {
            id: dbIcon3
            width: 6
            height: 6
            x: 26.25
            y: 68.75
            source: "qrc:/image/dashboardIcon_inactive.png"
        }

        Image {
            id: dbIcon4
            width: 6
            height: 6
            x: 33.75
            y: 68.75
            source: "qrc:/image/dashboardIcon_inactive.png"
        }

        MouseArea {
            width: 18
            height: 18
            x: 24
            y: 59
            onPressed: {
                dbIcon1.source = "qrc:/image/dashboardIcon_active.png"
                dbIcon2.source = "qrc:/image/dashboardIcon_active.png"
                dbIcon3.source = "qrc:/image/dashboardIcon_active.png"
                dbIcon4.source = "qrc:/image/dashboardIcon_active.png"
            }
            onReleased: {
                dbIcon1.source = "qrc:/image/dashboardIcon_inactive.png"
                dbIcon2.source = "qrc:/image/dashboardIcon_inactive.png"
                dbIcon3.source = "qrc:/image/dashboardIcon_inactive.png"
                dbIcon4.source = "qrc:/image/dashboardIcon_inactive.png"
            }

        }

        //End dash board icon
        //task group icon
        Image {
            id: taskGroupIcon
            width: 13.5
            height: 13.5
            x: 26.25
            y: 95.27
            source: "qrc:/image/taskIcon_active.png"
        }

        //Selected Icon
        Rectangle {
            id: selectedIcon
            width: 8
            height: 8
            x: 61
            y: 98
            color: "#907DE2"
            radius: 100
        }
        //End Selected Icon
        //Profile Icon
        Image {
            id: profileIcon
            width: 15
            height: 10.5
            x: 25.5
            y: 130.75
            source: "qrc:/image/profileIcon_inactive.png"
        }
        Image {
            id: profileIcon1
            width: 4.5
            height: 1.5
            x: 28.5
            y: 136.75
            source: "qrc:/image/profileIcon_1_Inactive.png"
        }
        Image {
            id: profileIcon2
            width: 4.5
            height: 1.5
            x: 34.5
            y: 136.75
            source: "qrc:/image/profileIcon_1_Inactive.png"
        }

        MouseArea {
            width: 15
            height: 10.5
            x: 25.5
            y: 130.75
            onPressed: {
                profileIcon.source = "qrc:/image/profileIcon_active.png"
                profileIcon1.source = "qrc:/image/profileIcon_1_active.png"
                profileIcon2.source = "qrc:/image/profileIcon_1_active.png"
            }

            onReleased: {
                profileIcon.source = "qrc:/image/profileIcon_inactive.png"
                profileIcon1.source = "qrc:/image/profileIcon_1_Inactive.png"
                profileIcon2.source = "qrc:/image/profileIcon_1_Inactive.png"
            }
        }

        //End profile icon
        //Proxy icon
        Image {
            id: proxyIcon
            width: 12
            height: 16.5
            x: 27
            y: 161.75
            source: "qrc:/image/proxyIcon_inactive.png"
        }

        MouseArea {
            anchors.fill: proxyIcon
            onPressed: {
                proxyIcon.source = "qrc:/image/proxyIcon_active.png"
            }
            onReleased: {
                proxyIcon.source = "qrc:/image/proxyIcon_inactive.png"
            }
        }

        //End Proxy icon
        //Account Icon
        Image {
            id: accountIcon1
            width: 6
            height: 6
            x: 30
            y: 195.25
            source: "qrc:/image/accountIcon_inactive_1.png"
        }
        Image {
            id: accountIcon2
            width: 10.5
            height: 6
            x: 27.75
            y: 202.75
            source: "qrc:/image/accounticon_inactive_2.png"
        }

        MouseArea {
            width: 18
            height: 18
            x: 24
            y: 193
            onPressed: {
                accountIcon1.source = "qrc:/image/accountIcon_active_1.png"
                accountIcon2.source = "qrc:/image/accountIcon_active_2.png"
            }
            onReleased: {
                accountIcon1.source = "qrc:/image/accountIcon_inactive_1.png"
                accountIcon2.source = "qrc:/image/accounticon_inactive_2.png"
            }
        }
        //Account icon end
        //Setting Icon
        Image {
            id: settingIcon1
            width: 15
            height: 15
            x: 25.5
            y: 226.5
            source: "qrc:/image/settingIcon1.png"
        }
        Image {
            id: settingIcon2
            width: 5.25
            height: 5.25
            x: 30.38
            y: 231.37
            source: "qrc:/image/settingIcon2.png"
        }

        MouseArea {
            width: 15
            height: 15
            x: 25.5
            y: 226.5
            onPressed: {
                settingIcon1.source = "qrc:/image/settingIcon1_active.png"
                settingIcon2.source = "qrc:/image/settingIcon2_active.png"
            }
            onReleased: {
                settingIcon1.source = "qrc:/image/settingIcon1.png"
                settingIcon2.source = "qrc:/image/settingIcon2.png"
            }
        }

        //End setting Icon
        //Change Theme icon
        Image {
            id: changeTheme1
            width: 4
            height: 2
            x: 23
            y: 697
            source: "qrc:/image/changeTheme1_inactive.png"
        }
        Image {
            id: changeTheme2
            width: 3.5
            height: 3.42
            x: 25.51
            y: 690.72
            source: "qrc:/image/changeTheme2_inactive.png"
        }
        Image {
            id: changeTheme3
            width: 2
            height: 4
            x: 32
            y: 688
            source: "qrc:/image/changeTheme3_inactive.png"
        }
        Image {
            id: changeTheme4
            width: 3.36
            height: 3.36
            x: 37.05
            y: 690.78
            source: "qrc:/image/changeTheme4_inactive.png"
        }
        Image {
            id: changeTheme5
            width: 4
            height: 2
            x: 39
            y: 697
            source: "qrc:/image/changeTheme5_inactive.png"
        }
        Image {
            id: changeTheme6
            width: 3.45
            height: 3.42
            x: 37.03
            y: 701.86
            source: "qrc:/image/changeTheme6_inactive.png"
        }
        Image {
            id: changeTheme7
            width: 2
            height: 4
            x: 32
            y: 704
            source: "qrc:/image/changeTheme7_inactive.png"
        }
        Image {
            id: changeTheme8
            width: 3.43
            height: 3.36
            x: 25.53
            y: 701.89
            source: "qrc:/image/changeTheme8_inactive.png"
        }
        Image {
            id: changeTheme9
            width: 8
            height: 8
            x: 29
            y: 694
            source: "qrc:/image/changeTheme9_inactive.png"
        }
    }

    Rectangle {
        id: taskGroup
        x: 65
        y: 0
        width: 284
        height: 730
        color: "#282645"

        Text {
            id: taskGroupTitle
            text: qsTr("Tasks Groups")
            width: 103
            height: 19
            x: 33
            y: 19
            font.family: "Inter"
            font.pointSize: 13
            color: "#FFFFFF"
        }

        Image {
            id: addIcon
            width: 9.6
            height: 9.6
            x: 163.4
            y: 24.4
            source: "qrc:/image/add_icon2.png"
        }
        Image {
            id: addIconBorder
            width: 21
            height: 21
            x: 158
            y: 19
            source: "qrc:/image/add_icon1.png"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Add new Task Group")
                }
            }
        }

        //List task group
        ListView {
            width: 221
            height: 660
            x: 33
            y: 64
            model: TaskGroupModel {}
            delegate: TaskGroupDelegate {}
            clip: true
        }

    }

    Rectangle {
        id: detailItem
        x: 349
        y: 0
        width: 851
        height: 730
        color: "transparent"

        Image {
            id: borderImage1
            width: 70.4
            height: 70.4
            x: 27
            y: 22
            source: "qrc:/image/image_borde.png"

            Image {
                id: siteImage
                width: 52
                height: 56
                x: 9
                y: 7
                source: "qrc:/image/Sony-Playstation-5-Blu-Ray-Edition-Console-White_Big.png"
            }
        }

        Text {
            id: siteTitle
            text: qsTr("Site")
            width: 19
            height: 12
            x: 118
            y: 21
            font.family: "Inter"
            font.pointSize: 7
            color: "#75719B"
        }

        Text {
            id: siteName
            text: qsTr("Bestbuy")
            width: 47
            height: 15
            x: 118
            y: 37
            font.family: "Inter"
            font.pointSize: 9
            color: "#FFFFFF"
        }

        Text {
            id: productTitle
            text: qsTr("Product")
            width: 39
            height: 12
            x: 118
            y: 62
            font.family: "Inter"
            font.pointSize: 7
            color: "#75719B"
        }

        Text {
            id: productName
            text: qsTr("Playstation 5 Digital Console")
            width: 162
            height: 15
            x: 118
            y: 78
            font.family: "Inter"
            font.pointSize: 9
            color: "#FFFFFF"
        }

        Image {
            id: boder2
            width: 246
            height: 30
            x: 512
            y: 21
            source: "qrc:/image/border_2.png"
        }

        Image {
            id: line
            width: 851
            height: 1
            x: 0
            y: 115.5
            source: "qrc:/image/line.png"
        }
    }
}
