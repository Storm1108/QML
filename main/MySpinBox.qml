import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5

SpinBox {
    id: spinBox
    background: Rectangle {
        implicitWidth: 140
        color: enabled ? "#ffffffff" : spinBox.palette.button
        border.width: 2
        radius: 5
        border.color: spinBox.activeFocus ? "#a9454aef" : "#797979"

    }

    Item {
        id: __materialLibrary__
    }
}
