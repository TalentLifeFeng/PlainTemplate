#!/bin/sh
clang_format=$SRCROOT/bin/clang-format
run_clangformat() {
    local filename="${1}"
    echo $filename
    cd $SRCROOT
    if [ ! -f "$filename" ]; then
    return
    fi
    FILE_ALIAS='file'

    if [[ "${filename##*.}" == "m" || "${filename##*.}" == "h" || "${filename##*.}" == "mm" || "${filename##*.}" == "hpp" || "${filename##*.}" == "cpp" || "${filename##*.}" == "cc" ]]; then
    echo "$filename"
    $clang_format -i -style=$FILE_ALIAS "$filename"
    fi
}


#git ls-files -om --exclude-from=.gitignore | grep "G7_AI/" | while read filename; do run_clangformat "${filename}"; done
git diff --name-only | grep "Source/" | while read filename; do run_clangformat "${filename}"; done
