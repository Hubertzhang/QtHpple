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

linux:!android {
    CONFIG += link_pkgconfig
    PKGCONFIG += libxml-2.0
}

android {
    message("* Using settings for Android.")
    INCLUDEPATH += $$PWD/include/libxml2/
    LIBS += -L$$PWD/lib -lxml2
    CONFIG += staticlib
}

ios {
    iphonesimulator {
        message("iphonesimulator")
        DEFINES += iphonesimulator
        XCODE_PATH = /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk
    }

    iphoneos{
        message("iphoneos")
        DEFINES += iphoneos
        XCODE_PATH = /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk
    }

    INCLUDEPATH += $$XCODE_PATH/usr/include/libxml2/
    DEPENDPATH  += $$XCODE_PATH/usr/lib
    LIBS += -lxml2
}

macx {
    XCODE_PATH = $$system(xml2-config --prefix)
    INCLUDEPATH += $$XCODE_PATH/include/libxml2/
    DEPENDPATH  += $$XCODE_PATH/lib
    LIBS += $$system(xml2-config --libs)
    CONFIG += staticlib
}

win32 {
    ## Windows common build here
    !contains(QMAKE_TARGET.arch, x86_64) {
        message("x86 build")
        ## Windows x86 (32bit) specific build here
        INCLUDEPATH += $$PWD/win32/include/libxml2/
        LIBS += -L$$PWD/win32/lib -lxml2
    } else {
        message("x86_64 build")
        ## Windows x64 (64bit) specific build here
        INCLUDEPATH += $$PWD/win64/include/libxml2/
        LIBS += -L$$PWD/win64/lib -lxml2
    }
}
