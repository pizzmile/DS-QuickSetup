# Update packages
echo "1. Updating packages"
sudo apt-get update -y
sudo apt-get upgrade -y

# Install Python
echo "2. Installing Python"
sudo apt-get install -y python3-pip
# Create first virtual environment
echo "3. Creating first virtual environment: myenv"
python3 -m venv ~/myvenv
# Activate first virtual environment
source ~/myvenv/bin/activate
# Install Python requirements
echo "4. Installing Python requirements"
pip install pandas numpy matplotlib seaborn scikit-learn statsmodel jupyter
pip freeze > requirements.txt

# Install R
echo "5. Installing R"
sudo apt-get install -y r-base

echo "Done!"