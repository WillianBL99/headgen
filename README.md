# HeadGen
### This is a simple project with shell script to generate a header for yours scripts.
##
## Usage:
### 1. Clone this repository
```bash
git clone https://github.com/WillianBL99/headgen.git
```
### 2. Enter in the directory
```bash
cd ./headgen
```
### 3. Run the script to install
```bash
chmod +x install.sh
sudo ./install.sh
```
### 4. Run the script to generate a header
```bash
# headgen <path to logo> <options...>
headgen "$(pwd)/logo.png" "# HeadGen #" "A header generator for scripts" "Author: Uilian" "version: 1.0.0" 
```

## Options:
- `--help` or `-h`: Show the help message
