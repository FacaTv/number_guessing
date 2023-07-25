#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER=$(( $RANDOM % 1000 + 1))

GET_USER(){

  echo "Enter your username:"
  read USERNAME
  USER_LENGTH=$(echo $USERNAME | wc -c)
  if [[ $USER_LENGTH -gt 22 ]]
  then
    GET_USER
  fi
}
GET_USER
USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

if [[ -z $USER ]]
then
    INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
else
    GAMES=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
    BEST=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
    echo "Welcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST guesses."
fi
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

GUESS_COUNT=1

START(){

 read GUESS


  while [[ $GUESS =~ ^[+-]?[0-9]+$ && ! $GUESS -eq $NUMBER ]]
  do

    ((GUESS_COUNT ++))

    if [[ $GUESS -gt $NUMBER ]]
    then

      echo  "It's lower than that, guess again:"
      read GUESS

    elif [[ $GUESS -lt $NUMBER ]]
    then

      echo  "It's higher than that, guess again:"
      read GUESS

    fi
  done

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
      echo  "That is not an integer, guess again:"
      ((GUESS_COUNT ++))
      START
  fi
}

echo "Guess the secret number between 1 and 1000:"
START

INSERT_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $GUESS_COUNT)")
echo "You guessed it in $GUESS_COUNT tries. The secret number was $NUMBER. Nice job!"
