cmake_minimum_required(VERSION 3.16)

include(.cmake.conf)
project(QtVehicleServices
    VERSION "${QT_REPO_MODULE_VERSION}"
    DESCRIPTION "Qt Vehicle Services"
    HOMEPAGE_URL "https://qt.io/"
    LANGUAGES CXX C
)

# Make sure we only use latest private CMake API, aka no compatibility wrappers.
set(QT_NO_INTERNAL_COMPATIBILITY_FUNCTIONS TRUE)

find_package(Qt6 ${PROJECT_VERSION} CONFIG REQUIRED COMPONENTS BuildInternals Core InterfaceFramework)
find_package(Qt6 ${PROJECT_VERSION} CONFIG OPTIONAL_COMPONENTS Gui Qml Quick QuickTest IfRemoteObjectsHelper RemoteObjects Multimedia Sql DBus Widgets)
qt_internal_project_setup()

qt_build_repo()
