#-------------------------------------------------
#
# Project created by QtCreator 2015-08-05T15:12:41
#
#-------------------------------------------------

QT       -= gui

TARGET = QtHpple
TEMPLATE = lib

DEFINES += QTHPPLE_LIBRARY

SOURCES += qthpple.cpp

HEADERS += qthpple.h\
        qthpple_global.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
