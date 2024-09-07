#!/bin/bash

# Function to create files
create_files() {
    local base_path=$1

    # Prompt for the markdown file name
    while true; do
        read -p "Enter the markdown file name (without extension): " md_file_name
        [[ -n "$md_file_name" ]] && break
        echo "File name cannot be empty. Please try again."
    done

    # Create the markdown file inside the base path
    touch "$base_path/$md_file_name.md"

    # Prompt for the solution file format
    while true; do
        read -p "Enter the solution file format (e.g., py, js, rb): " format
        [[ -n "$format" ]] && break
        echo "File format cannot be empty. Please try again."
    done

    # Create the solution file inside the base path
    touch "$base_path/solution.$format"

    echo "Files created successfully at $base_path."
}

# Function to create a folder
create_folder() {
    local group_path=$1
    local folder_n

    while true; do
        read -p "Enter the folder name: " folder_n
        [[ -n "$folder_n" ]] && break
        echo "Folder name cannot be empty. Please try again."
    done

    mkdir -p "$group_path/$folder_n"
    echo "Folder '$folder_n' created successfully inside '$group_path'."
    create_files "$group_path/$folder_n"
}

# Main script
read -p "Are you creating a folder group (FG) or a single folder (F)? (Enter 'FG' or 'F'): " folder_type

if [[ "$folder_type" == "FG" || "$folder_type" == "F" ]]; then
    while true; do
        read -p "Enter the folder group range (e.g., 1-100, 101-200): " group_range
        [[ -n "$group_range" ]] && break
        echo "Group range cannot be empty. Please try again."
    done

    mkdir -p "$group_range"
    echo "Folder group '$group_range' created successfully."

    if [[ "$folder_type" == "FG" ]]; then
        read -p "Do you want to create a folder inside the group? (yes/no): " create_n
        if [[ "$create_n" == "yes" ]]; then
            create_folder "$group_range"
        fi
    elif [[ "$folder_type" == "F" ]]; then
        create_folder "$group_range"
    fi
else
    echo "Invalid option. Please enter 'FG' or 'F'."
    exit 1
fi