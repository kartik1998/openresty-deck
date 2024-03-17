# #!/bin/bash

if [ -d "venv" ]; then
    echo "venv already exists, that's fine ..."
else
	  echo "creating venv folder..."
		python3 -m venv venv
    # Add your commands here that you want to execute if the "venv" folder does not exist
fi

#activate
source venv/bin/activate
pip install --no-cache-dir -r requirements.txt

echo "starting up the flask server..."
python flask_app.py
