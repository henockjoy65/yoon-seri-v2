if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/henockjoy65/yoon-seri-v2.git /yoon-seri-v2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /yoon-seri-v2
fi
cd /yoon-seri-v2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
