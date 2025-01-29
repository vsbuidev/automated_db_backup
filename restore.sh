#!/bin/bash
LATEST_BACKUP=$(aws s3 ls s3://your-bucket-name/mongo-backups/ | sort | tail -n 1 | awk '{print $4}')
aws s3 cp s3://your-bucket-name/mongo-backups/$LATEST_BACKUP .
tar -xzf $LATEST_BACKUP
mongorestore dump
