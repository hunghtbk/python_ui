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

    property int currentWidth: m_app.width
    property int currentHeight: m_app.height

    property var listID: []
    property var listTextID: []
    property var listTextID_18: []

    MouseArea {
        anchors.fill: parent
        onPressed: { pos = Qt.point(mouse.x, mouse.y) }
        onPositionChanged: {
            var diff = Qt.point(mouse.x - pos.x, mouse.y - pos.y)
            m_app.x += diff.x
            m_app.y += diff.y
        }
        property point pos
    }

    Rectangle {
        id: btn_close
        x: 596
        y: 0
        width: 20
        height: 20
        color: mcloseBtn.containsMouse ? "red" : "transparent"
        Image {
            id: btn_close_image
            width: 18
            height: 18
            anchors.centerIn: parent.Center
            source: "../appIMG/6.Common/close-outline-white.png"
        }
        MouseArea {
            id: mcloseBtn
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                m_app.close();
            }
        }

    }

    Rectangle {
        id: btn_small
        x: 576
        y: 0
        width: 20
        height: 20
        color: mminimumBtn.containsMouse ? "red" : "transparent"
        Image {
            id: btn_small_image
            anchors.centerIn: parent.Center
            width: 18
            height: 18
            source: "../appIMG/6.Common/minus-outline-white.png"
        }
        MouseArea {
            id: mminimumBtn
            anchors.fill: parent
            hoverEnabled: true
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
        source: "../image/oval_up.png"
    }

    Text {
        id: logo_title
        property int textSize: 18
        x: 135
        y: 92
        width: 92
        height: 22
        text: qsTr("LevandoIO")
        font.family: "Helvetica"
        font.pointSize: textSize
        color: "#FFFFFF"
    }

    Text {
        id: login_txt
        property int textSize: 18
        x: 85
        y: 152
        width: 56
        height: 22
        text: qsTr("LOGIN")
        font.family: "Helvetica"
        font.pointSize: textSize
        color: "#907DE2"
    }

    Text {
        id: license_key_txt
        property int textSize: 12
        x: 85
        y: 191
        width: 70
        height: 15
        text: qsTr("License Key")
        font.family: "Helvetica"
        font.pointSize: textSize
        color: "#FFFFFF"

    }
    Image {
        id: input_bgr
        x: 85
        y: 215
        width: 448
        height: 30
        source: "../image/text_input_bgr.png"

        TextInput {
            id: txt_input
            property int textSize: 12
            width: 428
            height: 20
            x: 10
            y: 5
//            anchors.verticalCenter: parent.verticalCenter
            text: "XXXXX-XXXXX-XXXXXX-XXXXXX"
            font.family: "Helvetica"
            font.pointSize: textSize
            color: "#907DE2"
            selectByMouse: true
        }
    }

    Image {
        id: img_authen_bgr
        x: 85
        y: 263
        width: 160
        height: 30
        source: "../image/authen_bgr.png"

        Text {
            id: authentxt
            property int textSize: 12
            width: 76
            height: 15
            x: 36
            y: 6
            text: qsTr("Authenticate")
            font.family: "Helvetica"
            font.pointSize: textSize
            color: "#2E2C50"
        }

        Image {
            id: authen_arrow
            x: 133
            y: 12
            width: 5
            height: 10
            source: "../image/authen_arrow.png"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Authenticate " + txt_input.text)
            }
        }
    }

    //Small lotus
    Image {
        id: smallLotus
        width: 39
        height:  36
        x: 85
        y: 84
        source: "../appIMG/6.Common/login_lotus_icon_small.png"
    }

    //BigLotus
    Image {
        id: bigLotus
        width: 279
        height: 251
        x: 339
        y: 185
        source: "../appIMG/6.Common/login_lotus_icon_big.png"
    }

    Image {
        id: downoVal
        width: 486
        height: 88
        x: 0
        y: 348
        source: "../image/oval_down.png"
    }

    Component.onCompleted: {
        listID.push(upoVal)
        listTextID_18.push(logo_title)
        listTextID_18.push(login_txt)
        listTextID.push(license_key_txt)
        listID.push(input_bgr)
        listTextID.push(txt_input)

        listID.push(img_authen_bgr)
        listID.push(authen_arrow)
        listTextID.push(authentxt)

        listID.push(smallLotus)
        listID.push(bigLotus)

        listID.push(btn_close);
        listID.push(btn_small);
        listID.push(btn_small_image);
        listID.push(btn_close_image)
        listID.push(downoVal)
    }

    onWidthChanged: {
        var rate = width/currentWidth
        for (var i = 0; i < listID.length; i++) {
            listID[i].x = listID[i].x * rate
            listID[i].width = listID[i].width * rate
        }
        for (var a = 0; a < listTextID.length; a++) {
            listTextID[a].x = listTextID[a].x * rate
            listTextID[a].width = listTextID[a].width * rate
        }
        for (var b = 0; b < listTextID_18.length; b++) {
            listTextID_18[b].x = listTextID_18[b].x * rate
            listTextID_18[b].width = listTextID_18[b].width * rate
        }

    }
    onHeightChanged: {
        console.log("Heigh change = " + height)
        var rate = height/currentHeight
        for (var i = 0; i < listID.length; i++) {
            listID[i].y = listID[i].y * rate
            listID[i].height = listID[i].height * rate
        }

        for (var a = 0; a < listTextID.length; a++) {
            listTextID[a].y = listTextID[a].y * rate
            listTextID[a].height = listTextID[a].height * rate
            var rateTextSize = height/436
            listTextID[a].textSize = 12 * rateTextSize
        }

        for (var b = 0; b < listTextID_18.length; b++) {
            listTextID_18[b].y = listTextID_18[b].y * rate
            listTextID_18[b].height = listTextID_18[b].height * rate
            var rateTextSize18 = height/436
            listTextID_18[b].textSize = 18 * rateTextSize18
        }
    }
}
