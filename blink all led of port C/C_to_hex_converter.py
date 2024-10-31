import subprocess

# Define the path to the XC8 compiler and specify the correct arguments
command = r"C:\Program Files\Microchip\xc8\v2.50\bin\xc8.exe"
arguments = ["--chip=18F4580", "main.c"]

# Run the command with arguments
subprocess.run([command] + arguments)
