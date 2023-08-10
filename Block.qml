import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

/*
plain text
checkbox
dotlist
numlist
quote
codeblock (todo)
header

*/

Rectangle {
    id: block
    readonly property int tabsize: 5 // the width (in px) of a single indent
    enum Type {
        PlainText,
        CheckBox,
        DotList,
        NumList,
        Quote,
        CodeBlock
    }

    property int type: Block.Type.PlainText
    property int indent: 0 // the number of indent
    property color backgroundColor: "transparent"
    property color activeBackgroundColor: "cyan"
    property alias text: textedit.text // TODO: deprecate (works bad with richtext)
    property alias textColor: textedit.color
    property int headerNum: 0

    property bool isPlainText: type === Block.Type.PlainText
    property bool isCheckBox: type === Block.Type.CheckBox
    property bool isDotList: type === Block.Type.DotList
    property bool isNumList: type === Block.Type.NumList
    property bool isQuote: type === Block.Type.Quote
    property bool isCodeBlock: type === Block.Type.CodeBlock

    color: textedit.activeFocus? activeBackgroundColor : backgroundColor

    height: textedit.height
    width: parent.width
    RowLayout {
        anchors.fill: parent
        anchors.rightMargin: 1
        anchors.leftMargin: tabsize*indent + 1

        TextEdit {
            id: textedit
            text: "notext"
            Layout.fillWidth: true
            textFormat: TextEdit.RichText
            onFocusChanged: {
                if(focus){
                    document.currentIndex = index
                }
            }
        }
    }

    onHeaderNumChanged: {
        let txt = textedit.getText(0, textedit.length)
        if(headerNum != 0){
            text = `<h${headerNum}>${txt}</h${headerNum}>`
        } else {
            text = txt
        }
    }
}
