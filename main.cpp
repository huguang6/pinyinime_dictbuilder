#include <QCoreApplication>

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
// #include <unistd.h>
#include "dicttrie.h"

using namespace ime_pinyin;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    DictTrie* dict_trie = new DictTrie();
    bool success;
    if (argc >= 3)
        success = dict_trie->build_dict(argv[1], argv[2]);
    else
        success = dict_trie->build_dict("./dict/rawdict_utf16_65105_freq.txt",
                                        "./dict/valid_utf16.txt");

    if (success) {
        printf("Build dictionary successfully.\n");
    } else {
        printf("Build dictionary unsuccessfully.\n");
        return -1;
    }

    success = dict_trie->save_dict("./dict/dict_pinyin.dat");

    if (success) {
        printf("Save dictionary successfully.\n");
    } else {
        printf("Save dictionary unsuccessfully.\n");
        return -1;
    }

    return a.exec();
}
