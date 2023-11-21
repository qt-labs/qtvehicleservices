TEMPLATE = subdirs

qtHaveModule(gui): {
    qtHaveModule(ifvehiclefunctions): SUBDIRS += ifvehiclefunctions
    qtHaveModule(ifmedia): SUBDIRS += ifmedia
}
