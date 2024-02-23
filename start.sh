if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Helper-Botz/TG-MULTI-BOT.git /TG-MULTI-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TG-MULTI-BOT
fi
apt update && apt upgrade -y
apt install ffmpeg -y
pip3 install -U -r requirements.txt
echo "Starting the Bot...."
python3 loader.py
