# creating a menu with the following options
# Running a forever loop using while statement
# This loop will run until select the exit option.
# User will be asked to select option again and again
while true;
do
	echo "SELECT YOUR FAVORITE FRUIT";
echo "1. Add student"
echo "2. View students"
echo "3. Update student"
echo "4. Edit student "
echo "5. Search and Sort"
echo "6. exit"
echo -n "Enter your menu choice [1-6]: "

# reading choice
read choice

# case statement is used to compare one value with the multiple cases.
case $choice in
  
  1)  echo "Add a student"
     ;;
  
  2)  echo "List of students"
     ;;
  
  3)  echo "Update student"
      ;;

  4)  echo "Edit student"
      ;;
5)  echo "Searcg and sort"
      ;;

 
  6)  echo "Thanks"
      exit;;
  # Default Pattern
  *) echo "invalid option";;
  
esac
done
