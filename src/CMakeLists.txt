qt_feature_evaluate_features("${CMAKE_CURRENT_SOURCE_DIR}/ifvehiclefunctions/configure.cmake")
qt_feature_evaluate_features("${CMAKE_CURRENT_SOURCE_DIR}/ifmedia/configure.cmake")

add_subdirectory(3rdparty)

find_package(Qt6 ${PROJECT_VERSION} QUIET CONFIG OPTIONAL_COMPONENTS InterfaceFramework)

#if(QT_FEATURE_interfaceframework AND QT_FEATURE_ifcodegen AND QT_FEATURE_ifvehiclefunctions AND NOT QT_FEATURE_host_tools_only)
    add_subdirectory(ifvehiclefunctions)
#endif()
if(QT_FEATURE_interfaceframework AND QT_FEATURE_ifmedia AND NOT QT_FEATURE_host_tools_only)
    add_subdirectory(ifmedia)
endif()

if(QT_FEATURE_interfaceframework
        AND QT_FEATURE_remoteobjects
        AND QT_FEATURE_vehiclefunctions_qtro_simulation_server
        AND NOT ANDROID
        AND NOT IOS
        AND NOT WASM
        AND NOT rtems
        AND NOT QT_FEATURE_host_tools_only)
    add_subdirectory(tools/vehiclefunctions-simulation-server)
endif()
if(QT_FEATURE_interfaceframework
        AND QT_FEATURE_media_qtro_simulation_server
        AND QT_FEATURE_remoteobjects
        AND QT_FEATURE_media_simulation_backend
        AND NOT ANDROID
        AND NOT IOS
        AND NOT WASM
        AND NOT rtems
        AND NOT QT_FEATURE_host_tools_only)
    add_subdirectory(tools/media-simulation-server)
endif()
add_subdirectory(plugins)
