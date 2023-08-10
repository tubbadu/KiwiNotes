import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

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
            Layout.fillWidth: true

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
            color: "#fcfcfc"
            Document {
                id: document
                anchors.margins: 5
                width: 50000
            }
        }
        ToolBar{
            position: ToolBar.Footer
            Layout.fillWidth: true
            RowLayout{
                anchors.fill: parent
                ToolButton{
                    onClicked: {
                        document.insertBlock()
                    }
                    text: "newblock"
                }
                ToolButton{
                    text: "H1"
                    onClicked: {
                        if(document.currentItem.headerNum === 1){
                            document.currentItem.headerNum = 0
                        } else {
                            document.currentItem.headerNum = 1
                        }
                    }
                }
                ToolButton{
                    text: "H2"
                    onClicked: {
                        if(document.currentItem.headerNum === 2){
                            document.currentItem.headerNum = 0
                        } else {
                            document.currentItem.headerNum = 2
                        }
                    }
                }
                ToolButton{

                }
                ToolButton{

                }
            }
        }
    }



}
