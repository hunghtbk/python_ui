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
            source: "qrc:/image/profileIcon_inactive.png"
        }
        Image {
            id: profileIcon2
            width: 4.5
            height: 1.5
            x: 34.5
            y: 136.75
            source: "qrc:/image/profileIcon_inactive.png"
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


    }
}
