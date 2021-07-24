import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: m_app
    visible: true
    width: 618
    height: 436
    title: qsTr("UI Project")
    color: "#2E2C50"
    flags:Qt.FramelessWindowHint

    Rectangle {
        id: btn_close
        x: 581
        y: 14
        width: 18
        height: 18
        color: "transparent"
        Image {
            anchors.centerIn: parent.Center
            width: 9.01
            height: 9.01
            source: "qrc:/image/close.png"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                m_app.close();
            }
        }

    }

    Rectangle {
        id: btn_small
        x: 561
        y: 14
        width: 18
        height: 18
        color: "transparent"
        Image {
            x: 0
            y: 5
            width: 12
            height: 1.5
            source: "qrc:/image/minimize.png"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                m_app.showMinimized();
            }
        }
    }

    Image {
        id: upoVal
        width: 280
        height: 127
        x: 338
        y: 0
        source: "qrc:/image/oval_up.png"
    }

    Text {
        id: logo_title
        x: 135
        y: 92
        width: 92
        height: 22
        text: qsTr("LevandoIO")
        font.family: "Helvetica"
        font.pointSize: 18
        color: "#FFFFFF"
    }

    Text {
        id: login_txt
        x: 85
        y: 152
        width: 56
        height: 22
        text: qsTr("LOGIN")
        font.family: "Helvetica"
        font.pointSize: 18
        color: "#907DE2"
    }

    Text {
        id: license_key_txt
        x: 85
        y: 191
        width: 70
        height: 15
        text: qsTr("License Key")
        font.family: "Helvetica"
        font.pointSize: 12
        color: "#FFFFFF"

    }
    Image {
        x: 85
        y: 215
        width: 448
        height: 30
        source: "qrc:/image/text_input_bgr.png"

        TextInput {
            x: 10
            id: txt_input
            anchors.verticalCenter: parent.verticalCenter
            text: "XXXXX-XXXXX-XXXXXX-XXXXXX"
            color: "#907DE2"
        }
    }

    Image {
        x: 85
        y: 263
        width: 160
        height: 30
        source: "qrc:/image/authen_bgr.png"

        Text {
            id: authentxt
            width: 76
            height: 15
            x: 36
            y: 6
            text: qsTr("Authenticate")
            font.family: "Helvetica"
            font.pointSize: 12
            color: "#2E2C50"
        }

        Image {
            x: 133
            y: 12
            width: 5
            height: 10
            source: "qrc:/image/authen_arrow.png"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Authenticate " + txt_input.text)
            }
        }
    }

    //SmallLotus
    Image {
        id: lotus1
        width: 14.78
        height: 9.1
        x: 85
        y: 97.63
        source: "qrc:/image/small_lotus/small_1.png"
    }
    Image {
        id: lotus2
        width: 15.17
        height: 7.97
        x: 85
        y: 94.45
        source: "qrc:/image/small_lotus/small_2.png"
    }
    Image {
        id: lotus3
        width: 7.45
        height: 15.53
        x: 97.58
        y: 84.01
        source: "qrc:/image/small_lotus/small_3.png"
    }
    Image {
        id: lotus4
        width: 7.45
        height: 15.53
        x: 102.47
        y: 84
        source: "qrc:/image/small_lotus/small_4.png"
    }

    Image {
        id: lotus5
        width: 15.17
        height: 7.97
        x: 107.33
        y: 94.46
        source: "qrc:/image/small_lotus/small_5.png"
    }

    Image {
        id: lotus6
        width: 14.78
        height: 9.1
        x: 107.72
        y: 97.63
        source: "qrc:/image/small_lotus/small_6.png"
    }

    Image {
        id: lotus7
        width: 10.14
        height: 13.84
        x: 106.21
        y: 105.83
        source: "qrc:/image/small_lotus/small_7.png"
    }

    Image {
        id: lotus8
        width: 11.15
        height: 12.74
        x: 104.18
        y: 106.97
        source: "qrc:/image/small_lotus/small_8.png"
    }

    Image {
        id: lotus9
        width: 11.15
        height: 12.74
        x: 92.16
        y: 106.97
        source: "qrc:/image/small_lotus/small_9.png"
    }

    Image {
        id: lotus10
        width: 10.14
        height: 13.84
        x: 91.15
        y: 105.83
        source: "qrc:/image/small_lotus/small_10.png"
    }

    //BigLotus
    Image {
        id: big_lotus1
        x: 338.5
        y: 383.45
        source: "qrc:/image/big_lostus/big_1.png"
    }
    Image {
        id: big_lotus2
        x: 325
        y: 359.45
        source: "qrc:/image/big_lostus/big_2.png"
    }

    Image {
        id: big_lotus3
//        width: 123.46
//        height: 141.580
        x: 361.46
        y: 260.85
        source: "qrc:/image/big_lostus/big_3.png"
    }
    Image {
        id: big_lotus4
//        width: 123.49
//        height: 141.6
        x: 393.76
        y: 238.26
        source: "qrc:/image/big_lostus/big_4.png"
    }
    Image {
        id: big_lotus5
        x: 475.8
        y: 251.79
        source: "qrc:/image/big_lostus/big_5.png"
    }
    Image {
        id: big_lotus6
        x: 493.24
        y: 273.67
        source: "qrc:/image/big_lostus/big_6.png"
    }
    Image {
        id: big_lotus7
        x: 519
        y: 364
        source: "qrc:/image/big_lostus/big_7.png"
    }
    Image {
        id: big_lotus8
        x: 511.61
        y: 376.79
        source: "qrc:/image/big_lostus/big_8.png"
    }
    //////////////////
    Image {
        id: downoVal
        width: 486
        height: 88
        x: 0
        y: 348
        source: "qrc:/image/oval_down.png"
    }
}
