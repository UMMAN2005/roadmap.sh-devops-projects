# Remote Linux Server SSH Setup

This project involves setting up a remote Linux server and configuring it for secure SSH access using multiple SSH keys. The setup ensures secure and easy access while providing additional protection against brute force attacks using `fail2ban` (optional).

## Project Features

- Configure a remote Linux server for SSH access.
- Add and manage multiple SSH keys for user authentication.
- Enable seamless SSH access using aliases defined in `~/.ssh/config`.
- (Optional) Install and configure `fail2ban` to prevent brute force attacks.

---

## Prerequisites

1. A remote Linux server (e.g., DigitalOcean, AWS, Linode).
2. Local machine with:
   - OpenSSH installed.
   - Basic knowledge of SSH commands.

---

## Setup Instructions

### 1. Generate SSH Keys

Generate two separate SSH key pairs on your local machine:

```bash
ssh-keygen -t rsa -b 4096 -C "first-key"
ssh-keygen -t rsa -b 4096 -C "second-key"
```

### 2. Add Public Keys to the Remote Server

- Log in to your server.
- Add the public keys to `~/.ssh/authorized_keys`.

### 3. Configure `~/.ssh/config`

On your local machine, set up aliases for easy access:

```plaintext
Host my-server-first-key
    HostName <server-ip>
    User <username>
    IdentityFile ~/.ssh/first-key

Host my-server-second-key
    HostName <server-ip>
    User <username>
    IdentityFile ~/.ssh/second-key
```

Connect using:

```bash
ssh my-server-first-key
ssh my-server-second-key
```

### 4. Install and Configure `fail2ban` (Optional)

Protect your server from brute force attacks:

```bash
sudo apt install fail2ban -y  # Debian/Ubuntu
sudo yum install fail2ban -y # CentOS/RHEL
```

Customize `jail.local` for SSH protection:

```plaintext
[sshd]
enabled = true
port = ssh
logpath = /var/log/auth.log   # Use /var/log/secure for CentOS/RHEL
maxretry = 5
bantime = 600
```

---

## Test Your Setup

1. Verify access with both keys:

   ```bash
   ssh -i ~/.ssh/first-key user@<server-ip>
   ssh -i ~/.ssh/second-key user@<server-ip>
   ```

2. Use aliases for convenience:

   ```bash
   ssh my-server-first-key
   ssh my-server-second-key
   ```

3. Check `fail2ban` status:

   ```bash
   sudo fail2ban-client status sshd
   ```
