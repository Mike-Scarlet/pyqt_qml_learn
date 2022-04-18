
import sys
from PyQt5 import QtCore, QtWidgets, QtQml

app = QtWidgets.QApplication(sys.argv)

engine = QtQml.QQmlApplicationEngine()
engine.quit.connect(app.quit)
engine.load('test.qml')

sys.exit(app.exec_())