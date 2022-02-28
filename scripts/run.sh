if [ $# -ne 1 ]
then
    echo "Error: you should inform file name."
    exit
fi

RELATIVE_PATH="`dirname \"$0\"`"
SCRIPT_PATH=$(realpath $RELATIVE_PATH)
PROJECT_PATH=$(realpath $SCRIPT_PATH/..)
PROGRAM='program'

cd $PROJECT_PATH

rm -rf program

swipl -o $PROGRAM -c str8ts.pl
./$PROGRAM

rm -rf program