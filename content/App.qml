// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import MyProject0_0

Window {
    property int dpi: Screen.pixelDensity * 25.4
    width: dpi*13
    height: dpi*7

    visible: true
    title: "MyProject0_0"

    Screen01 {
        id: mainScreen
    }

}

