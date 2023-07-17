cmake_minimum_required(VERSION 3.16)

project(demoForQmllsWhatsNew66 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

add_subdirectory(MyModule)

qt_add_executable(appdemoForQmllsWhatsNew66
    main.cpp
)

qt_add_qml_module(appdemoForQmllsWhatsNew66
    URI demoForQmllsWhatsNew66
    QML_FILES Main.qml
)

set_target_properties(appdemoForQmllsWhatsNew66 PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appdemoForQmllsWhatsNew66
    PRIVATE Qt6::Quick myModule
)

install(TARGETS appdemoForQmllsWhatsNew66
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
