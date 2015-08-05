#-------------------------------------------------
#
# Project created by QtCreator 2015-08-05T15:12:41
#
#-------------------------------------------------

QT       -= gui

TARGET = QtHpple
TEMPLATE = lib

DEFINES += QTHPPLE_LIBRARY

SOURCES += qthpple.cpp \
    qtxmlelement.cpp \
    qtxpathquery.cpp

HEADERS += qthpple.h\
        qthpple_global.h \
    qtxmlelement.h \
    qtxpathquery.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

QMAKE_CXXFLAGS += -I/usr/local/Cellar/libxml2/2.9.2/include/libxml2
QMAKE_LFLAGS += -lxml2
