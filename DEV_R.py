from app_core import App_Functions
import tkinter as tk
from tkinter import ttk

# Dictionary to map function names to actual functions
functions = {
    "Function 1": App_Functions.function_1,
    "Function 2": App_Functions.function_2,
    "Function 3": App_Functions.function_3,
    "Function 4": App_Functions.function_4,
    "Function 5": App_Functions.function_5,
}

# Function to run the selected function and display the output
def run_function():
    selected_function = dropdown_var.get()
    if selected_function in functions:
        output = functions[selected_function]()
        output_text.config(state=tk.NORMAL)
        output_text.insert(tk.END, output + "\n")  # Append output with a newline
        output_text.config(state=tk.DISABLED)

# Function to clear the text box
def clear_text():
    output_text.config(state=tk.NORMAL)
    output_text.delete(1.0, tk.END)  # Clear all text in the text box
    output_text.config(state=tk.DISABLED)

# Create the main window
root = tk.Tk()
root.title("DEV R")
root.iconbitmap('icons/Window_Icon.ico')

# Set the window dimensions (width x height)
root.geometry("750x500")  # Change the dimensions here

# Add title to the dropbox
title_label = tk.Label(root, text="Select a Function:")
title_label.pack(pady=(10, 0))

# Create a dropdown menu
dropdown_var = tk.StringVar(value=list(functions.keys())[0])  # Default to the first function
dropdown = ttk.Combobox(root, textvariable=dropdown_var, values=list(functions.keys()), width=30)  # Set a fixed width
dropdown.pack(padx=100)  # Pack with padding, no fill

# Load images for buttons (icons for buttons)

run_image = tk.PhotoImage(file="icons/run_icon.png")  # Replace with your image file
clear_image = tk.PhotoImage(file="icons/clear_icon.png")  # Replace with your image file


# Create a Run button with a specific aspect ratio
run_button = tk.Button(root,
                       text="Run",
                       command=run_function,
                       width=200,
                       height=20,
                       image=run_image,
                       compound='left')
run_button.pack(pady=5)

# Create a Clear button with a specific aspect ratio
clear_button = tk.Button(root,
                         text="Clear All Output",
                         command=clear_text,
                         width=200,
                         height=20,
                         image = clear_image,
                         compound = 'left')
clear_button.pack(pady=5)

# Create a text box to display output
output_text = tk.Text(root, bd=15, relief=tk.SUNKEN)  # Add border width and relief style
output_text.pack(pady=10, fill=tk.BOTH, expand=True)  # Fill both horizontally and vertically


# Start the Tkinter event loop
root.mainloop()
