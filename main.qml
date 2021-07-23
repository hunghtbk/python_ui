import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: m_app
    visible: true
    width: 618
    height: 436
    title: qsTr("UI Project")
    color: "#2E2C50"

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

    SmallLotus {
        id: logo_image
        x: 85
        y: 84
        width: 38
        height: 38
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

    BigLotus {
        x: 320
        y: 263
    }

    Image {
        id: downoVal
        width: 486
        height: 88
        x: 0
        y: 348
        source: "qrc:/image/oval_down.png"
    }
}
