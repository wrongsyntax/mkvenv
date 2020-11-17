GREEN='\033[1;32m'
NC='\033[0m'
mkvenv() {
    if [ $# -eq 1 ]
        then
            echo "Working..."; virtualenv -q "$1"; cd "$1"; activate; mkdir project; echo -e "${GREEN}Virtualenv $1 created. Use project/ for working.${NC}"
    elif [ $# -eq 2 ]
        then
            virtualenv -q "$1"; cd "$1"; activate; mkdir "$2"; echo -e "${GREEN}Virtualenv $1 created. Use $2/ for working.${NC}"
    else
        echo -e "Usage:\n  mkvenv <env_name> [dir_name] \n\tenv_name\tName of new virtual environment. \n\tdir_name\tOptional name for project working directory."
    fi
}
