cmake_minimum_required(VERSION 3.16)

project(KiwiNotes VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)


find_package(Qt6 6.4 REQUIRED COMPONENTS Quick Widgets)

qt_standard_project_setup()


qt_add_executable(appKiwiNotes
    main.cpp
)

qt_add_qml_module(appKiwiNotes
    URI KiwiNotes
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES Document.qml
    QML_FILES
    QML_FILES CheckBoxItem.qml
    QML_FILES functions.js
    #RESOURCES resources.qrc
    RESOURCES img/icon.svg
    RESOURCES img/transparent.png

)


# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appKiwiNotes PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appKiwiNotes
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
    QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android
)

target_link_libraries(appKiwiNotes
    PRIVATE
    Qt6::Quick
    Qt6::Widgets
)

include(GNUInstallDirs)
install(TARGETS appKiwiNotes
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
