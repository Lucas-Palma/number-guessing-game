#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"



echo Enter your username:
read USERNAME
DB_USERNAME=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
if [[ $DB_USERNAME ]]
then
  echo "Welcome back, $USERNAME! You have played <games_played> games, and your best game took <best_game> guesses."
else
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
fi
  UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE username = '$USERNAME'")
  SET_TRIES=$($PSQL "UPDATE users SET tries = 0 WHERE username = '$USERNAME'")
echo "Guess the secret number between 1 and 1000:"
DIV=$((1000+1))
RANDOM_NUMBER=$(($RANDOM%$DIV))

NUMBER_GUESS() {
  UPDATE_TRIES=$($PSQL "UPDATE users SET tries = tries + 1 WHERE username = '$USERNAME'")
  TRIES=$($PSQL "SELECT tries FROM users WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username = '$USERNAME'")
  
  read NUMBER
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    NUMBER_GUESS
  fi

  if [[ $NUMBER = $RANDOM_NUMBER ]]
  then
    if [[ -z $BEST_GAME ]]
    then
      UPDATE_BEST_GAME=$($PSQL "UPDATE users SET best_game = $TRIES WHERE username = '$USERNAME'")
    fi
    if [[ $TRIES < $BEST_GAME ]]
    then
      UPDATE_BEST_GAME=$($PSQL "UPDATE users SET best_game = $TRIES WHERE username = '$USERNAME'")
    fi
    BEST_GAME_UPDATED=$($PSQL "SELECT best_game FROM users WHERE username = '$USERNAME'")
    echo "You guessed it in $BEST_GAME_UPDATED tries. The secret number was $RANDOM_NUMBER. Nice job!"
  exit
  fi
  if [[ $NUMBER > $RANDOM_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    NUMBER_GUESS
  else 
    echo "It's higher than that, guess again:"
    NUMBER_GUESS
  fi
}

NUMBER_GUESS
