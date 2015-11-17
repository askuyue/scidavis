######################################################################
# Automatically generated by qmake (2.01a) Sun Feb 9 19:16:01 2014
######################################################################

TEMPLATE = app
TARGET = readWriteProject
DEPENDPATH += .
INCLUDEPATH += . ../libscidavis ../libscidavis/src ../tmp/scidavis ../scidavis
LIBS += -L ../libscidavis -lscidavis

POST_TARGETDEPS=../libscidavis/libscidavis.a

CONFIG        += qt warn_on exceptions opengl thread zlib
QT            += opengl qt3support network svg xml
MOC_DIR        = ../tmp/scidavis
OBJECTS_DIR    = ../tmp/scidavis

include(../config.pri)
python {
  unix {
        macx {
        LIBS += -framework Python
      } else {
        LIBS += $$system(python -c "\"from distutils import sysconfig; print '-lpython'+sysconfig.get_config_var('VERSION')\"")
      }
  }
}

liborigin {
  LIBS += ../3rdparty/liborigin/liborigin.a
  POST_TARGETDEPS += ../3rdparty/liborigin/liborigin.a
}

QT+=testlib

# Input
HEADERS += readWriteProject.h
SOURCES += readWriteProject.cpp

########### Future code backported from the aspect framework ##################
DEFINES += LEGACY_CODE_0_2_x
INCLUDEPATH += ../libscidavis/src/future