import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

ListView  {
    id: listview
    model: blockModel
    delegate: blockDelegate
    highlight: highlight
    highlightFollowsCurrentItem: true
    highlightMoveDuration: 0
    highlightResizeDuration: 0

    function insertBlock(){
        blockModel.append({set_text: "newtext"})
    }

    ListModel {
        id: blockModel
    }

    Component {
        id: blockDelegate
        Block{
            id: blk
            text: set_text
            /*text: set_text
            type: set_type
            tabNum: set_tabnum
            headerNum: set_headernum
            syntaxHighlightning: set_syntaxhighlightning
            //loadingFinished: isLastLoaded
            //width: parent? parent.width : 0
            //height: parent? parent.height : 0*/
        }
    }

    Component {
        id: highlight
        Rectangle {
            width: 180
            height: 40
            color: window.active? Kirigami.Theme.alternateBackgroundColor : "transparent";
            //border.color: window.active? Kirigami.Theme.hoverColor : "transparent";
            //border.width: 1
        }
    }
}
