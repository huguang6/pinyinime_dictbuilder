QT = core

CONFIG += c++17 cmdline

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

DESTDIR = bin

SOURCES += \
        googlepinyin/dictbuilder.cpp \
        googlepinyin/dictlist.cpp \
        googlepinyin/dicttrie.cpp \
        googlepinyin/lpicache.cpp \
        googlepinyin/matrixsearch.cpp \
        googlepinyin/mystdlib.cpp \
        googlepinyin/ngram.cpp \
        googlepinyin/pinyinime.cpp \
        googlepinyin/searchutility.cpp \
        googlepinyin/spellingtable.cpp \
        googlepinyin/spellingtrie.cpp \
        googlepinyin/splparser.cpp \
        googlepinyin/sync.cpp \
        googlepinyin/userdict.cpp \
        googlepinyin/utf16char.cpp \
        googlepinyin/utf16reader.cpp \
        main.cpp

HEADERS += \
    googlepinyin/atomdictbase.h \
    googlepinyin/dictbuilder.h \
    googlepinyin/dictdef.h \
    googlepinyin/dictlist.h \
    googlepinyin/dicttrie.h \
    googlepinyin/lpicache.h \
    googlepinyin/matrixsearch.h \
    googlepinyin/mystdlib.h \
    googlepinyin/ngram.h \
    googlepinyin/pinyinime.h \
    googlepinyin/searchutility.h \
    googlepinyin/spellingtable.h \
    googlepinyin/spellingtrie.h \
    googlepinyin/splparser.h \
    googlepinyin/sync.h \
    googlepinyin/userdict.h \
    googlepinyin/utf16char.h \
    googlepinyin/utf16reader.h


LIBS += -L"$$PWD/lib/" -lgooglepinyin
include(googlepinyin/googlepinyin.pri)
