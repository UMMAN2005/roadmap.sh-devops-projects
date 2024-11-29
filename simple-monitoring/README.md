# Basic Monitoring Dashboard with Netdata

This project demonstrates setting up a basic monitoring dashboard using **Netdata**, a powerful, real-time performance and health monitoring tool for systems and applications.

## Project Overview

This project involves:

1. Installing **Netdata** on a Linux system.
2. Configuring Netdata to monitor system metrics such as:
   - CPU usage
   - Memory usage
   - Disk I/O
3. Accessing the Netdata dashboard via a web browser.
4. Customizing the dashboard (e.g., adding a new chart or modifying an existing one).
5. Setting up an alert for a specific metric (e.g., CPU usage above 80%).

Additionally, automation scripts are provided to simplify installation, testing, and cleanup processes.

---

## Requirements

- **Linux system** with internet access.
- Basic knowledge of shell scripting.
- **Netdata** agent installed and configured.

To learn more about Netdata, visit the [official documentation](https://learn.netdata.cloud/).

---

## Setup Instructions

1. Clone this repository:

   ```bash
   git clone [<repository-url>](https://github.com/UMMAN2005/roadmap.sh-devops-projects)
   cd roadmap.sh-devops-projects/simple-monitoring
   ```

2. Run the `setup.sh` script to install Netdata:

   ```bash
   bash setup.sh
   ```

3. Open your web browser and access the Netdata dashboard at:

   ```plaintext
   http://<your-server-ip>:19999
   ```

4. Customize the dashboard:

   - Add a new chart or modify an existing one by following [Netdata customization docs](https://learn.netdata.cloud/docs/agent/web/gui).

5. Set up an alert:
   - Create an alert for a specific metric (e.g., CPU usage above 80%).

---

## Testing the Dashboard

Use the `test_dashboard.sh` script to simulate load and observe the system metrics in real-time:

```bash
bash test_dashboard.sh
```

---

## Cleanup

Run the `cleanup.sh` script to remove the Netdata agent and clean up the system:

```bash
bash cleanup.sh
```

---

## Automation Scripts

- **`setup.sh`**: Installs Netdata and configures the system.
- **`test_dashboard.sh`**: Simulates system load to test the monitoring dashboard.
- **`cleanup.sh`**: Removes Netdata and cleans up any related configurations.

## Additional Files

- **`custom-chart.sh`**: Very basic custom chart sample.
- **`cpu.conf`**: Custom alarm.

## Details

For more information about the script and its features, visit the [project page](https://roadmap.sh/projects/simple-monitoring-dashboard).
