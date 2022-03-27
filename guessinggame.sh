n_files=$(ls . | wc -l)

function check_value {
	if [[ $1 -gt $2 ]]
	then

	 echo "your guess is greater, try again:"

	else 
	   echo "your guess is less than, try again:"
	fi
}

echo "Enter a guess of how many files are in the current directory:"
read response
#echo "You entered: $response"


while [[ $n_files -ne $response ]]
do
	check_value $n_files $response
 	read response
done
echo "you are right! congrats"


