message=$1
mode=$2
if [ "$message" != "" ] ; then 
  if  [ "$mode" = "production" ]  || [ "$mode" = "development" ]; then 
    git add .
    git commit -m "$message"
    git push -u origin $mode
  else
    echo "Second parameter should be the mode (development or production)"
  fi
else
  echo "First parameter is the message and cannot be empty."
fi
