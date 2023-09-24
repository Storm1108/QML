import QtQuick
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import MyProject0_0

TextField {
    id: textField1
    placeholderText: qsTr("Text Field")
    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 40
        color: textField1.palette.base
        radius: 10
        border.color: textField1.activeFocus ? textField1.palette.active : textField1.palette.base
        border.width: 2
    }
    Item {
        id: __materialLibrary__
    }
}
