function check_guess {
    if [[ $1 -lt $2 ]]
    then
        echo "Too low."
    elif [[ $1 -gt $2 ]]
    then
        echo "Too high."
    else
        echo "Congratulations! You guessed the correct number of files!"
        exit 0
    fi
}

number_of_files=$(ls -1 | wc -l)

while true
do
    echo "Guess the number of files in the current directory:"
    read guess
    check_guess $guess $number_of_files
done
