IB Gateway
===

Creates a completely self-contained Docker container of IB Gateway. Exposes a VNC service on port 5900 and 7496/7497 for the IB API.

Usage
---

1. `git clone git@github.com:ryanclouser/docker-ibgateway.git`
1. `cd docker-ibgateway`
1. Configure IB Gateway on a local system.
   - Copy `jts.ini` to the cloned repository folder.
   - Copy `ibg.xml` from your profile folder into the cloned repository folder (it's inside the very long folder name). This contains your account settings (like enabling/disabling read-only mode).
1. Edit `Dockerfile` and change the `PROFILE` variable to the name of your profile.
1. Edit the VNC password in `Dockerfile` if needed.
1. `docker build -t ibgateway .`
1. `docker run -d --rm --name ibgateway -e ARGS="username=IB_USERNAME password=IB_PASSWORD" -p 5900:5900 -p 7496:7496 -p 7497:7497 ibgateway`

If paper trading, a 'return' keystroke will be sent after 15s to skip the warning dialog.

---

<img src="https://ryanclouser.com/images/trading/ibgateway.png">