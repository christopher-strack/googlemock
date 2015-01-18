TARGET = googlemock
TEMPLATE = lib
CONFIG += c++11
QMAKE_CXXFLAGS += -w
QT -= core gui

!android {
    CONFIG += staticlib
}

SOURCES += \
    modules/googlemock/src/gmock-all.cc \
    modules/googlemock/src/gmock-cardinalities.cc \
    modules/googlemock/src/gmock.cc \
    modules/googlemock/src/gmock-internal-utils.cc \
    modules/googlemock/src/gmock_main.cc \
    modules/googlemock/src/gmock-matchers.cc \
    modules/googlemock/src/gmock-spec-builders.cc

HEADERS += \
    modules/googlemock/include/gmock/gmock-actions.h \
    modules/googlemock/include/gmock/gmock-cardinalities.h \
    modules/googlemock/include/gmock/gmock-generated-actions.h \
    modules/googlemock/include/gmock/gmock-generated-function-mockers.h \
    modules/googlemock/include/gmock/gmock-generated-matchers.h \
    modules/googlemock/include/gmock/gmock-generated-nice-strict.h \
    modules/googlemock/include/gmock/gmock.h \
    modules/googlemock/include/gmock/gmock-matchers.h \
    modules/googlemock/include/gmock/gmock-more-actions.h \
    modules/googlemock/include/gmock/gmock-more-matchers.h \
    modules/googlemock/include/gmock/gmock-spec-builders.h


include(googlemock.pri)


# Add googletest
unix: LIBS += -L$$OUT_PWD/../googletest/ -lgoogletest
unix: PRE_TARGETDEPS += $$OUT_PWD/../googletest/libgoogletest.a
include(../googletest/googletest.pri)
