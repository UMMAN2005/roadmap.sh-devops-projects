# Custom Domain Setup for GitHub Pages and DigitalOcean Droplet

This project demonstrates how to set up a custom domain name to point to both a GitHub Pages site and a DigitalOcean Droplet serving a static website.

## Task #1: Custom Domain for GitHub Pages

### Steps #1

1. **Set Up a GitHub Pages Site:**

   - Create a GitHub repository and enable GitHub Pages under **Settings > Pages**.
   - Add your static website files (e.g., `index.html`) to the repository.

2. **Add a Custom Domain:**

   - Go to **Settings > Pages** in your repository.
   - Under the "Custom domain" section, enter your domain name (e.g., `www.example.com`) and save.
   - GitHub will automatically create a `CNAME` file in your repository.

3. **Update DNS Records:**

   - Login to your domain registrar (e.g., Cloudflare, GoDaddy, Namecheap).
   - Add the following DNS records:
     - **CNAME Record**:
       - **Name**: `www` (or your desired subdomain).
       - **Points to**: `<username>.github.io`.

4. **Enable HTTPS:**
   - In **Settings > Pages**, enable the **Enforce HTTPS** option.

---

## Task #2: Custom Domain for DigitalOcean Droplet

### Steps #2

1. **Set Up a Droplet:**

   - Create a DigitalOcean droplet (e.g., Ubuntu server).
   - Install and configure Nginx to serve your static website.

2. **Point Domain to Droplet:**

   - Login to your domain registrar.
   - Add the following DNS records:
     - **A Record**:
       - **Name**: `@` or your root domain (e.g., `example.com`).
       - **Points to**: Your droplet's public IP address.
     - **CNAME Record**:
       - **Name**: `www`.
       - **Points to**: `example.com`.

3. **Test the Configuration:**
   - Visit your domain (e.g., `www.example.com`) in a browser to verify the static site is served.

## Details

For more information about the script and its features, visit the [project page](https://roadmap.sh/projects/basic-dns).
