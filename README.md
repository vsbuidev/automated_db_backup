# Automated Backup and Restoration in MongoDB

This project automates the backup of a MongoDB database every 12 hours and uploads it to an AWS S3 bucket. It also provides a script to restore the latest backup from S3.

## Features

- **Automated Database Backup**: Uses `mongodump` to create a backup.
- **Upload to S3**: Utilizes `aws-cli` to store backups in S3.
- **GitHub Actions Integration**: Scheduled workflow to run every 12 hours.
- **Restore Script**: Downloads and restores the latest backup from S3.

## Prerequisites

- An AWS account with an S3 bucket.
- A server (AWS EC2 or any Linux machine) with MongoDB installed, for installation refer : (https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/)
- AWS CLI installed and configured (`aws configure`).
- GitHub repository for CI/CD (optional, for GitHub Actions method).

## Setup Instructions

### 1. **Set Up MongoDB Server locally by refering to the link**

### 2. **Seed the Database**

Run the `seed.sh` script to add sample data:

```sh
chmod +x seed.sh
./seed.sh
```

### 3. **Backup and Upload to S3**

#### Using a Cron Job (On Server)

1. Install AWS CLI and configure it:

2. To Execute a backup script (`backup.sh`):
   ```sh
   ./backup.sh
   ```
3. Add a cron job to schedule the backup every 12 hours:
   ```sh
   crontab -e
   ```
   Add this line:
   ```sh
   0 */12 * * * /home/ubuntu/backup.sh >> /home/ubuntu/backup.log 2>&1
   ```

### 3. **Restore the Latest Backup**

Run the `restore.sh` script to download and restore the latest backup:

```sh
chmod +x restore.sh
./restore.sh
```

### Screenshot

## ![screenshot](/screenshot.png)

This project is part of [vsbuidev's Roadmap](https://roadmap.sh/projects/automated-backups) DevOps projects.
