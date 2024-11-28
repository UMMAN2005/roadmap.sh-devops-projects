# Static Website with Nginx

This project sets up a static website hosted on a remote Linux server using Nginx. It includes steps to deploy updates using `rsync`.

## Features

- Host a simple static website (HTML, CSS, images).
- Serve the site using Nginx.
- Use `rsync` to update the website content easily.

## Setup Instructions

1. **Server Setup**:

   - Create a Linux server on a cloud provider (e.g., DigitalOcean, AWS).
   - Install Nginx.

2. **Static Site**:

   - Create a simple static website with an `index.html` file.

3. **Deploy**:

   - Transfer files using `rsync` or the provided `deploy.sh` script.

4. **Access**:
   - Visit `http://<server-ip>` or your domain name.

## Files

- `index.html`: The main webpage.
- `deploy.sh`: Script to sync website files to the server.

## Usage

To deploy changes:

```bash
chmod +x deploy.sh
bash deploy.sh
```

## Details

For more information about the script and its features, visit the [project page](https://roadmap.sh/projects/static-site-server).
