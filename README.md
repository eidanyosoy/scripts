# Useful Scripts and How to Use Them

# mergerfs-rclone-update.sh
Interactive menu to update Rclone and mergerfs
```
curl https://raw.githubusercontent.com/eidanyosoy/scripts/master/mergerfs-rclone-update.sh | sudo bash
```
# wanchors.sh | wanchplus.sh
Watches anchor files. If anchors are missing will shut down docker apps like plex to prevent library being emptied. Use cron to run script at desired interval, eg minutely. Use wanchplus.sh to also restart those dockers and the merger.

```
* * * * * /home/max/scripts/wanchors.sh
```

# plex_futures.sh
Resets date added to plex to now if item was added as a future date. Set DB Path and docker name variables before execution.
```
curl https://raw.githubusercontent.com/eidanyosoy/scripts/master/plex_futures.sh | sudo bash
```

# plex_stuckers.sh
Resets date added to plex to airdate or premiere date. Set DB Path and docker name variables before execution.
```
curl https://raw.githubusercontent.com/eidanyosoy/scripts/master/plex_stuckers.sh | sudo bash
```
# useradd.sh
This will display your sudo user account if you have one, if you do not it will allow you to create one.
```
curl https://raw.githubusercontent.com/eidanyosoy/scripts/master/useradd.sh | sudo bash
```
# plexstats.sh
This will display information about your Plex library using its database once you have configured your Plex Paths. If you are using PTS or PGBlitz forks then the path should be set correctly.
```
curl https://raw.githubusercontent.com/eidanyosoy/scripts/master/plexstats.sh | sudo bash
```
