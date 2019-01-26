#
# Copyright (C) 2018-2019 QuasarApp.
# Distributed under the lgplv3 software license, see the accompanying
# Everyone is permitted to copy and distribute verbatim copies
# of this license document, but changing it is not allowed.
#


#-------------------------------------------------
#
# Project created by QtCreator 2019-01-26T13:55:47
#
#-------------------------------------------------

QT       -= gui

TARGET = Deploy
TEMPLATE = lib

DEFINES += DEPLOY_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG(release, debug|release): {
    DESTDIR="$$PWD/build/release"
} else {
    DESTDIR="$$PWD/build/debug"
}

include('$$PWD/../QuasarAppLib/QuasarLib.pri')


SOURCES += \
        deploy.cpp \
        deployutils.cpp \
        windependenciesscanner.cpp \
        ../qtTools/src/windeployqt/elfreader.cpp \
        ../qtTools/src/windeployqt/utils.cpp

HEADERS += \
        deploy.h \
        deploy_global.h \ 
        deployutils.h \
        windependenciesscanner.h\
        ../qtTools/src/windeployqt/elfreader.h \
        ../qtTools/src/windeployqt/utils.h

win32: LIBS += -lshlwapi
