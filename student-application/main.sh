#!/usr/bin/env bash

students_file="students-list_1023.txt"

while true; do
    echo "------------------"
    echo "ALU Registration System"
    echo "------------------"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record"
    echo "4. Update student record"
    echo "5. Select student emails"
    echo "6. Exit"

    read -p "Enter your choice: " choice

    case "$choice" in
        1)
            read -p "Enter student email: " email
            read -p "Enter student age: " age
            read -p "Enter student ID: " student_id

            # Create student record
            echo "Email: $email, Age: $age, ID: $student_id" >> "$students_file"
            echo "Student record created."
            ;;
        2)
            # View all students
            echo "List of students:"
            cat "$students_file"
            ;;
        3)
            read -p "Enter student ID to delete: " delete_id

            # Delete student record by student ID
            sed -i "/ID: $delete_id/d" "$students_file"
            echo "Student record deleted."
            ;;
        4)
            read -p "Enter student ID to update: " update_id

            # Update student record by student ID
            read -p "Enter updated email: " updated_email
            read -p "Enter updated age: " updated_age

            sed -i "/ID: $update_id/c\Email: $updated_email, Age: $updated_age, ID: $update_id" "$students_file"
            echo "Student record updated."
            ;;
        5)
            # Select student emails, sort them and save to file
            ./select-emails.sh
            ;;
        6)
            # Exit the application
            echo "Exiting the application."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
