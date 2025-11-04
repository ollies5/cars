# README for Cars Script

## Author Information
- **Name:** Oliver Shepherd
- **Course:** CPSC 298 - Computer Science Colloquium: Introduction to *Nix 
- **Assignment:** Cars Script
- **Date:** 11/3/2025

## Program Description
This script helps users maintain an inventory of old cars. It has a menu with three options: adding a car to the inventory, listing all cars sorted by year, and quitting the program.  
Each car record contains three fields (Year, Make, Model) separated by colons and stored in the `my_old_cars` file.  

## Example Output
When running the script interactively:
```
=== Old Cars Inventory ===
1. Add a car
2. List all cars
3. Quit

Enter your choice (1-3): 1

Enter the year: 1967
Enter the make: Ford
Enter the model: Mustang
Car added successfully!

=== Old Cars Inventory ===
1. Add a car
2. List all cars
3. Quit

Enter your choice (1-3): 2

=== Cars in Inventory (sorted by year) ===
1948:Ford:sedan
1952:Chevrolet:coupe
1960:Ford:Mustang
1967:Ford:Mustang
1972:Chevrolet:Corvette

=== Old Cars Inventory ===
1. Add a car
2. List all cars
3. Quit

Enter your choice (1-3): 3

Goodbye
```

## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with an input file (for example, `cars-input`):
```bash
./cars.sh < cars-input
```

## How the Script Works
1. The script begins with a shebang (`#! /bin/bash`) and identifying comments.  
2. It creates or touches the **inventory file** (`my_old_cars`) to make sure it exists.  
3. A while loop continuously displays the menu until the user chooses to quit.  
4. User input is processed using a case statement with three options:
   - **Option 1 (Add):** Prompts for year, make, and model separately, then adds the record to the inventory file.
   - **Option 2 (List):** Displays all cars sorted by year using the `sort` command.
   - **Option 3 (Quit):** Displays a goodbye message and exits the loop.

## Testing Results
When tested with the input file `cars-input` containing:
```
1
1984
Toyota
Supra
2
3
```
The script outputs:
```
=== Old Cars Inventory ===
1. Add a car
2. List all cars
3. Quit

Enter your choice (1-3): 
Enter the year: 
Enter the make: 
Enter the model: Car added successfully!

=== Old Cars Inventory ===
1. Add a car
2. List all cars
3. Quit

Enter your choice (1-3): 
=== Cars in Inventory (sorted by year) ===
1948:Ford:sedan
1952:Chevrolet:coupe
1960:Ford:Mustang
1972:Chevrolet:Corvette
1984:Toyota:Supra

=== Old Cars Inventory ===
1. Add a car
2. List all cars
3. Quit

Enter your choice (1-3): 
Goodbye
```

## Example Validations
| Input | Output Behavior |
|--------|------------------|
| 1, 2000, Honda, Civic, 3 | Adds 2000:Honda:Civic to inventory, then quits |
| 2 (with empty file) | Displays "No cars in inventory yet." |
| 4 | Displays "Invalid choice. Please enter 1, 2, or 3." |

## File Format
The inventory file (`my_old_cars`) stores one car per line with the format:
```
YEAR:MAKE:MODEL
```
Example:
```
1967:Ford:Mustang
1984:Toyota:Supra
1972:Chevrolet:Corvette
```

## Resources
Class slides

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
