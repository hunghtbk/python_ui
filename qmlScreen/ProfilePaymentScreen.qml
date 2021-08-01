import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    id: m_profileBillingScreen
    visible: true
    title: qsTr("Create Profile Billing Screen")
    //    flags:Qt.FramelessWindowHint
    width: 582
    height: 453
    color: "#37345E"

    property int currentWidth: m_profileBillingScreen.width
    property int currentHeight: m_profileBillingScreen.height

    property var listItemID: []
    property var listCBBID: []
    property var listTXTID: []

    Rectangle {
        id: item_1
        width: 552
        height: 62
        x: 15
        y: 16
        color: "#907DE2"
        Text {
            id: txt_1
            property int txtSize: 13
            width: 112
            height: 19
            x: 25
            y: 21
            text: qsTr("Create Profiles")
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#FFFFFF"
        }
        Image {
            id: item_2
            width: 240
            height: 44
            x: 297
            y: 18
            source: "qrc:/image/create_task_donw_oval.png"
        }
    }

    Text {
        id: txt_2
        property int txtSize: 9
        width: 52
        height: 15
        x: 40
        y: 101
        text: qsTr("Shipping")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#626477"
    }

    Text {
        id: txt_3
        property int txtSize: 9
        width: 36
        height: 15
        x: 117
        y: 101
        text: qsTr("Billing")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#626477"
    }

    Text {
        id: txt_4
        property int txtSize: 9
        width: 51
        height: 15
        x: 178
        y: 101
        text: qsTr("Payment")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#FFFFFF"
    }

    Rectangle {
        id: item_3
        width: 50.59
        height: 1
        x: 178
        y: 121.07
        color: "#907DE2"

    }

    Rectangle {
        id: item_4
        width: 502
        height: 30
        x: 40
        y: 169
        color: "#3F3C68"
        clip: true

        TextInput {
            id: txt_6
            property int txtSize: 9
            width: 470
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            text: qsTr("Enter Cardholder")
        }
    }

    Text {
        id: txt_5
        property int txtSize: 9
        width: 66
        height: 15
        x: 40
        y: 145
        text: qsTr("Cardholder")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#FFFFFF"
    }

    Text {
        id: txt_7
        property int txtSize: 9
        width: 78
        height: 15
        x: 40
        y: 215
        text: qsTr("Card Number")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#FFFFFF"
    }

    Rectangle {
        id: item_5
        width: 502
        height: 30
        x: 40
        y: 239
        color: "#3F3C68"
        clip: true

        TextInput {
            id: txt_8
            property int txtSize: 9
            width: 470
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            text: qsTr("Enter Card Number")
        }
    }

    Text {
        id: txt_9
        property int txtSize: 9
        width: 78
        height: 15
        x: 40
        y: 285
        text: qsTr("Expiry Month")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#FFFFFF"
    }

    ComboBox {
        id: control_0
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]
        property string currentTextInBox: qsTr("01")
        property int txtSize: 9
        width: 243
        height: 30
        x: 40
        y: 309
        model: listModelItem
        delegate: ItemDelegate {
            width: control_0.width
            contentItem: Text {
                text: modelData
                color: "#75719B" //text in list item
                font.pointSize: control_0.txtSize
                font.family: "Inter"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: "#3F3C68"
                implicitWidth: 120
                implicitHeight: 40
            }
            highlighted: control_0.highlightedIndex === index
        }
        indicator: Image {
            id: control_0_1
            width: 11
            height: 6
            x: 219
            y: 12
            source: "qrc:/image/TaskScreen/arrow-down-5.png"
        }

        contentItem: Text {
            id: contentText_0
            leftPadding: 12
            rightPadding: control_0.indicator.width + control_0.spacing
            font.pointSize: control_0.txtSize
            font.family: "Inter"
            text: control_0.currentTextInBox//control.displayText
            //            font: control_0.font
            color: control_0.pressed ? "#17a81a" : "#75719B" //curent text in combox displaying
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            color: "#3F3C68"
            implicitWidth: 120
            implicitHeight: 40
            border.color: control_0.pressed ? "#17a81a" : "#37345E"
            border.width: control_0.visualFocus ? 2 : 1
            radius: 2
        }

        popup: Popup {
            y: control_0.height - 1
            width: control_0.width
            implicitHeight: contentItem.implicitHeight
            padding: 1

            contentItem: ListView {
                clip: true
                implicitHeight: contentHeight
                model: control_0.popup.visible ? control_0.delegateModel : null
                currentIndex: control_0.highlightedIndex

                ScrollIndicator.vertical: ScrollIndicator { }
            }

            background: Rectangle {
                border.color: "#37345E"
                radius: 2
            }
        }

        onHighlightedIndexChanged: {
            if (firstOpen) {
                firstOpen = false
            } else {
                if (highlightedIndex >= 0) {
                    tempIndex = highlightedIndex
                }
                contentText_0.text = control_0.displayText
            }
            console.log(tempIndex)
        }
    }








    Text {
        id: txt_19
        property int txtSize: 9
        width: 66
        height: 15
        x: 299
        y: 285
        text: qsTr("Expiry Year")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#FFFFFF"
    }

    ComboBox {
        id: control_1
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["2021", "2022", "2023", "2024"]
        property string currentTextInBox: qsTr("2021")
        property int txtSize: 9
        width: 243
        height: 30
        x: 299
        y: 309
        model: listModelItem
        delegate: ItemDelegate {
            width: control_1.width
            contentItem: Text {
                text: modelData
                color: "#75719B" //text in list item
                font.pointSize: control_1.txtSize
                font.family: "Inter"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: "#3F3C68"
                implicitWidth: 120
                implicitHeight: 40
            }
            highlighted: control_1.highlightedIndex === index
        }
        indicator: Image {
            id: control_1_1
            width: 11
            height: 6
            x: 219
            y: 12
            source: "qrc:/image/TaskScreen/arrow-down-5.png"
        }

        contentItem: Text {
            id: contentText_1
            leftPadding: 12
            rightPadding: control_1.indicator.width + control_1.spacing
            font.pointSize: control_1.txtSize
            font.family: "Inter"
            text: control_1.currentTextInBox//control.displayText
            //            font: control_1.font
            color: control_1.pressed ? "#17a81a" : "#75719B" //curent text in combox displaying
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            color: "#3F3C68"
            implicitWidth: 120
            implicitHeight: 40
            border.color: control_1.pressed ? "#17a81a" : "#37345E"
            border.width: control_1.visualFocus ? 2 : 1
            radius: 2
        }

        popup: Popup {
            y: control_1.height - 1
            width: control_1.width
            implicitHeight: contentItem.implicitHeight
            padding: 1

            contentItem: ListView {
                clip: true
                implicitHeight: contentHeight
                model: control_1.popup.visible ? control_1.delegateModel : null
                currentIndex: control_1.highlightedIndex

                ScrollIndicator.vertical: ScrollIndicator { }
            }

            background: Rectangle {
                border.color: "#37345E"
                radius: 2
            }
        }

        onHighlightedIndexChanged: {
            if (firstOpen) {
                firstOpen = false
            } else {
                if (highlightedIndex >= 0) {
                    tempIndex = highlightedIndex
                }
                contentText_1.text = control_1.displayText
            }
            console.log(tempIndex)
        }
    }

    Text {
        id: txt_21
        property int txtSize: 9
        width: 27
        height: 15
        x: 40
        y: 362
        text: qsTr("CVV")
        font.family: "Inter"
        font.pointSize: txtSize
        color: "#FFFFFF"
    }

    Rectangle {
        id: item_11
        width: 243
        height: 30
        x: 40
        y: 386
        color: "#3F3C68"
        clip: true

        TextInput {
            id: txt_22
            property int txtSize: 9
            width: 215
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            text: qsTr("Enter CVV")
        }
    }

    Rectangle {
        id: item_13
        width: 118
        height: 30
        x: 299
        y: 386
        color: "transparent"
        border.color: "#3F3C68"
        radius: 5
        Text {
            id: txt_25
            property int txtSize: 9
            width: 41
            height: 15
            x: 39
            y: 8
            text: qsTr("Cancel")
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#FFFFFF"
        }
        MouseArea {
            anchors.fill: parent
            onPressed: {
                item_13.color = "#3F3C68"
            }
            onReleased: {
                item_13.color = "transparent"
            }
            onClicked: {
                console.log("Cancle button")
            }
        }
    }

    Rectangle {
        id: item_14
        width: 118
        height: 30
        x: 424
        y: 386
        color: "#FFFFFF"
        border.color: "#3F3C68"
        radius: 5
        Text {
            id: txt_26
            property int txtSize: 9
            width: 70
            height: 15
            x: 18
            y: 8
            text: qsTr("Create Profile")
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#2E2C50"
        }

        Image {
            id: item_15
            width: 4
            height: 7
            x: 103
            y: 12
            source: "qrc:/image/Profile/arrow-right.png"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Create task button")
            }
        }
    }
    Component.onCompleted: {
        listItemID.push(item_1)
        listItemID.push(item_2)
        listItemID.push(item_3)
        listItemID.push(item_4)
        //        listItemID.push(item_4_1)
        listItemID.push(item_5)
//        listItemID.push(item_6)
//        listItemID.push(item_7)
//        listItemID.push(item_8)
//        listItemID.push(item_9)
//        listItemID.push(item_10)
        listItemID.push(item_11)
//        listItemID.push(item_12)
        listItemID.push(item_13)
        listItemID.push(item_14)
        listItemID.push(item_15)

        listItemID.push(control_1_1)
        listItemID.push(control_0_1)

        listCBBID.push(control_1)
        listCBBID.push(control_0)

        listTXTID.push(txt_1)
        listTXTID.push(txt_2)
        listTXTID.push(txt_3)
        listTXTID.push(txt_4)
        listTXTID.push(txt_5)
        listTXTID.push(txt_6)
        listTXTID.push(txt_7)
        listTXTID.push(txt_8)
        listTXTID.push(txt_9)
        listTXTID.push(txt_19)
        listTXTID.push(txt_21)
        listTXTID.push(txt_22)
        listTXTID.push(txt_25)
        listTXTID.push(txt_26)
    }

    onWidthChanged: {
        var rate = width/currentWidth
        for (var i = 0; i < listItemID.length; i++) {
            listItemID[i].x = listItemID[i].x * rate
            listItemID[i].width = listItemID[i].width * rate
        }

        for (var j = 0; j < listCBBID.length; j++) {
            listCBBID[j].x = listCBBID[j].x * rate
            listCBBID[j].width = listCBBID[j].width * rate
        }


        for (var k = 0; k < listTXTID.length; k++) {
            listTXTID[k].x = listTXTID[k].x * rate
            listTXTID[k].width = listTXTID[k].width * rate
        }
    }

    onHeightChanged: {
        var rate = height/currentHeight
        var rateTextSize = height/453
        for (var i = 0; i < listItemID.length; i++) {
            listItemID[i].y = listItemID[i].y * rate
            listItemID[i].height = listItemID[i].height * rate
        }

        for (var j = 0; j < listCBBID.length; j++) {
            listCBBID[j].y = listCBBID[j].y * rate
            listCBBID[j].height = listCBBID[j].height * rate
            listCBBID[j].txtSize = 9 * rateTextSize
        }

        for (var k = 0; k < listTXTID.length; k++) {
            listTXTID[k].y = listTXTID[k].y * rate
            listTXTID[k].height = listTXTID[k].height * rate
            if (k!=0) {
                listTXTID[k].txtSize = 9 * rateTextSize
            }
        }

        txt_1.txtSize = 13 * rateTextSize
    }
}