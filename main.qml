import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: m_app
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        id: btn_close
        x: 540
        y: 0
        btn_width: 100
        btn_heigh: 50
        btn_title: "X"
        onSendMessage: {
            console.log("X button")
            m_app.close();
        }

    }

    Button {
        id: btn_small
        x: 440
        y: 0
        btn_width: 100
        btn_heigh: 50
        btn_title: "--"
        onSendMessage: {
            console.log("- button")
            m_app.showMinimized();
        }
    }

    Image {
        id: logo_image
        x: 0
        y: 0
        width: 100
        height: 100
        source: "qrc:/image/facebook_logo.jpg"
    }

    Text {
        id: logo_title
        x: 200
        y: 50
        text: qsTr("Facebook Login")
        font.family: "Helvetica"
        font.pointSize: 24
    }

    Text {
        id: login_txt
        x: 5
        y: 200
        text: qsTr("LOGIN")
        font.family: "Helvetica"
        font.pointSize: 24
    }

    Text {
        id: license_key_txt
        x: 5
        y: 250
        text: qsTr("License Key")
        font.family: "Helvetica"
        font.pointSize: 18
    }
    Rectangle {
        x: 5
        y: 300
        width: 400
        height: 50
        border.color: "black"

        TextInput {
            x: 10
            id: txt_input
            anchors.verticalCenter: parent.verticalCenter
            text: "XXXXX-XXXXX-XXXXXX-XXXXXX"
        }
    }

    Button {
        id: btn_authen
        x: 10
        y: 400
        btn_width: 150
        btn_heigh: 50
        btn_title: "Authentication"
        onSendMessage: {
            console.log("Authentication " + txt_input.text)
        }

    }
}
