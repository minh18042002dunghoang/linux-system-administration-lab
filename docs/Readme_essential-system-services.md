Essential System Services

## Overview

This project demonstrates the implementation of an automated backup solution using a Bash script, a systemd service, and a systemd timer on AlmaLinux.
The objective is to ensure that important system configuration files and application data are backed up automatically every day without manual intervention.

---

## Requirements

The backup solution must:

* Create compressed backup archives of:

  * /etc
  * /srv/dung
* Store backup files in:

  * /var/backups/dung
* Generate backup filenames using the format:

```text
dung-config-YYYYMMDD.tar.gz
```

* Run automatically every day at **23:10**
* Remain functional after system reboot

---

## Implementation

### Backup Script

A Bash script was created at:

```bash
/usr/local/bin/dung_backup.sh
```

The script performs the following tasks:

1. Creates the backup directory if it does not exist.
2. Archives and compresses the required directories.
3. Generates a date-based backup filename.
4. Writes execution logs to a dedicated log file.

### Systemd Service

A systemd service unit was created:

```bash
/etc/systemd/system/dung_backup.service
```

This service executes the backup script whenever it is called manually or by the timer.

### Systemd Timer

A systemd timer unit was created:

```bash
/etc/systemd/system/dung-backup.timer
```

The timer is configured to trigger the backup service every day at:

```text
23:10
```

The timer is enabled to start automatically when the system boots.

---

## Verification

The following checks were performed:

* Verified script execution permissions.
* Tested the backup process manually using systemctl.
* Confirmed successful archive creation.
* Verified timer scheduling using:

```bash
systemctl list-timers
```

## Result

The automated backup solution was successfully deployed.

The system now performs daily backups of critical configuration and service data at 23:10, stores compressed archives in the designated backup directory, and preserves the schedule across system reboots using systemd timer functionality.

