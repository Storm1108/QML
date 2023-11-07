# This Python file uses the following encoding: utf-8
import sys
from pathlib import Path

from PyQt6.QtGui import QGuiApplication

from PyQt6.QtQml import QQmlApplicationEngine
from PySide6.QtQuickControls2 import QQuickStyle
import style_rc

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    QQuickStyle.setStyle("Universal")
    engine = QQmlApplicationEngine()
    # qml_file = Path(__file__).resolve().parent / "main/App.qml"
    engine.load("main/App.qml")
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())









# from PySide6.QtGui import *
# from PySide6.QtQml import QQmlApplicationEngine
# from PySide6.QtCore import Qt, Signal,QObject
# import sys
#
#
# class Controller(QObject):
#     def __init__(self):
#         QObject.__init__(self)
#
#     printedSignal = Signal(str, arguments=['pr'])
#
#     @pyqtSlot(int, str)
#     def compose(self, y, spd_y, z):
#         # складываем два аргумента и испускаем сигнал
#         with open("data.txt") as w:
#             w.write("Угол y: {}, Скорость y {}, Угол z: {}\n".format(y, spd_y, z))
#             self.printedSignal.emit
#             return str(y) + " " + str(z)
#
#
# app = QGuiApplication(sys.argv)
# engine = QQmlApplicationEngine()
# engine.loadData(QML.encode('utf-8'))
# if not engine.rootObjects():
#         sys.exit(-1)
# controller = Controller()
# engine.rootContext().setContextProperty("controller", controller)
# engine.load("content/main.qml")
#
# engine.quit.connect(app.quit)
# exit_code = app.exec()
# del engine
# sys.exit(exit_code)