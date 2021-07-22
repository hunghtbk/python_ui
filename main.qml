import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    id: m_app
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            UIBridge.log("dmdmdmdmdmdmdmd");
        }
    }

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
}
