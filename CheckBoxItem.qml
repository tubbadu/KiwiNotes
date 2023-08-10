import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

CheckBox{
    property var rect
    property bool free: true
    z: 100
    visible: false
    height: indicator.height
    width: indicator.width

    onRectChanged: {
        if(rect){
            x = rect.x + textarea.tabStopDistance - width - 1
            y = rect.y + ((rect.height - height)/2)
            visible = true
        } else {
            visible = false
        }
    }
}
