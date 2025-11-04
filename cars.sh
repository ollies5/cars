#! /bin/bash
# cars.sh
# Oliver Shepherd

inventory_file="my_old_cars"

touch "$inventory_file"

while true; do
    echo ""
    echo "=== Old Cars Inventory ==="
    echo "1. Add a car"
    echo "2. List all cars"
    echo "3. Quit"
    echo ""
    read -p -r "Enter your choice (1-3): " choice || break
    choice=$(echo "$choice" | tr -d '\r')
    
    case $choice in
        1)
            echo ""
            read -p -r "Enter the year: " year || break
            read -p -r "Enter the make: " make || break
            read -p -r "Enter the model: " model || break
            year=$(echo "$year" | tr -d '\r')
            make=$(echo "$make" | tr -d '\r')
            model=$(echo "$model" | tr -d '\r')
            
            echo "$year:$make:$model" >> "$inventory_file"
            echo "Car added successfully!"
            ;;
        2)
            echo ""
            echo "=== Cars in Inventory (sorted by year) ==="
            if [ -s "$inventory_file" ]; then
                sort -t: -k1 -n "$inventory_file"
            else
                echo "No cars in inventory yet."
            fi
            ;;
        3)
            echo ""
            echo "Goodbye"
            break
            ;;
        *)
            echo ""
            echo "Invalid choice. Please enter 1, 2, or 3."
            ;;
    esac
done

