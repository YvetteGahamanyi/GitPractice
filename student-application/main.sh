# creating a menu with the following options
# Running a forever loop using while statement
# This loop will run until select the exit option.
# User will be asked to select option again and again
while true;
do
	echo "SELECT YOUR FAVORITE FRUIT";
echo "1. Apple"
echo "2. Grapes"
echo "3. Mango"
echo "4. Exit from menu "
echo -n "Enter your menu choice [1-4]: "

# reading choice
read choice

# case statement is used to compare one value with the multiple cases.
case $choice in
  # Pattern 1
  1)  echo "You have selected the option 1"
      echo "Selected Fruit is Apple. ";;
  # Pattern 2
  2)  echo "You have selected the option 2"
      echo "Selected Fruit is Grapes. ";;
  # Pattern 3
  3)  echo "You have selected the option 3"
      echo "Selected Fruit is Mango. ";;    
  # Pattern 4
  4)  echo "Quitting ..."
      exit;;
  # Default Pattern
  *) echo "invalid option";;
  
esac
done
