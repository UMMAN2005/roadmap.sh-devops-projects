# AWS EC2 Static Website Deployment Project

This project is designed to help you gain hands-on experience with Amazon Web Services (AWS) by creating an AWS account, setting up a Linux server on AWS EC2, and deploying a simple static website. By completing this project, you will build foundational knowledge in cloud computing and AWS infrastructure.

## Requirements

To complete this project, you must perform the following tasks:

### 1. Set Up AWS

- **Create an AWS account** if you don’t already have one.
- Familiarize yourself with the **AWS Management Console**.

### 2. Launch an EC2 Instance

- **AMI**: Use the Ubuntu Server AMI.
- **Instance Type**: Choose a `t2.micro` instance (eligible for AWS Free Tier).
- **Networking**:
  - Use the default VPC and subnet for your region.
  - Configure a security group to allow inbound traffic on:
    - Port 22 (SSH) for secure access to your server.
    - Port 80 (HTTP) for web traffic.
- **Key Pair**: Create a new key pair or use an existing one for SSH access.
- **Public IP Address**: Ensure your instance has a public IP address assigned.

### 3. Connect to the Instance

- Use **SSH** and your private key to connect to the EC2 instance.

### 4. Configure the Server

- Update the system packages using `apt` or equivalent commands.
- Install a web server, such as **Nginx**.

### 5. Deploy the Website

- Create a simple HTML file as your static website.
- Deploy the HTML file to your web server directory (e.g., `/var/www/html` for Nginx).
- Verify that the website is accessible via the public IP address of your EC2 instance.

---

## Stretch Goals

For additional challenges, try the following:

1. **Custom Domain Name**:

   - Use **Amazon Route 53** to set up a custom domain for your website.

2. **HTTPS with SSL/TLS**:

   - Obtain a free SSL/TLS certificate from **Let’s Encrypt** and enable HTTPS for your website.

3. **CI/CD Pipeline**:
   - Use **AWS CodePipeline** to create a simple CI/CD pipeline to automatically deploy changes to your static website.

---

## Learning Outcomes

By completing this project, you will learn:

- How to create and configure **basic AWS resources**.
- Understanding **AWS EC2 instance types** and their differences.
- Launching and configuring **EC2 instances**.
- Connecting to Linux servers using **SSH**.
- Performing **basic server administration**.
- Setting up and deploying static websites on cloud infrastructure.

Additionally, you will gain:

- Familiarity with **security groups** and their role in managing access.
- Knowledge of AWS **networking basics** (VPCs, subnets, public IPs).
- Experience deploying cloud-hosted projects.

---

## Future Applications

After completing this project, you will have the skills to:

- Launch and manage EC2 instances for hosting projects.
- Securely administer cloud-based servers.
- Deploy static or dynamic web applications to AWS EC2.

These foundational skills will enable you to tackle more complex cloud computing tasks in future projects.

---

## Resources

Here are some useful resources to assist you:

- [AWS Free Tier](https://aws.amazon.com/free)
- [EC2 Documentation](https://docs.aws.amazon.com/ec2)
- [Nginx Documentation](https://nginx.org/en/docs/)
- [Let’s Encrypt Documentation](https://letsencrypt.org/docs/)
- [Amazon Route 53 Documentation](https://docs.aws.amazon.com/route53/)
- [AWS CodePipeline Documentation](https://docs.aws.amazon.com/codepipeline)

## Details

For more information about the script and its features, visit the [project page](https://roadmap.sh/projects/ec2-instance).
