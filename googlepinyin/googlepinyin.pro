QT       -= gui

TARGET = googlepinyin
TEMPLATE = lib
CONFIG += debug_and_release warn_off static

# properties
ROOT_DIR =../../../
CURRENT_TEMPLATE = $$TEMPLATE

include(../../../common.pri)
include(googlepinyin.pri)

SOURCES += \
    $$PWD/dictbuilder.cpp \
    $$PWD/dictlist.cpp \
    $$PWD/dicttrie.cpp \
    $$PWD/lpicache.cpp \
    $$PWD/matrixsearch.cpp \
    $$PWD/mystdlib.cpp \
    $$PWD/ngram.cpp \
    $$PWD/pinyinime.cpp \
    $$PWD/searchutility.cpp \
    $$PWD/spellingtable.cpp \
    $$PWD/spellingtrie.cpp \
    $$PWD/splparser.cpp \
    $$PWD/sync.cpp \
    $$PWD/userdict.cpp \
    $$PWD/utf16char.cpp \
    $$PWD/utf16reader.cpp

HEADERS += \
    $$PWD/atomdictbase.h \
    $$PWD/dictbuilder.h \
    $$PWD/dictdef.h \
    $$PWD/dictlist.h \
    $$PWD/dicttrie.h \
    $$PWD/lpicache.h \
    $$PWD/matrixsearch.h \
    $$PWD/mystdlib.h \
    $$PWD/ngram.h \
    $$PWD/pinyinime.h \
    $$PWD/searchutility.h \
    $$PWD/spellingtable.h \
    $$PWD/spellingtrie.h \
    $$PWD/splparser.h \
    $$PWD/sync.h \
    $$PWD/userdict.h \
    $$PWD/utf16char.h \
    $$PWD/utf16reader.h
