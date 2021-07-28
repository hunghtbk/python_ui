import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.0

Window {
    id: m_createTask
    visible: true
    width: 1200
    height: 730
    title: qsTr("Create Task Screen")
    color: "transparent"
//    flags:Qt.FramelessWindowHint

    Rectangle {
        anchors.fill: parent
        color: "#7a7c80"
        opacity: 0.5
    }

    Rectangle {
        width: 582
        height: 461
        x: 309
        y: 135
        color: "#37345E"
        opacity: 100

        Rectangle {
            width: 552
            height: 62
            x: 15
            y: 16
            color: "#907DE2"
            Text {
                id: createTaskTitle
                width: 99
                height: 19
                x: 25
                y: 21
                text: qsTr("Create Tasks")
                font.family: "Inter"
                font.pointSize: 13
                color: "#FFFFFF"
            }
            Image {
                id: donwoval
                width: 240
                height: 44
                x: 297
                y: 18
                source: "qrc:/image/create_task_donw_oval.png"
            }
        }

        Text {
            id: monitorInputTitle
            width: 79
            height: 15
            x: 40
            y: 106
            text: qsTr("Monitor Input")
            font.family: "Inter"
            font.pointSize: 9
            color: "#FFFFFF"
        }

        Rectangle {
            width: 502
            height: 30
            x: 40
            y: 130
            color: "#3F3C68"

            TextInput {
                width: 470
                height: 15
                x: 12
                y: 8
                font.family: "Inter"
                font.pointSize: 9
                color: "#75719B"
                text: qsTr("SKU/Variant/Keyword")
            }
        }

        ComboBox {
            id: combobox
            editable: false
            width: 243
            height: 30
            background: Rectangle {
                color: "#3F3C68"
            }
            model: ["First", "Second", "Third"]
            delegate: ItemDelegate {
                    width: combobox.width
                    contentItem: Text {
                        text: modelData
                        color: "#21be2b"
                        font: combobox.font
                        elide: Text.ElideRight
                        verticalAlignment: Text.AlignVCenter
                    }
                    highlighted: combobox.highlightedIndex === index
                }
            onAccepted: {
                if (find(editText) === -1)
                    model.append({text: editText})
            }
        }
    }

}
