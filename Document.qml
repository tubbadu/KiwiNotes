import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

import "functions.js" as F

/*ListView  {
    id: listview
    model: blockModel
    delegate: blockDelegate
    //highlight: highlight
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
        }
    }

    Component {
        id: highlight
        Rectangle {
            width: 180
            height: 40
            color: window.active? "cyan" : "transparent";
            //border.width: 1
        }
    }
}
*/

ScrollView{
    anchors.fill: parent

    TextArea{
        id: textarea
        width: parent.width
        readonly property string userText: getText(0, length)
        textFormat: TextEdit.RichText
        text: `
# Documento di Esempio

## Elenchi
- Elemento 1 dell'elenco puntato
- Elemento 2 dell'elenco puntato
  - Sottoelemento 2.1
  - Sottoelemento 2.2
    1. Elemento numerato 1
    2. Elemento numerato 2

## Caselle di Controllo
- [x] Attività completata
- [ ] Attività da fare
- [x] Un'altra attività completata

> Questa è una citazione dal testo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

## Altro Contenuto
Ecco del testo normale e *cursivo*, **grassetto** e ***grassetto corsivo***.`.replace(/\n/g, "<br>");
        color: "black"

        property var checkboxItemList: new Set();

        readonly property var d: {
            "CheckBoxOn": {
                "componentFilename": "CheckBoxItem.qml",
                "regex": /^(?:\t| )*[-*+] \[x\] /gm,
            },
            "CheckBoxOff": {
                "componentFilename": "CheckBoxItem.qml",
                "regex": /^(?:\t| )*[-*+] \[ \] /gm,
            }
        }

        readonly property var regex: {
            "CheckBoxOn": /^(?:\t| )*[-*+] \[x\] /gm,
            "CheckBoxOff": /^(?:\t| )*[-*+] \[ \] /gm,
            "Header": /^(?:\t| )*#+ .*$/gm,
            "DotList": /^(?:\t| )*[-*+] /gm,
            "Quote": /^(?:\t| )*> /gm
        }

        wrapMode: TextEdit.Wrap
        tabStopDistance: 30 // TODO make it compatible with everything

        onTextChanged: {
            F.assignCheckboxes()
            console.warn("\n\n\n\n\n", text)
        }
        Component.onCompleted: {
            textarea.text = F.processToRichText(getText(0, length))

        }

        TextMetrics {
            id: textmetrics
            function getWidth(t){
                text = t
                return advanceWidth ;
            }
        }
    }
}



