⸻

🛑 Auto-Shutdown Script for GCP VMs

A lightweight script that automatically shuts down a Google Cloud Platform (GCP) VM if no SSH users are logged in for a specified period.

✅ Tested on Rocky Linux

⸻

📦 Prerequisites

Install required packages:

sudo dnf install bc sysstat -y


⸻

⚙️ Installation

git clone https://github.com/pranav-nfer/VM-shutdown-script.git
cd VM-shutdown-script
sudo ./install.sh

This will:
	•	Copy ashutdown to /usr/local/bin/
	•	Copy ashutdown.service to /etc/systemd/system/
	•	Reload systemd and start the service

⸻

🔄 How It Works
	•	Checks for active SSH sessions every 5 seconds
	•	If no users are logged in, it increments a counter
	•	After 20 minutes of inactivity (240 checks), the VM is shut down

⸻

🧰 Service Commands

Action	Command
Start	sudo systemctl start ashutdown.service
Stop	sudo systemctl stop ashutdown.service
Status	systemctl status ashutdown.service
View logs	sudo journalctl -u ashutdown.service -f


⸻

✏️ Customization

Edit the ashutdown script to change:
	•	SLEEP_INTERVAL_SECONDS – check frequency
	•	HALT_THRESHOLD – number of idle checks before shutdown

Then reload the service:

sudo systemctl daemon-reload
sudo systemctl restart ashutdown.service


⸻
