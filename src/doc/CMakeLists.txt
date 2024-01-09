
#####################################################################
## Documentation
#####################################################################

if(QT_BUILD_ONLINE_DOCS)
    set(DOC_CONF "online/qtvehicleservices.qdocconf")
else()
    set(DOC_CONF "qtvehicleservices.qdocconf")
endif()

file(GLOB_RECURSE allDocFiles "*.qdocconf" "*.qdoc" "*.png" "*.html" "*Doc")

# Create a small helper library to forward the include paths of all
# dependencies to qdoc
file(TOUCH ${CMAKE_CURRENT_BINARY_DIR}/cmake_dummy.cpp)
add_library(Documentation
    EXCLUDE_FROM_ALL
    ${allDocFiles}
)
target_link_libraries(Documentation
    PUBLIC
        Qt::InterfaceFramework
)

qt_internal_add_docs(Documentation
    ${DOC_CONF}
)
