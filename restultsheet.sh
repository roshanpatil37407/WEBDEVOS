#!/bin/bash

# Read student names and marks from input files
students=$(cat students.txt)
marks=$(cat marks.txt)

# Combine student names and marks using paste command
paste -d' ' students.txt marks.txt > combined.txt

# Calculate total number of students
total_students=$(wc -l < students.txt)

# Display the result sheet header
echo "Result Sheet" > result_sheet.txt
echo "-----------------" >> result_sheet.txt

# Display individual results and calculate total marks
total_marks=0
for ((i=1; i<=$total_students; i++)); do
    student_info=$(head -n $i combined.txt | tail -n 1)
    student_name=$(echo $student_info | cut -d' ' -f1)
    student_marks=$(echo $student_info | cut -d' ' -f2)
    echo "$student_name: $student_marks" >> result_sheet.txt
    total_marks=$((total_marks + student_marks))
done

# Calculate average marks
average_marks=$((total_marks / total_students))

# Display total and average marks in the result sheet
echo "-----------------" >> result_sheet.txt
echo "Total Marks: $total_marks" >> result_sheet.txt
echo "Average Marks: $average_marks" >> result_sheet.txt

# Clean up temporary files
rm combined.txt

echo "Result sheet created and saved in result_sheet.txt."
