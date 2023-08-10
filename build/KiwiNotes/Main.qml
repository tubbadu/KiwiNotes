import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as Kirigami
//import QtQuick.

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("KiwiNotes")
    ColumnLayout{
        anchors.fill: parent
        ToolBar {
            position: ToolBar.Header
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.left: parent.left

            RowLayout{
                anchors.fill: parent
                ToolButton{
                    icon.name: "arrow-left"
                }
                TextEdit {
                    text: "title"
                    Layout.fillWidth: true
                    color: "white"
                }
                ToolButton {
                    icon.name: "application-menu"
                }
            }
        }
        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Document {
                id: document
                anchors.margins: 5
                anchors.fill: parent
            }
        }
        ToolBar{
            position: ToolBar.Footer
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            RowLayout{
                anchors.fill: parent
                ToolButton{
                    onClicked: {
                        document.insertBlock()
                    }
                }
                ToolButton{

                }
                ToolButton{

                }
                ToolButton{

                }
                ToolButton{

                }
            }
        }
    }



}
