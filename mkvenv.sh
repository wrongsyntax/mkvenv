VERSION="0.1 pre-release"

declare -a ARGS
args=(
    "\tenv_name\t\tName of new virtual environment."
    "\tdir_name\t\tOptional: name for project working directory."
    "\t-v, --version\t\tPrint the version number of mkvenv."
    # "\t-l\t\t\tStore output in file"
)

printUsage() {
    echo -e "Usage:\n  mkvenv [options] <env_name> [dir_name]"
    for i in "${args[@]}" ; do
        echo -e "$i"
    done
}

mkvenv() {
    GREEN="\033[1;32m"
    NC="\033[0m"
    if [ "$#" -eq 1 ]; then
        if [ "$1" = "-v" ]  || [ "$1" = "--version" ]; then
            echo -e "mkvenv ${VERSION}"
        else
            virtualenv -q "$1" &&
            cd "$1" &&
            source bin/activate &&
            mkdir "$1Root" &&
            echo -e "${GREEN}Virtualenv "$1" created. Use "$1Root/" for working.${NC}"
        fi
    elif [ "$#" -eq 2 ]; then
        virtualenv -q "$1" &&
        cd "$1" &&
        source bin/activate &&
        mkdir "$2Root" &&
        echo -e "${GREEN}Virtualenv "$1" created. Use "$2Root/" for working.${NC}"
    else
        printUsage
    fi
}
