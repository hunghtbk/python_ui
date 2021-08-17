import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_profileBillingScreen
    visible: true
//    title: qsTr("Create Profile Billing Screen")
    //    flags:Qt.FramelessWindowHint
    width: 582
    height: 609
    property bool dashboardNormalTheme: true
    function changeThemePopup(abcd) {
        console.log("TaskScreen " + abcd)
        dashboardNormalTheme = abcd
    }
    function updateTheme() {
        var nColor = "#FFFFFF" //white
        var abnColor = "#000000" //black
        if (dashboardNormalTheme) {
            txt_6.color = nColor
            txt_8.color = nColor
            txt_10.color = nColor
            txt_12.color = nColor
            txt_14.color = nColor
            txt_16.color = nColor
            txt_18.color = nColor
            txt_22.color = nColor
            txt_24.color = nColor
        } else {
            txt_6.color = abnColor
            txt_8.color = abnColor
            txt_10.color = abnColor
            txt_12.color = abnColor
            txt_14.color = abnColor
            txt_16.color = abnColor
            txt_18.color = abnColor
            txt_22.color = abnColor
            txt_24.color = abnColor
        }
    }

    onDashboardNormalThemeChanged: {
        updateTheme()
    }

    color: dashboardNormalTheme?"#37345E":"#FFFFFF"
    radius: 5
    signal signalFromCreateScreen(string msg)
    signal profilesPopupSignalMessage(string msg)
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
        radius: 5
        Text {
            id: txt_1
            property int txtSize: 13
            width: 112
            height: 19
            x: 25
            y: 21
            text: qsTr("Edit Profiles")
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
            source: "../appIMG/6.Common/create_task_donw_oval.png"
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
        color: dashboardNormalTheme?"#626477":"#BDBDC7"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("call shipping")
                m_profileBillingScreen.profilesPopupSignalMessage("profile_edit_shipping_screen_shipping")
            }
        }
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
        color: dashboardNormalTheme?"#FFFFFF":"#000000"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("call billing")
                m_profileBillingScreen.signalFromCreateScreen("profile_shipping_screen_billing")
            }
        }
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
        color: dashboardNormalTheme?"#626477":"#BDBDC7"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("call payment")
                m_profileBillingScreen.profilesPopupSignalMessage("profile_edit_shipping_screen_payment")
            }
        }
    }

    Rectangle {
        id: item_3
        width: 35
        height: 1
        x: 117
        y: 121.07
        color: "#907DE2"
        radius: 5
    }

    Rectangle {
        id: item_4
        property bool activeState: true
        width: 34
        height: 18
        x: 40
        y: 146
        radius: 10
        color: activeState ? "#907DE2" : (dashboardNormalTheme?"#3F3C68":"#F7F8FC")

        Rectangle {
            id: item_4_1
            property int activeX: 17
            property int inactiveX: 3
            width: 14
            height: 14
            x: item_4.activeState ? activeX : inactiveX
            y: 2
            color: "#FFFFFF"
            radius: width * 0.5
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (item_4.activeState) {
                    item_4.activeState = false
                } else {
                    item_4.activeState = true
                }
            }
        }

        onActiveStateChanged: {
            item_4_1.x = item_4.activeState ? item_4_1.activeX : item_4_1.inactiveX
        }
    }

    Text {
        id: txt_6
        property int txtSize: 9
        width: 103
        height: 15
        x: 86
        y: 147
        font.family: "Inter"
        font.pointSize: txtSize
        color: item_4.activeState ? (dashboardNormalTheme?"#FFFFFF":"#000000") : (dashboardNormalTheme?"#626477":"#BDBDC7")
        text: qsTr("Same as shipping")
    }

    Text {
        id: txt_7
        property int txtSize: 9
        width: 63
        height: 15
        x: 40
        y: 188
        text: qsTr("First Name")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_5
        width: 243
        height: 30
        x: 40
        y: 212
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        clip: true
        radius: 5
        TextInput {
            id: txt_8
            property int txtSize: 9
            width: 215
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("First Name")
            property string placeholderText: "First Name"

            Text {
                text: txt_8.placeholderText
                color: "#6a687d"
                visible: !txt_8.text
                font: txt_8.font
            }
        }
    }

    Text {
        id: txt_9
        property int txtSize: 9
        width: 62
        height: 15
        x: 299
        y: 188
        text: qsTr("Last Name")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_6
        width: 243
        height: 30
        x: 299
        y: 212
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        clip: true
        radius: 5
        TextInput {
            id: txt_10
            property int txtSize: 9
            width: 215
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("Last Name")
            property string placeholderText: "Last Name"

            Text {
                text: txt_10.placeholderText
                color: "#6a687d"
                visible: !txt_10.text
                font: txt_10.font
            }
        }
    }

    Text {
        id: txt_11
        property int txtSize: 9
        width: 32
        height: 15
        x: 40
        y: 258
        text: qsTr("Email")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_7
        width: 243
        height: 30
        x: 40
        y: 282
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        clip: true
        radius: 5
        TextInput {
            id: txt_12
            property int txtSize: 9
            width: 215
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("Enter Email")

            property string placeholderText: "Enter Email"

            Text {
                text: txt_12.placeholderText
                color: "#6a687d"
                visible: !txt_12.text
                font: txt_12.font
            }
        }
    }

    Text {
        id: txt_13
        property int txtSize: 9
        width: 39
        height: 15
        x: 299
        y: 258
        text: qsTr("Phone")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_8
        width: 243
        height: 30
        x: 299
        y: 282
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        clip: true
        radius: 5
        TextInput {
            id: txt_14
            property int txtSize: 9
            width: 215
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("Enter Phone")
            property string placeholderText: "Enter Phone"

            Text {
                text: txt_14.placeholderText
                color: "#6a687d"
                visible: !txt_14.text
                font: txt_14.font
            }
        }
    }

    Text {
        id: txt_15
        property int txtSize: 9
        width: 58
        height: 15
        x: 40
        y: 328
        text: qsTr("Address 1")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_9
        width: 343
        height: 30
        x: 40
        y: 352
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        clip: true
        radius: 5
        TextInput {
            id: txt_16
            property int txtSize: 9
            width: 315
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("Enter Address 1")
            property string placeholderText: "Enter Address 1"

            Text {
                text: txt_16.placeholderText
                color: "#6a687d"
                visible: !txt_16.text
                font: txt_16.font
            }
        }
    }

    Text {
        id: txt_17
        property int txtSize: 9
        width: 59
        height: 15
        x: 399
        y: 328
        text: qsTr("Address 2")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_10
        width: 143
        height: 30
        x: 399
        y: 352
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        clip: true
        radius: 5
        TextInput {
            id: txt_18
            property int txtSize: 9
            width: 115
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("Apt.")
            property string placeholderText: "Apt."

            Text {
                text: txt_18.placeholderText
                color: "#6a687d"
                visible: !txt_18.text
                font: txt_18.font
            }
        }
    }

    Text {
        id: txt_19
        property int txtSize: 9
        width: 48
        height: 15
        x: 40
        y: 398
        text: qsTr("Country")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    ComboBox {
        id: control_1
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["Country1", "Country2", "Country3", "Country4"]
        property string currentTextInBox: qsTr("Select Country")
        property int txtSize: 9
        width: 243
        height: 30
        x: 40
        y: 422
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
                color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
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
            source: dashboardNormalTheme?"../appIMG/6.Common/arrow-down-5.png":"../appIMG/7.LightMode/arrow-down-5.png"
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
            color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
            implicitWidth: 120
            implicitHeight: 40
            border.color: control_1.pressed ? "#17a81a" : dashboardNormalTheme?"#37345E":"#F7F8FC"
            border.width: control_1.visualFocus ? 2 : 1
            radius: 5
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
                border.color: dashboardNormalTheme?"#37345E":"#F7F8FC"
                radius: 5
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
        id: txt_20
        property int txtSize: 9
        width: 31
        height: 15
        x: 299
        y: 398
        text: qsTr("State")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    ComboBox {
        id: control_2
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["State1", "State2", "State3", "State4"]
        property string currentTextInBox: qsTr("Select State")
        property int txtSize: 9
        width: 243
        height: 30
        x: 299
        y: 422
        model: listModelItem
        delegate: ItemDelegate {
            width: control_2.width
            contentItem: Text {
                text: modelData
                color: "#75719B" //text in list item
                font.pointSize: control_2.txtSize
                font.family: "Inter"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
                implicitWidth: 120
                implicitHeight: 40
            }
            highlighted: control_2.highlightedIndex === index
        }
        indicator: Image {
            id: control_2_1
            width: 11
            height: 6
            x: 219
            y: 12
            source: dashboardNormalTheme?"../appIMG/6.Common/arrow-down-5.png":"../appIMG/7.LightMode/arrow-down-5.png"
        }

        contentItem: Text {
            id: contentText_2
            leftPadding: 12
            rightPadding: control_2.indicator.width + control_2.spacing

            text: control_2.currentTextInBox//control.displayText
            font.pointSize: control_2.txtSize
            font.family: "Inter"
            color: control_2.pressed ? "#17a81a" : "#75719B" //curent text in combox displaying
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
            implicitWidth: 120
            implicitHeight: 40
            border.color: control_2.pressed ? "#17a81a" : dashboardNormalTheme?"#37345E":"#F7F8FC"
            border.width: control_2.visualFocus ? 2 : 1
            radius: 5
        }

        popup: Popup {
            y: control_2.height - 1
            width: control_2.width
            implicitHeight: contentItem.implicitHeight
            padding: 1

            contentItem: ListView {
                clip: true
                implicitHeight: contentHeight
                model: control_2.popup.visible ? control_2.delegateModel : null
                currentIndex: control_2.highlightedIndex

                ScrollIndicator.vertical: ScrollIndicator { }
            }

            background: Rectangle {
                border.color: dashboardNormalTheme?"#37345E":"#F7F8FC"
                radius: 5
            }
        }

        onHighlightedIndexChanged: {
            if (firstOpen) {
                firstOpen = false
            } else {
                if (highlightedIndex >= 0) {
                    tempIndex = highlightedIndex
                }
                contentText_2.text = control_2.displayText
            }
            console.log(tempIndex)
        }
    }

    Text {
        id: txt_21
        property int txtSize: 9
        width: 24
        height: 15
        x: 40
        y: 468
        text: qsTr("City")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_11
        width: 243
        height: 30
        x: 40
        y: 492
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        clip: true
        radius: 5
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
            selectByMouse: true
//            text: qsTr("Enter City")
            property string placeholderText: "Enter City"

            Text {
                text: txt_22.placeholderText
                color: "#6a687d"
                visible: !txt_22.text
                font: txt_22.font
            }
        }
    }

    Text {
        id: txt_23
        property int txtSize: 9
        width: 48
        height: 15
        x: 299
        y: 468
        text: qsTr("Zipcode")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_12
        width: 243
        height: 30
        x: 299
        y: 492
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        clip: true
        radius: 5
        TextInput {
            id: txt_24
            property int txtSize: 9
            width: 215
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("Enter Zipcode")
            property string placeholderText: "Enter Zipcode"

            Text {
                text: txt_24.placeholderText
                color: "#6a687d"
                visible: !txt_24.text
                font: txt_24.font
            }
        }
    }


    Rectangle {
        id: item_13
        width: 118
        height: 30
        x: 299
        y: 543
        color: "transparent"
        border.color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
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
            color: dashboardNormalTheme?"#FFFFFF":"#000000"
        }
        MouseArea {
            anchors.fill: parent
            onPressed: {
                item_13.color = dashboardNormalTheme?"#3F3C68":"#F7F8FC"
            }
            onReleased: {
                item_13.color = "transparent"
            }
            onClicked: {
                console.log("Profile Billing Screen")
                m_profileBillingScreen.profilesPopupSignalMessage("evG_Cancel")
            }
        }
    }

    Rectangle {
        id: item_14
        width: 118
        height: 30
        x: 424
        y: 543
        color: dashboardNormalTheme?"#FFFFFF":"#F7F8FC"
        border.color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
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
            source: "../appIMG/6.Common/arrow-right.png"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Create task button")
                m_profileBillingScreen.profilesPopupSignalMessage("profile_edit_billing_screen_create")
            }
        }
    }
    Component.onCompleted: {
        updateTheme()
        listItemID.push(item_1)
        listItemID.push(item_2)
        listItemID.push(item_3)
        listItemID.push(item_4)
//        listItemID.push(item_4_1)
        listItemID.push(item_5)
        listItemID.push(item_6)
        listItemID.push(item_7)
        listItemID.push(item_8)
        listItemID.push(item_9)
        listItemID.push(item_10)
        listItemID.push(item_11)
        listItemID.push(item_12)
        listItemID.push(item_13)
        listItemID.push(item_14)
        listItemID.push(item_15)

        listItemID.push(control_1_1)
        listItemID.push(control_2_1)

        listCBBID.push(control_1)
        listCBBID.push(control_2)

        listTXTID.push(txt_1)
        listTXTID.push(txt_2)
        listTXTID.push(txt_3)
        listTXTID.push(txt_4)
//        listTXTID.push(txt_5)
        listTXTID.push(txt_6)
        listTXTID.push(txt_7)
        listTXTID.push(txt_8)
        listTXTID.push(txt_9)
        listTXTID.push(txt_10)
        listTXTID.push(txt_11)
        listTXTID.push(txt_12)
        listTXTID.push(txt_13)
        listTXTID.push(txt_14)
        listTXTID.push(txt_15)
        listTXTID.push(txt_16)
        listTXTID.push(txt_17)
        listTXTID.push(txt_18)
        listTXTID.push(txt_19)
        listTXTID.push(txt_20)
        listTXTID.push(txt_21)
        listTXTID.push(txt_22)
        listTXTID.push(txt_23)
        listTXTID.push(txt_24)
        listTXTID.push(txt_25)
        listTXTID.push(txt_26)
    }

    onWidthChanged: {
        var rate = width/currentWidth
        for (var i = 0; i < listItemID.length; i++) {
            listItemID[i].x = listItemID[i].x * rate
            listItemID[i].width = listItemID[i].width * rate
        }
        item_4_1.x = item_4_1.x * rate
        item_4_1.width = item_4_1.width * rate
        item_4_1.activeX = item_4_1.activeX * rate
        item_4_1.inactiveX = item_4_1.inactiveX * rate

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
        var rateTextSize = height/609
        for (var i = 0; i < listItemID.length; i++) {
            listItemID[i].y = listItemID[i].y * rate
            listItemID[i].height = listItemID[i].height * rate
        }

        item_4_1.y = item_4_1.y * rate
        item_4_1.height = item_4_1.height * rate

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
