# - Administrative Tasks

## Overview

This task focuses on Linux user and group administration, shared resource management, user environment configuration, and system resource limitation.

The objective is to simulate a training environment where instructors and students have different permissions and access policies.

---

## Tasks Performed

### Group Management

Created the following groups:

* dungstaff
* dunglab

### User Management

Created the following users:

* teacher01
* teacher02
* student01

Group assignments:

| User      | Groups                 |
| --------- | ---------------------- |
| teacher01 | dungstaff, dunglab |
| teacher02 | dungstaff, dunglab |
| student01 | dunglab              |

---

## Shared Directory Configuration

Created a shared laboratory directory:

```bash
/shared/dunglab
```

Configuration:

* Owner: root
* Group: dunglab
* Permission: 2770

The SGID bit ensures that newly created files inherit the dunglab group.
---
## User Environment Configuration

Configured a default interactive login umask:

```bash
027
```

This configuration improves security by preventing unauthorized access to newly created files.

---

## Resource Limits

Configured file descriptor limits using PAM limits.

### teacher01

```text
Soft limit: 100
Hard limit: 100
```

### student01

```text
Soft limit: 40
Hard limit: 40
```

---

## Account Expiration

Configured account expiration for:

```text
student01
```

Expiration date:

```text
31 December 2026
```

---

## Verification

Verification commands:

```bash
id teacher01
id teacher02
id student01

ls -ld /shared/dunglab

umask

ulimit -n

chage -l student01

## Result

The administrative environment was successfully configured with proper group memberships, shared directory permissions, security policies, resource limits, and account expiration settings.

