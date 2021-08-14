import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: m_editTask
    visible: true
//    title: qsTr("Edit Task Screen")
    //    flags:Qt.FramelessWindowHint
    width: 582
    height: 461

    property bool dashboardNormalTheme: true
    function changeThemePopup(abcd) {
        console.log("TaskScreen " + abcd)
        dashboardNormalTheme = abcd
    }

    function updateTheme() {
        var nColor = "#FFFFFF" //white
        var abnColor = "#000000" //black
        if (dashboardNormalTheme) {
            txt_3.color = nColor
        } else {
            txt_3.color = abnColor
        }
    }

    onDashboardNormalThemeChanged: {
        updateTheme()
    }
    radius: 5
    color: dashboardNormalTheme?"#37345E":"#FFFFFF"
    signal taskLoaderItemEvent(string msg)

    property int currentWidth: m_editTask.width
    property int currentHeight: m_editTask.height

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
            width: 99
            height: 19
            x: 25
            y: 21
            text: qsTr("Edit Tasks")
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
            source: "../image/create_task_donw_oval.png"
        }
    }

    Text {
        id: txt_2
        property int txtSize: 9
        width: 79
        height: 15
        x: 40
        y: 106
        text: qsTr("Monitor Input")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    Rectangle {
        id: item_3
        width: 502
        height: 30
        x: 40
        y: 130
        color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        radius: 5
        clip: true
        TextInput {
            id: txt_3
            property int txtSize: 9
            width: 470
            height: 15
            x: 12
            y: 8
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#75719B"
            selectByMouse: true
//            text: qsTr("SKU/Variant/Keyword")
            property string placeholderText: "SKU/Variant/Keyword"

            Text {
                text: txt_3.placeholderText
                color: "#6a687d"
                visible: !txt_3.text
                font: txt_3.font
            }
        }
    }

    Text {
        id: txt_4
        property int txtSize: 9
        width: 25
        height: 15
        x: 40
        y: 176
        text: qsTr("Size")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    ComboBox {
        id: control_1
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["Size1", "Size2", "Size3", "Size4"]
        property string currentTextInBox: qsTr("Slect Size")
        property int txtSize: 9
        width: 243
        height: 30
        x: 40
        y: 200
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
            source: dashboardNormalTheme?"../image/TaskScreen/arrow-down-5.png":"../appIMG/7.LightMode/arrow-down-5.png"
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
            border.color: control_1.pressed ? "#17a81a" : dashboardNormalTheme?"#37345E":"#FFFFFF"
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
                border.color: dashboardNormalTheme?"#37345E":"#FFFFFF"
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
        id: txt_5
        property int txtSize: 9
        width: 33
        height: 15
        x: 40
        y: 246
        text: qsTr("Proxy")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    ComboBox {
        id: control_2
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["Proxy1", "Proxy2", "Proxy3", "Proxy4"]
        property string currentTextInBox: qsTr("Select Proxy")
        property int txtSize: 9
        width: 243
        height: 30
        x: 40
        y: 270
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
            source: dashboardNormalTheme?"../image/TaskScreen/arrow-down-5.png":"../appIMG/7.LightMode/arrow-down-5.png"
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
            border.color: control_2.pressed ? "#17a81a" : dashboardNormalTheme?"#37345E":"#FFFFFF"
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
                border.color: dashboardNormalTheme?"#37345E":"#FFFFFF"
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
                contentText_2.text = control_6.displayText
            }
            console.log(tempIndex)
        }
    }

    Text {
        id: txt_6
        property int txtSize: 9
        width: 79
        height: 15
        x: 40
        y: 316
        text: qsTr("Item Quantity")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    ComboBox {
        id: control_3
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["1", "2", "3", "4"]
        property string currentTextInBox: "0"
        property int txtSize: 9
        width: 243
        height: 30
        x: 40
        y: 340
        model: listModelItem
        delegate: ItemDelegate {
            width: control_3.width
            contentItem: Text {
                text: modelData
                color: "#75719B" //text in list item
                font.pointSize: control_3.txtSize
                font.family: "Inter"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
                implicitWidth: 120
                implicitHeight: 40
            }
            highlighted: control_3.highlightedIndex === index
        }
        indicator: Image {
            id: control_3_1
            width: 11
            height: 6
            x: 219
            y: 12
            source: dashboardNormalTheme?"../image/TaskScreen/arrow-down-5.png":"../appIMG/7.LightMode/arrow-down-5.png"
        }

        contentItem: Text {
            id: contentText_3
            leftPadding: 12
            rightPadding: control_3.indicator.width + control_3.spacing

            text: control_3.currentTextInBox//control_3.displayText
            font.pointSize: control_3.txtSize
            font.family: "Inter"
            color: control_3.pressed ? "#17a81a" : "#75719B" //curent text in combox displaying
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
            implicitWidth: 120
            implicitHeight: 40
            border.color: control_3.pressed ? "#17a81a" : dashboardNormalTheme?"#37345E":"#FFFFFF"
            border.width: control_3.visualFocus ? 2 : 1
            radius: 5
        }

        popup: Popup {
            y: control_3.height - 1
            width: control_3.width
            implicitHeight: contentItem.implicitHeight
            padding: 1

            contentItem: ListView {
                clip: true
                implicitHeight: contentHeight
                model: control_3.popup.visible ? control_3.delegateModel : null
                currentIndex: control_3.highlightedIndex

                ScrollIndicator.vertical: ScrollIndicator { }
            }

            background: Rectangle {
                border.color: dashboardNormalTheme?"#37345E":"#FFFFFF"
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
                contentText_3.text = control_3.displayText
            }
            console.log(tempIndex)
        }
    }

    Text {
        id: txt_7
        property int txtSize: 9
        width: 38
        height: 15
        x: 299
        y: 176
        text: qsTr("Profile")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    ComboBox {
        id: control_4
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["Profile1", "Profile2", "Profile3", "Profile4"]
        property string currentTextInBox: qsTr("Select Profile")
        property int txtSize: 9
        width: 243
        height: 30
        x: 299
        y: 200
        model: listModelItem//["Size1", "Size2", "Size3", "Size4"]
        delegate: ItemDelegate {
            width: control_4.width
            contentItem: Text {
                text: modelData
                color: "#75719B" //text in list item
                font.pointSize: control_4.txtSize
                font.family: "Inter"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
                implicitWidth: 120
                implicitHeight: 40
            }
            highlighted: control_4.highlightedIndex === index
        }
        indicator: Image {
            id: control_4_1
            width: 11
            height: 6
            x: 219
            y: 12
            source: dashboardNormalTheme?"../image/TaskScreen/arrow-down-5.png":"../appIMG/7.LightMode/arrow-down-5.png"
        }

        contentItem: Text {
            id: contentText_4
            leftPadding: 12
            rightPadding: control_4.indicator.width + control_4.spacing

            text: control_4.currentTextInBox//control_4.displayText
            font.pointSize: control_4.txtSize
            font.family: "Inter"
            color: control_4.pressed ? "#17a81a" : "#75719B" //curent text in combox displaying
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
            implicitWidth: 120
            implicitHeight: 40
            border.color: control_4.pressed ? "#17a81a" : dashboardNormalTheme?"#37345E":"#FFFFFF"
            border.width: control_4.visualFocus ? 2 : 1
            radius: 5
        }

        popup: Popup {
            y: control_4.height - 1
            width: control_4.width
            implicitHeight: contentItem.implicitHeight
            padding: 1

            contentItem: ListView {
                clip: true
                implicitHeight: contentHeight
                model: control_4.popup.visible ? control_4.delegateModel : null
                currentIndex: control_4.highlightedIndex

                ScrollIndicator.vertical: ScrollIndicator { }
            }

            background: Rectangle {
                border.color: dashboardNormalTheme?"#37345E":"#FFFFFF"
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
                contentText_4.text = control_4.displayText
            }
            console.log(tempIndex)
        }
    }

    Text {
        id: txt_8
        property int txtSize: 9
        width: 33
        height: 15
        x: 299
        y: 246
        text: qsTr("Mode")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    ComboBox {
        id: control_5
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["Mode1", "Mode2", "Mode3", "Mode4"]
        property string currentTextInBox: qsTr("Select Mode")
        property int txtSize: 9
        width: 243
        height: 30
        x: 299
        y: 270
        model: listModelItem
        delegate: ItemDelegate {
            width: control_5.width
            contentItem: Text {
                text: modelData
                color: "#75719B" //text in list item
                font.pointSize: control_5.txtSize
                font.family: "Inter"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
                implicitWidth: 120
                implicitHeight: 40
            }
            highlighted: control_5.highlightedIndex === index
        }
        indicator: Image {
            id: control_5_1
            width: 11
            height: 6
            x: 219
            y: 12
            source: dashboardNormalTheme?"../image/TaskScreen/arrow-down-5.png":"../appIMG/7.LightMode/arrow-down-5.png"
        }

        contentItem: Text {
            id: contentText_5
            leftPadding: 12
            rightPadding: control_5.indicator.width + control_5.spacing

            text: control_5.currentTextInBox//control_5.displayText
            font.pointSize: control_5.txtSize
            font.family: "Inter"
            color: control_5.pressed ? "#17a81a" : "#75719B" //curent text in combox displaying
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
            implicitWidth: 120
            implicitHeight: 40
            border.color: control_5.pressed ? "#17a81a" : dashboardNormalTheme?"#37345E":"#FFFFFF"
            border.width: control_5.visualFocus ? 2 : 1
            radius: 5
        }

        popup: Popup {
            y: control_5.height - 1
            width: control_5.width
            implicitHeight: contentItem.implicitHeight
            padding: 1

            contentItem: ListView {
                clip: true
                implicitHeight: contentHeight
                model: control_5.popup.visible ? control_5.delegateModel : null
                currentIndex: control_5.highlightedIndex

                ScrollIndicator.vertical: ScrollIndicator { }
            }

            background: Rectangle {
                border.color: dashboardNormalTheme?"#37345E":"#FFFFFF"
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
                contentText_5.text = control_5.displayText
            }
            console.log(tempIndex)
        }
    }

    Text {
        id: txt_9
        property int txtSize: 9
        width: 81
        height: 15
        x: 299
        y: 316
        text: qsTr("Task Quantity")
        font.family: "Inter"
        font.pointSize: txtSize
        color: dashboardNormalTheme?"#FFFFFF":"#000000"
    }

    ComboBox {
        id: control_6
        property int tempIndex: 0
        property bool firstOpen: true
        property var listModelItem: ["1", "2", "3", "4"]
        property string currentTextInBox: "0"
        property int txtSize: 9
        width: 243
        height: 30
        x: 299
        y: 340
        model: listModelItem
        delegate: ItemDelegate {
            width: control_6.width
            contentItem: Text {
                text: modelData
                color: "#75719B" //text in list item
                font.pointSize: control_6.txtSize
                font.family: "Inter"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
                implicitWidth: 120
                implicitHeight: 40
            }
            highlighted: control_6.highlightedIndex === index
        }
        indicator: Image {
            id: control_6_1
            width: 11
            height: 6
            x: 219
            y: 12
            source: dashboardNormalTheme?"../image/TaskScreen/arrow-down-5.png":"../appIMG/7.LightMode/arrow-down-5.png"
        }

        contentItem: Text {
            id: contentText
            leftPadding: 12
            rightPadding: control_6.indicator.width + control_6.spacing

            text: control_6.currentTextInBox//control.displayText
            font.pointSize: control_6.txtSize
            font.family: "Inter"
            color: control_6.pressed ? "#17a81a" : "#75719B" //curent text in combox displaying
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
            implicitWidth: 120
            implicitHeight: 40
            border.color: control_6.pressed ? "#17a81a" : dashboardNormalTheme?"#37345E":"#FFFFFF"
            border.width: control_6.visualFocus ? 2 : 1
            radius: 5
        }

        popup: Popup {
            y: control_6.height - 1
            width: control_6.width
            implicitHeight: contentItem.implicitHeight
            padding: 1

            contentItem: ListView {
                clip: true
                implicitHeight: contentHeight
                model: control_6.popup.visible ? control_6.delegateModel : null
                currentIndex: control_6.highlightedIndex

                ScrollIndicator.vertical: ScrollIndicator { }
            }

            background: Rectangle {
                border.color: dashboardNormalTheme?"#37345E":"#FFFFFF"
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
                contentText.text = control_6.displayText
            }
            console.log(tempIndex)
        }
    }

    Rectangle {
        id: item_4
        width: 118
        height: 30
        x: 299
        y: 395
        color: "transparent"
        border.color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        radius: 5
        Text {
            id: txt_10
            property int txtSize: 9
            width: 41
            height: 15
            x: 39
            y: 7
            text: qsTr("Cancel")
            font.family: "Inter"
            font.pointSize: txtSize
            color: dashboardNormalTheme?"#FFFFFF":"#000000"
        }
        MouseArea {
            anchors.fill: parent
            onPressed: {
                item_4.color = dashboardNormalTheme?"#3F3C68":"#F7F8FC"
            }
            onReleased: {
                item_4.color = "transparent"
            }
            onClicked: {
                console.log("Edit Task Screen")
                m_editTask.taskLoaderItemEvent("evG_Cancel")
            }
        }
    }

    Rectangle {
        id: item_5
        width: 118
        height: 30
        x: 424
        y: 395
        color: dashboardNormalTheme?"#FFFFFF":"#F7F8FC"
        border.color: dashboardNormalTheme?"#3F3C68":"#F7F8FC"
        radius: 5
        Text {
            id: txt_11
            property int txtSize: 9
            width: 70
            height: 15
            x: 32
            y: 7
            text: qsTr("Edit Task")
            font.family: "Inter"
            font.pointSize: txtSize
            color: "#2E2C50"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                m_editTask.taskLoaderItemEvent("edit_task_edit")
            }
        }
    }
    Component.onCompleted: {
        updateTheme();
        listItemID.push(item_1)
        listItemID.push(item_2)
        listItemID.push(item_3)
        listItemID.push(item_4)
        listItemID.push(item_5)
        listItemID.push(control_1_1)
        listItemID.push(control_2_1)
        listItemID.push(control_3_1)
        listItemID.push(control_4_1)
        listItemID.push(control_5_1)
        listItemID.push(control_6_1)

        listCBBID.push(control_1)
        listCBBID.push(control_2)
        listCBBID.push(control_3)
        listCBBID.push(control_4)
        listCBBID.push(control_5)
        listCBBID.push(control_6)

        listTXTID.push(txt_1)
        listTXTID.push(txt_2)
        listTXTID.push(txt_3)
        listTXTID.push(txt_4)
        listTXTID.push(txt_5)
        listTXTID.push(txt_6)
        listTXTID.push(txt_7)
        listTXTID.push(txt_8)
        listTXTID.push(txt_9)
        listTXTID.push(txt_10)
        listTXTID.push(txt_11)
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
        var rateTextSize = height/461
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
