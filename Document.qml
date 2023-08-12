import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

import "functions.js" as F





ScrollView{
    anchors.fill: parent

    TextArea{
        id: textarea
        width: parent.width
        readonly property string userText: getText(0, length)
        textFormat: TextEdit.RichText
        property string intext: `
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
- https://google.it

<br>
<br>
<br>

> Questa è una citazione dal testo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

## Altro Contenuto
Ecco del testo normale e *cursivo*, **grassetto** e ***grassetto corsivo***.`;
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
            "Quote": /^(?:\t| )*> .*$/gm,
            "EmptyLine": /^\s*\n/gm,
            "Nothing": /^(?!(\s*#+ |\s*<br>\s*)).*$/gm,
            "BreakLines": /<\s*br\s*\/?\s*>/g, // TODO fix
            "Bold": /\*\*([^*]+)\*\*/g,
            "Italic": /\*([^*]+)\*/g,

        }

        wrapMode: TextEdit.Wrap
        tabStopDistance: 30 // TODO make it compatible with everything

        onTextChanged: {
            //F.assignCheckboxes()
            console.warn(text)
        }
        Component.onCompleted: {
            let t = F.processToRichText(intext);
            textarea.text = t;
            //console.warn(t, "\n\n\n\n\n\n", textarea.text)
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
