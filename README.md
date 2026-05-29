# Linux System Administration Lab

## Overview
This project simulates a real-world Linux system administration environment based on LPIC-1 objectives using AlmaLinux.

## Environment
- AlmaLinux 10
- VMware
- Bash Shell
- Git & GitHub

## Main Tasks
System Installation & Configuration

    - Installed and configured AlmaLinux Minimal Server
    - Configured hostname, timezone, boot targets, and system information reporting
    - Managed system startup configuration and server environment settings

Storage Management

    - Created and managed disk partitions
    - Configured Logical Volume Manager (LVM)
    - Created Physical Volumes (PV), Volume Groups (VG), and Logical Volumes (LV)
    - Extended logical volumes and managed filesystem growth
    - Configured persistent mounting using /etc/fstab

Linux Security Administration

    - Created and managed users and groups
    - Implemented password aging policies
    - Configured file permissions and ownership
    - Applied Access Control Lists (ACL)
    - Hardened SSH services by:
        Disabling direct root login
        Changing SSH service port
        Restricting SSH access to specific users
    - Configured role-based sudo privileges

Network Administration

    - Configured network interfaces using NetworkManager (nmcli)
    - Managed DNS settings
    - Configured static secondary IP addresses
    - Managed hostname resolution through /etc/hosts
    - Verified routing and connectivity

Package Management

    - Managed software repositories using DNF
    - Installed and maintained server packages:
        Nginx
        Curl
        Rsync
        Zip/Unzip
    - Identified package ownership
    - Implemented package version locking

Automation & Scripting

    - Developed Bash scripts for:
        System backup automation
        User reporting and auditing
    - Implemented logging and reporting mechanisms
    - Automated administrative tasks using shell scripting

Service Management

    -  Created custom systemd service units
    - Created custom systemd timer units
    - Automated scheduled backup operations
    - Managed Linux services using systemctl

GNU/Linux Command Line Operations

    - Managed hard links and symbolic links
    - Processed user and system data using:
        grep
        awk
        sort
        uniq
        find

Created compressed archives using tar

    - Log Analysis
    - Parsed web access logs
    - Extracted error events
    - Generated traffic reports
    - Analyzed URI access patterns
    - Produced summarized log reports using Linux text-processing utilities

## Project Structure

```text
scripts/       Bash scripts
reports/       Command outputs and lab evidence
screenshots/   Screenshots of lab results
configs/       Configuration examples
docs/          Notes and documentation

Skills Practiced
Linux Administration
LVM Storage Management
Filesystem Management
User and Group Management
ACL Permission
SSH Hardening
Bash Scripting
Systemd Service and Timer
Network Configuration
Package Management
Log Processing

Author
Hoang Minh Dung

