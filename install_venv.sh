# Create a virtual environment named NewsAI
python3 -m venv linuxvenv
# Activate the virtual environment (use source command for Ubuntu)
source linuxvenv/bin/activate

# Upgrade pip within the virtual environment
python -m pip install --upgrade pip

# Install basic libraries
pip install -r requirements.txt

