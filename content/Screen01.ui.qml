

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
    id: mainWin
    property int dpi: Screen.pixelDensity * 25.4
    width: dpi * 13
    height: dpi * 7
    layer.enabled: false
    focus: false
    anchors.fill: parent
    antialiasing: false
    smooth: true
    clip: false
    property alias bottomLeftHeight: bottomLeft.height

    //    property alias bottomLeftWidth: bottomLeft.width
    Rectangle {
        id: rectangle
        color: "#e6e7eb"
        anchors.fill: parent

        View3D {
            id: view3D
            anchors.fill: parent
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
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: bottomRight.top
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
                anchors.bottomMargin: 205
                anchors.topMargin: 5
                anchors.leftMargin: 5
                anchors.rightMargin: 5
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
                                border.color: "#a9454aef"
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
                            topPadding: 15
                            Button {
                                id: br_graf_btn
                                opacity: 1
                                text: qsTr("Графики")
                                font.weight: Font.Normal
                                wheelEnabled: false
                                checkable: false
                                font.pointSize: 19
                                font.family: "GOST type A"
                                icon.source: "images/kompas.png"
                                display: AbstractButton.TextBesideIcon
                                highlighted: false
                                flat: false
                            }

                            Button {
                                id: br_pi_btn
                                text: qsTr("Button")
                                highlighted: true
                                antialiasing: true
                                smooth: true
                                font.capitalization: Font.MixedCase
                                autoRepeat: false
                                autoExclusive: false
                                display: AbstractButton.TextBesideIcon
                                checked: false
                                checkable: true
                                flat: false
                            }
                            anchors.leftMargin: 0
                            anchors.topMargin: 0
                            spacing: 20
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
                color: "#79ccc1c1"
                radius: 20
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
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
                anchors.bottomMargin: 410
                anchors.topMargin: 5
                anchors.rightMargin: 5
                anchors.leftMargin: 5
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
                        color: "#dad4ec"
                    }

                    GradientStop {
                        position: 0.00685
                        color: "#8bdad4ec"
                    }

                    GradientStop {
                        position: 0.01
                        color: "#84dad4ec"
                    }

                    GradientStop {
                        position: 1
                        color: "#90ffd8df"
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
                            horizontalItemAlignment: Grid.AlignLeft
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
                            topPadding: 15
                            spacing: 20
                            anchors.leftMargin: 0
                            anchors.topMargin: 0

                            Button {
                                id: bl_graf_btn
                                text: qsTr("Button")
                            }

                            Button {
                                id: bl_pi_btn
                                text: qsTr("Button")
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
            rotation: 45
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
            rotation: 162
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
