#!/bin/bash
TIMESTAMP=$(date +%Y%m%d%H%M%S)
BACKUP_DIR="/home/ubuntu/mongo_backups"
BACKUP_FILE="$BACKUP_DIR/mongo_backup_$TIMESTAMP.tar.gz"
S3_BUCKET="s3://your-bucket-name/mongo-backups"

mkdir -p $BACKUP_DIR
mongodump --out $BACKUP_DIR/dump
tar -czf $BACKUP_FILE -C $BACKUP_DIR dump
aws s3 cp $BACKUP_FILE $S3_BUCKET/

rm -rf $BACKUP_DIR/dump
