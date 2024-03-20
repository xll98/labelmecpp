#-------------------------------------------------
#
# Project created by QtCreator 2019-08-28T14:51:18
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = LabelMe
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000
CONFIG += c++11

SOURCES += \
        src/actionsinit.cpp \
        src/brush.cpp \
        src/brush3d.cpp \
        src/centralwidget.cpp \
        src/centralwinit2d.cpp \
        src/centralwinit3d.cpp \
        src/circle.cpp \
        src/command.cpp \
        src/command2d.cpp \
        src/command3d.cpp \
        src/curve.cpp \
        src/filesdwinit.cpp \
        src/label.cpp \
        src/label3d.cpp \
        src/labelsdwinit.cpp \
        src/main.cpp \
        src/mainwindow.cpp \
        src/parse.cpp \
        src/polygons.cpp \
        src/rectangle.cpp \
        src/rectangle3d.cpp \
        src/shape.cpp \
        src/shape2d.cpp \
        src/shape3d.cpp

HEADERS += \
        $$PWD/include/ActionsInit.h \
	$$PWD/include/Brush.h \
	$$PWD/include/Brush3D.h \
	$$PWD/include/CentralWInit2D.h \
	$$PWD/include/CentralWInit3D.h \
	$$PWD/include/Circle.h \
	$$PWD/include/Command.h \
	$$PWD/include/Command2D.h \
	$$PWD/include/Command3D.h \
	$$PWD/include/Curve.h \
	$$PWD/include/FilesDWInit.h \
	$$PWD/include/Label.h \
	$$PWD/include/Label3D.h \
	$$PWD/include/LabelsDWInit.h \
	$$PWD/include/MenubarInit.h \
	$$PWD/include/Namespace.h \
	$$PWD/include/Parse.h \
	$$PWD/include/Polygons.h \
	$$PWD/include/Rectangle.h \
	$$PWD/include/Rectangle3D.h \
	$$PWD/include/Shape.h \
	$$PWD/include/Shape2D.h \
	$$PWD/include/Shape3D.h \
	$$PWD/include/StatusbarInit.h \
	$$PWD/include/ToolbarInit.h \
	$$PWD/include/mainwindow.h

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    images.qrc

INCLUDEPATH += /Users/mircle/work/3rd/opencv/opencv480/include/opencv4/opencv2
INCLUDEPATH += /Users/mircle/work/3rd/opencv/opencv480/include/opencv4
INCLUDEPATH += /Users/mircle/work/3rd/opencv/opencv480/include/
INCLUDEPATH += $$PWD/include

LIBS += -L/Users/mircle/work/3rd/opencv/opencv480/lib \
        -lopencv_core.408      \
	-lopencv_highgui.408    \
	-lopencv_imgcodecs.408   \
	-lopencv_imgproc.408      \
	-lopencv_features2d.408    \
	-lopencv_calib3d.408
