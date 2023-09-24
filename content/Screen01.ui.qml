

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import MyProject0_0

Column {

    height: dpi * 7
    layer.enabled: false
    focus: false
    anchors.fill: parent
    state: ""
    antialiasing: false
    smooth: true
    clip: false
    property alias bottomLeftHeight: bottomLeft.height

    //    property alias bottomLeftWidth: bottomLeft.width
    Rectangle {
        id: rectangle
        color: "#000000"
        anchors.fill: parent
        gradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop {
                position: 0
                color: "#93a5cf"
            }

            GradientStop {
                position: 1
                color: "#e4efe9"
            }
        }
        scale: 1

        View3D {
            id: view3D
            anchors.fill: parent
            importScene: cubeModel
            environment: sceneEnvironment
            anchors.bottomMargin: 100
            renderFormat: ShaderEffectSource.RGBA8
            camera: sceneCamera
            transformOrigin: Item.BottomLeft
            SceneEnvironment {
                id: sceneEnvironment
                antialiasingQuality: SceneEnvironment.High
                antialiasingMode: SceneEnvironment.MSAA
            }

            Node {
                id: scene
                DirectionalLight {
                    id: directionalLight
                }

                PerspectiveCamera {
                    id: sceneCamera
                    z: 350
                }

                Model {
                    id: cubeModel
                    source: "#Cube"
                    materials: principledMaterial
                    eulerRotation.x: 30
                    eulerRotation.y: 45
                }
            }
        }

        Column {
            id: columnRight
            x: 875
            width: 322
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 20
            anchors.bottomMargin: 20
            anchors.rightMargin: 20
            bottomPadding: 5
            leftPadding: 5
            topPadding: 5
            spacing: 50

            Rectangle {
                id: topRight
                width: bottomRight.width
                height: topLeft.height
                radius: 20
                anchors.right: parent.right
                anchors.top: parent.top
                gradient: Gradient {
                    orientation: Gradient.Horizontal
                    GradientStop {
                        position: 0
                        color: "#a5dad4ec"
                    }

                    GradientStop {
                        position: 0.01
                        color: "#bbdad4ec"
                    }

                    GradientStop {
                        position: 1
                        color: "#98fcd9df"
                    }
                }
                anchors.topMargin: 5
                anchors.rightMargin: 5

                ScrollView {
                    id: scrollView1
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                    anchors.bottomMargin: 50
                    anchors.topMargin: 10

                    TextArea {
                        id: textArea
                        text: ""
                        activeFocusOnPress: false
                        selectByMouse: true
                        font.pointSize: 15
                        readOnly: true
                        font.family: "Arial"
                        placeholderText: qsTr("Отправленные команды")
                    }
                }

                RoundButton {
                    id: graf_btn
                    x: 3
                    y: 3
                    height: 30
                    radius: 10
                    text: "Графики"
                    anchors.bottom: parent.bottom
                    font.letterSpacing: 1
                    anchors.bottomMargin: 10
                    font.pointSize: 18
                    font.family: "GOST type A"
                    baselineOffset: 13
                    antialiasing: true
                    layer.mipmap: true
                    bottomPadding: 8
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Rectangle {
                id: bottomRight
                height: 200
                color: "#79ccc1c1"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                gradient: Gradient {
                    orientation: Gradient.Vertical
                    GradientStop {
                        position: 0
                        color: "#addad4ec"
                    }

                    GradientStop {
                        position: 0.01
                        color: "#9adad4ec"
                    }

                    GradientStop {
                        position: 1
                        color: "#7dffd4dc"
                    }
                }
                anchors.bottomMargin: 5
                anchors.rightMargin: 5
                anchors.leftMargin: 5

                Column {
                    id: br_Coll_top
                    anchors.fill: parent
                    Text {
                        id: br_Title
                        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:16pt; font-weight:700;\">Данные по оси Y</span></p></body></html>"
                        anchors.top: parent.top
                        font.pixelSize: 12
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.topMargin: 5
                        font.underline: false
                        textFormat: Text.RichText
                    }

                    ToolSeparator {
                        id: br_Sep
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: br_Title.bottom
                        rightPadding: 10
                        leftPadding: 10
                        hoverEnabled: false
                        anchors.leftMargin: 10
                        anchors.topMargin: 0
                        wheelEnabled: false
                        orientation: Qt.Horizontal
                        enabled: false
                        bottomPadding: 10
                        spacing: 0
                        anchors.rightMargin: 10
                        topPadding: 0
                    }

                    Row {
                        id: br_Row
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: br_Sep.bottom
                        anchors.bottom: parent.bottom
                        Grid {
                            id: br_Grid
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            layoutDirection: Qt.LeftToRight
                            Text {
                                id: angl_2
                                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"right\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:18pt;\"> </span><span style=\" font-family:'GOST type A'; font-size:18pt;\">           Угол:</span></p></body></html>"
                                font.pixelSize: 12
                                textFormat: Text.RichText
                            }

                            Rectangle {
                                id: angl_r2
                                width: 50
                                height: 30
                                color: "#ffffff"
                                radius: 10
                                border.color: "#a9454aef"
                                border.width: 2
                                Text {
                                    id: angl_2_d
                                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">90</span></p></body></html>"
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: 12
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    textFormat: Text.RichText
                                }
                            }

                            Text {
                                id: spd_2
                                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"right\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">       Скорость:</span></p></body></html>"
                                font.pixelSize: 12
                                textFormat: Text.RichText
                            }

                            Rectangle {
                                id: spd_r2
                                width: angl_r2.width
                                height: angl_r2.height
                                color: "#ffffff"
                                radius: 10
                                border.color: "#a9454aef"
                                border.width: 2
                                Text {
                                    id: spd_2_d
                                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">96</span></p></body></html>"
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: 12
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    textFormat: Text.RichText
                                }
                            }

                            Text {
                                id: accl_2
                                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"right\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:18pt;\"> </span><span style=\" font-family:'GOST type A'; font-size:18pt;\">     Ускорение:</span></p></body></html>"
                                font.pixelSize: 12
                                textFormat: Text.RichText
                            }

                            Rectangle {
                                id: accl_r2
                                width: angl_r2.width
                                height: angl_r2.height
                                color: "#ffffff"
                                radius: 10
                                border.color: "#a9454aef"
                                border.width: 2
                                Text {
                                    id: accl_2_d
                                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">543</span></p></body></html>"
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: 12
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    textFormat: Text.RichText
                                }
                            }

                            Text {
                                id: rot_2
                                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"right\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">Обороты винта:</span></p></body></html>"
                                font.pixelSize: 12
                                textFormat: Text.RichText
                            }

                            Rectangle {
                                id: rot_r2
                                width: angl_r2.width * 2
                                height: 30
                                color: "#ffffff"
                                radius: 10
                                border.color: "#9c454aef"
                                border.width: 2
                                Text {
                                    id: rot_2_d
                                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">1200 RPM</span></p></body></html>"
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: 12
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    textFormat: Text.RichText
                                }
                            }
                            rows: 4
                            leftPadding: 20
                            anchors.topMargin: 0
                            horizontalItemAlignment: Grid.AlignLeft
                            columns: 2
                            verticalItemAlignment: Grid.AlignVCenter
                            spacing: 10
                            anchors.rightMargin: 75
                            flow: Grid.LeftToRight
                        }

                        Column {
                            id: br_Coll_btn
                            anchors.left: br_Grid.right
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            topPadding: 0
                            anchors.leftMargin: 0
                            anchors.topMargin: 0
                            spacing: 19

                            Text {
                                id: text1
                                text: "Градусы"
                                font.pixelSize: 20
                                horizontalAlignment: Text.AlignHCenter
                                font.weight: Font.ExtraBold
                                anchors.horizontalCenter: parent.horizontalCenter
                                font.family: "GOST type A"
                                textFormat: Text.RichText
                            }

                            Switch {
                                id: switch1
                                text: ""
                                padding: 0
                                leftPadding: 0
                                bottomPadding: 0
                                anchors.horizontalCenter: parent.horizontalCenter
                                rotation: 90
                                rightPadding: 0
                                topPadding: 0
                                font.family: "GOST type A"
                                display: AbstractButton.IconOnly
                            }

                            Text {
                                id: text2
                                text: "Радианы"
                                color: switch1.checked ? "#011983" : "#000000"
                                font.pixelSize: 20
                                horizontalAlignment: Text.AlignHCenter
                                font.weight: Font.ExtraBold
                                anchors.horizontalCenter: parent.horizontalCenter
                                textFormat: Text.RichText
                                font.family: "GOST type A"
                            }
                        }
                        anchors.topMargin: 0
                    }
                    padding: 5
                    spacing: 5
                }
            }
        }

        Column {
            id: columnLeft
            y: -7
            width: 322
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 20
            anchors.topMargin: 20
            spacing: 50
            topPadding: 5
            Rectangle {
                id: topLeft
                height: 235
                color: "#79ccc1c1"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: -100
                gradient: Gradient {
                    orientation: Gradient.Horizontal
                    GradientStop {
                        position: 0
                        color: "#b4dad4ec"
                    }

                    GradientStop {
                        position: 0.01
                        color: "#acdad4ec"
                    }

                    GradientStop {
                        position: 1
                        color: "#82ffd8df"
                    }
                }
                anchors.topMargin: 5
                anchors.leftMargin: 5

                Column {
                    id: tl_col
                    x: -5
                    y: -5
                    anchors.fill: parent
                    bottomPadding: 10
                    spacing: 0

                    Text {
                        id: text5
                        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:16pt; font-weight:700;\">Ввод данных</span></p></body></html>"
                        font.pixelSize: 18
                        verticalAlignment: Text.AlignBottom
                        topPadding: 5
                        textFormat: Text.RichText
                        font.bold: true
                        font.family: "GOST type A"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    ToolSeparator {
                        id: bl_Sep1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: bl_Title.bottom
                        leftPadding: 10
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        wheelEnabled: false
                        topPadding: 0
                        orientation: Qt.Horizontal
                        rightPadding: 10
                        spacing: 0
                        enabled: false
                        bottomPadding: 10
                        anchors.topMargin: 0
                        hoverEnabled: false
                    }

                    Row {
                        id: row
                        width: 200
                        height: 50
                        bottomPadding: 0
                        topPadding: 0
                        spacing: 5
                        leftPadding: 10

                        Text {
                            id: text8
                            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GreekC_IV50'; font-size:18pt;\">f</span><span style=\" font-family:'Times New Roman','serif'; font-size:18pt; vertical-align:sub;\">Y</span><span style=\" font-size:18pt;\"> :</span></p></body></html>"
                            elide: Text.ElideNone
                            font.pixelSize: 12
                            wrapMode: Text.NoWrap
                            font.family: "GOST type A"
                            textFormat: Text.RichText
                        }

                        Slider {
                            id: slider_angl_y
                            width: 260
                            value: spin_angl_y.value
                            antialiasing: true
                            to: 360
                            snapMode: RangeSlider.SnapOnRelease
                            from: -360
                        }

                        MySpinBox {
                            id: spin_angl_y
                            activeFocusOnTab: true
                            baselineOffset: 15
                            bottomPadding: 5
                            clip: false
                            editable: true
                            focusPolicy: Qt.ClickFocus
                            font.family: "Courier"
                            font.letterSpacing: -0.4
                            value: slider_angl_y.value
                            font.pointSize: 13
                            from: -360
                            leftInset: 0
                            leftPadding: 25
                            padding: 0
                            rightInset: 0
                            rightPadding: 25
                            spacing: 0
                            stepSize: 1
                            to: 360
                            topPadding: 5
                            wheelEnabled: true
                            width: 85
                            wrap: true
                        }
                    }

                    Row {
                        id: row1
                        width: 200
                        height: 50
                        spacing: 5
                        leftPadding: 10

                        Text {
                            id: text7
                            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GreekC_IV50'; font-size:18pt;\">w</span><span style=\" font-family:'Times New Roman','serif'; font-size:18pt; vertical-align:sub;\">Y</span><span style=\" font-size:18pt;\"> :</span></p></body></html>"
                            elide: Text.ElideNone
                            font.pixelSize: 12
                            wrapMode: Text.NoWrap
                            textFormat: Text.RichText
                            font.family: "GOST type A"
                        }

                        Slider {
                            id: slider_angl_z
                            width: 260
                            value: spin_angl_z.value
                            snapMode: RangeSlider.SnapOnRelease
                            antialiasing: true
                            to: 360
                            from: -360
                        }

                        MySpinBox {
                            id: spin_angl_z
                            width: 85
                            font.letterSpacing: -0.4
                            value: slider_angl_z.value
                            leftInset: 0
                            leftPadding: 25
                            font.pointSize: 13
                            wheelEnabled: true
                            topPadding: 5
                            activeFocusOnTab: true
                            rightPadding: 25
                            spacing: 0
                            font.family: "Courier"
                            baselineOffset: 15
                            stepSize: 1
                            rightInset: 0
                            editable: true
                            wrap: true
                            padding: 0
                            focusPolicy: Qt.ClickFocus
                            bottomPadding: 5
                            clip: false
                            to: 360
                            from: -360
                        }
                    }

                    Row {
                        id: row2
                        width: 200
                        height: 50
                        spacing: 5
                        leftPadding: 10

                        Text {
                            id: text9
                            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GreekC_IV50'; font-size:18pt;\">f</span><span style=\" font-family:'Times New Roman','serif'; font-size:18pt; vertical-align:sub;\">Z</span><span style=\" font-family:'Times New Roman','serif'; font-size:18pt;\"> :</span></p></body></html>"
                            elide: Text.ElideNone
                            font.pixelSize: 12
                            wrapMode: Text.NoWrap
                            font.family: "GOST type A"
                            textFormat: Text.RichText
                        }

                        Slider {
                            id: slider_spd_z
                            width: 260
                            value: spin_spd_z.value
                            snapMode: RangeSlider.SnapOnRelease
                            antialiasing: true
                            to: 360
                            from: -360
                        }

                        MySpinBox {
                            id: spin_spd_z
                            width: 85
                            font.letterSpacing: -0.4
                            value: slider_spd_z.value
                            leftInset: 0
                            leftPadding: 25
                            font.pointSize: 13
                            wheelEnabled: true
                            topPadding: 5
                            activeFocusOnTab: true
                            rightPadding: 25
                            spacing: 0
                            font.family: "Courier"
                            baselineOffset: 15
                            stepSize: 1
                            rightInset: 0
                            editable: true
                            wrap: true
                            padding: 0
                            focusPolicy: Qt.ClickFocus
                            bottomPadding: 5
                            clip: false
                            to: 360
                            from: -360
                        }
                    }

                    RoundButton {
                        id: submit_btn
                        height: 30
                        radius: 10
                        text: "Отправить"
                        font.letterSpacing: 1
                        anchors.horizontalCenter: parent.horizontalCenter
                        bottomPadding: 8
                        font.pointSize: 18
                        font.family: "GOST type A"
                        baselineOffset: 13
                        antialiasing: true
                        layer.mipmap: true
                    }
                }
            }

            Rectangle {
                id: bottomLeft
                height: 200
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                gradient: Gradient {
                    orientation: Gradient.Vertical
                    GradientStop {
                        position: 0
                        color: "#90dad4ec"
                    }

                    GradientStop {
                        position: 0.01
                        color: "#79dad4ec"
                    }

                    GradientStop {
                        position: 1
                        color: "#79ffd4dc"
                    }
                }
                baselineOffset: 0
                focus: false
                layer.textureSize.height: 4
                layer.textureSize.width: 1
                layer.samples: 2
                layer.enabled: false
                anchors.bottomMargin: 5
                anchors.rightMargin: 5
                anchors.leftMargin: 5

                Column {
                    id: bl_Coll_top
                    anchors.fill: parent
                    anchors.topMargin: 0
                    padding: 5
                    spacing: 5

                    Text {
                        id: bl_Title
                        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:16pt; font-weight:700;\">Данные по оси Z</span></p></body></html>"
                        anchors.top: parent.top
                        font.pixelSize: 12
                        font.underline: false
                        textFormat: Text.RichText
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.topMargin: 5
                    }

                    ToolSeparator {
                        id: bl_Sep
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: bl_Title.bottom
                        rightPadding: 10
                        bottomPadding: 10
                        leftPadding: 10
                        topPadding: 0
                        enabled: false
                        hoverEnabled: false
                        wheelEnabled: false
                        spacing: 0
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        anchors.topMargin: 0
                        orientation: Qt.Horizontal
                    }

                    Row {
                        id: bl_Row
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: bl_Sep.bottom
                        anchors.bottom: parent.bottom
                        anchors.topMargin: 0

                        Grid {
                            id: bl_Grid
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            flow: Grid.LeftToRight
                            layoutDirection: Qt.LeftToRight
                            anchors.rightMargin: 75
                            leftPadding: 20
                            verticalItemAlignment: Grid.AlignVCenter
                            horizontalItemAlignment: Grid.AlignHCenter
                            anchors.topMargin: 0
                            spacing: 10
                            rows: 4
                            columns: 2

                            Text {
                                id: angl_1
                                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"right\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:18pt;\"> </span><span style=\" font-family:'GOST type A'; font-size:18pt;\">           Угол:</span></p></body></html>"
                                font.pixelSize: 12
                                textFormat: Text.RichText
                            }

                            Rectangle {
                                id: angl_r1
                                width: 50
                                height: 30
                                color: "#ffffff"
                                radius: 10
                                border.color: "#a9454aef"
                                border.width: 2

                                Text {
                                    id: angl_1_d
                                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">90</span></p></body></html>"
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: 12
                                    textFormat: Text.RichText
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }

                            Text {
                                id: spd_1
                                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"right\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">       Скорость:</span></p></body></html>"
                                font.pixelSize: 12
                                textFormat: Text.RichText
                            }

                            Rectangle {
                                id: spd_r1
                                width: angl_r1.width
                                height: angl_r1.height
                                color: "#ffffff"
                                radius: 10
                                border.color: "#a9454aef"
                                border.width: 2

                                Text {
                                    id: spd_1_d
                                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">96</span></p></body></html>"
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: 12
                                    textFormat: Text.RichText
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }

                            Text {
                                id: accl_1
                                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"right\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:18pt;\"> </span><span style=\" font-family:'GOST type A'; font-size:18pt;\">     Ускорение:</span></p></body></html>"
                                font.pixelSize: 12
                                textFormat: Text.RichText
                            }

                            Rectangle {
                                id: accl_r1
                                width: angl_r1.width
                                height: angl_r1.height
                                color: "#ffffff"
                                radius: 10
                                border.color: "#a9454aef"
                                border.width: 2

                                Text {
                                    id: accl_1_d
                                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">543</span></p></body></html>"
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: 12
                                    textFormat: Text.RichText
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }

                            Text {
                                id: rot_1
                                text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"right\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">Обороты винта:</span></p></body></html>"
                                font.pixelSize: 12
                                textFormat: Text.RichText
                            }

                            Rectangle {
                                id: rot_r1
                                width: angl_r1.width * 2
                                height: 30
                                color: "#ffffff"
                                radius: 10
                                border.color: "#a9454aef"
                                border.width: 2
                                Text {
                                    id: rot_1_d
                                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'GOST type A'; font-size:18pt;\">1200 RPM</span></p></body></html>"
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.pixelSize: 12
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    textFormat: Text.RichText
                                }
                            }
                        }

                        Column {
                            id: bl_Coll_btn
                            anchors.left: bl_Grid.right
                            anchors.right: parent.right
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            topPadding: 0
                            spacing: 20
                            anchors.leftMargin: 0
                            anchors.topMargin: 0

                            Text {
                                id: text10
                                text: "Градусы"
                                font.pixelSize: 20
                                horizontalAlignment: Text.AlignHCenter
                                font.weight: Font.ExtraBold
                                font.family: "GOST type A"
                                textFormat: Text.RichText
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                            Switch {
                                id: switch3
                                text: ""
                                leftPadding: 0
                                topPadding: 0
                                rightPadding: 0
                                display: AbstractButton.IconOnly
                                font.family: "GOST type A"
                                padding: 0
                                rotation: 90
                                bottomPadding: 0
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                            Text {
                                id: text6
                                color: switch3.checked ? "#011983" : "#000000"
                                text: "Радианы"
                                font.pixelSize: 20
                                horizontalAlignment: Text.AlignHCenter
                                font.weight: Font.ExtraBold
                                font.family: "GOST type A"
                                textFormat: Text.RichText
                                anchors.horizontalCenter: parent.horizontalCenter
                            }
                        }
                    }
                }
            }

            anchors.bottomMargin: 20
            bottomPadding: 5
            leftPadding: 5
        }

        Image {
            id: komp_left
            width: 200
            height: 200
            anchors.left: columnLeft.right
            anchors.bottom: parent.bottom
            source: "images/kompas.png"
            anchors.leftMargin: 40
            anchors.bottomMargin: 30
            mipmap: true
            autoTransform: true
            smooth: true
            mirror: false
            asynchronous: true
            rotation: 112
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: komp_right
            x: -9
            y: -9
            width: 200
            height: 200
            anchors.right: columnRight.left
            anchors.bottom: parent.bottom
            source: "images/kompas.png"
            anchors.rightMargin: 30
            autoTransform: true
            rotation: 81
            mirror: false
            mipmap: true
            anchors.bottomMargin: 30
            asynchronous: true
            smooth: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: scaling_right
            width: komp_right.width * 1.1
            height: komp_right.height * 1.1
            anchors.verticalCenter: komp_right.verticalCenter
            source: "images/scaling.png"
            anchors.horizontalCenter: komp_right.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: scaling_left
            width: komp_left.width * 1.1
            height: komp_left.height * 1.1
            anchors.verticalCenter: komp_left.verticalCenter
            source: "images/scaling.png"
            anchors.horizontalCenter: komp_left.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }
    }

    Item {
        id: __materialLibrary__

        PrincipledMaterial {
            id: principledMaterial
            objectName: "New Material"
        }
    }
}
