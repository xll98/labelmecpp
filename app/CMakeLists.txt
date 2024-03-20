cmake_minimum_required(VERSION 3.5)

project(LabelMe)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

# 设置Qt5安装目录
set(Qt5_DIR /opt/homebrew/Cellar/qt@5/5.15.13/lib/cmake/Qt5)

find_package(Qt5 
    COMPONENTS Core Gui Widgets REQUIRED)
find_package(OpenCV
    PATHS /Users/mircle/work/3rd/opencv/opencv480/lib/cmake/opencv4
    NO_DEFAULT_PATH
    REQUIRED)
set(CMAKE_CXX_STANDARD 11)

set(SOURCES
    src/actionsinit.cpp
    src/brush.cpp
    src/brush3d.cpp
    src/centralwinit2d.cpp
    src/centralwinit3d.cpp
    #src/centralwidget.cpp
    src/circle.cpp
    src/command.cpp
    src/command2d.cpp
    src/command3d.cpp
    src/curve.cpp
    src/filesdwinit.cpp
    src/label.cpp
    src/label3d.cpp
    src/labelsdwinit.cpp
    src/main.cpp
    src/mainwindow.cpp
    src/parse.cpp
    src/polygons.cpp
    src/rectangle.cpp
    src/rectangle3d.cpp
    src/shape.cpp
    src/shape2d.cpp
    src/shape3d.cpp
)

set(HEADERS
    include/ActionsInit.h
    include/Brush.h
    include/Brush3D.h
    include/CentralWInit2D.h
    include/CentralWInit3D.h
    include/Circle.h
    include/Command.h
    include/Command2D.h
    include/Command3D.h
    include/Curve.h
    include/FilesDWInit.h
    include/Label.h
    include/Label3D.h
    include/LabelsDWInit.h
    include/MenubarInit.h
    include/Namespace.h
    include/Parse.h
    include/Polygons.h
    include/Rectangle.h
    include/Rectangle3D.h
    include/Shape.h
    include/Shape2D.h
    include/Shape3D.h
    include/StatusbarInit.h
    include/ToolbarInit.h
    include/mainwindow.h
)

set(RESOURCES
    images.qrc
)

include_directories(
    #/Users/mircle/work/3rd/opencv/opencv480/include/opencv4/opencv2
    #/Users/mircle/work/3rd/opencv/opencv480/include/opencv4
    #/Users/mircle/work/3rd/opencv/opencv480/include/
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

 link_directories(
    /Users/mircle/work/code/ai_tools/labelmecpp/app/libs
)
# Add your library search paths and libraries here
# link_directories(
#     /Users/mircle/work/3rd/opencv/opencv480/lib
# )
# target_link_libraries(${PROJECT_NAME}
#     opencv_core.408
#     opencv_highgui.408
#     opencv_imgcodecs.408
#     opencv_imgproc.408
#     opencv_features2d.408
#     opencv_calib3d.408
# )

add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS} ${RESOURCES})
target_link_libraries( ${PROJECT_NAME} pthread ${OpenCV_LIBS} CentralWidget)
target_link_libraries(${PROJECT_NAME}
    Qt5::Core
    Qt5::Gui
    Qt5::Widgets
)
