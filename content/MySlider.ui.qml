import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import MyProject0_0

Slider {
    id: slider
    handle: Rectangle {
        x: slider.leftPadding + (slider.horizontal ? slider.visualPosition * (slider.availableWidth - width) : (slider.availableWidth - width) / 2)
        y: slider.topPadding + (slider.horizontal ? (slider.availableHeight - height) / 2 : slider.visualPosition * (slider.availableHeight - height))
        implicitWidth: 28
        implicitHeight: 28
        radius: width / 2
        color: slider.pressed ? slider.palette.light : slider.palette.window
        border.width: slider.visualFocus ? 2 : 1
        border.color: slider.visualFocus ? slider.palette.highlight : slider.enabled ? slider.palette.mid : slider.palette.midlight
    }
    Item {
        id: __materialLibrary__
    }
}
