import QtQuick

Rectangle {
    color: "red"
    property alias text: textedit.text
    TextEdit {
        id: textedit
        text: "notext"
    }
}
