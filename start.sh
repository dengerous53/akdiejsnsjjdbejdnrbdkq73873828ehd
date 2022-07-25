if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Badsha323/my-love5.git /my-love5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /my-love5
fi
cd /my-love5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
