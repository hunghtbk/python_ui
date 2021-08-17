//import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick 2.6
import QtQuick.Window 2.2

Item {
    property int cbbWidth: 243
    property int cbbHight: 30
    property int cbbX: 40
    property int cbbY: 200
    property var listModelItem: []
    property string currentTextInBox: "hunght"
    property alias currentDisplayText: contentText.text

    ComboBox {
        id: control
        property int tempIndex: 0
        property bool firstOpen: true
        width: cbbWidth
        height: cbbHight
        x: cbbX
        y: cbbY
        model: listModelItem//["Size1", "Size2", "Size3", "Size4"]
        delegate: ItemDelegate {
            width: control.width
            contentItem: Text {
                text: modelData
                color: "#75719B" //text in list item
                font: control.font
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: "#3F3C68"
                implicitWidth: 120
                implicitHeight: 40
            }
            highlighted: control.highlightedIndex === index
        }

//        indicator: Canvas {
//            id: canvas
//            x: control.width - width - control.rightPadding
//            y: control.topPadding + (control.availableHeight - height) / 2
//            width: 12
//            height: 8
//            contextType: "2d"

//            Connections {
//                target: control
//                onPressedChanged: canvas.requestPaint()
//            }

//            onPaint: {
//                context.reset();
//                context.moveTo(0, 0);
//                context.lineTo(width, 0);
//                context.lineTo(width / 2, height);
//                context.closePath();
//                context.fillStyle = control.pressed ? "#17a81a" : "#75719B";
//                context.fill();
//            }
//        }
        indicator: Image {
            width: 11
            height: 6
            x: 219
            y: 12
            source: "../appIMG/6.Common/arrow-down-5.png"
        }

        contentItem: Text {
            id: contentText
            leftPadding: 12
            rightPadding: control.indicator.width + control.spacing

            text: currentTextInBox//control.displayText
            font: control.font
            color: control.pressed ? "#17a81a" : "#75719B" //curent text in combox displaying
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            color: "#3F3C68"
            implicitWidth: 120
            implicitHeight: 40
            border.color: control.pressed ? "#17a81a" : "#37345E"
            border.width: control.visualFocus ? 2 : 1
            radius: 2
        }

        popup: Popup {
            y: control.height - 1
            width: control.width
            implicitHeight: contentItem.implicitHeight
            padding: 1

            contentItem: ListView {
                clip: true
                implicitHeight: contentHeight
                model: control.popup.visible ? control.delegateModel : null
                currentIndex: control.highlightedIndex

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
                contentText.text = control.displayText
            }
            console.log(tempIndex)
        }
    }
}
