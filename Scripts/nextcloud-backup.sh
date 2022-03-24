#!/bin/bash

# Set up filters on rclone command
rclone_filtered='rclone sync --exclude */.git/*'

# Backup my directory
$rclone_filtered "/media/Personal Data/Peter" nextcloud:Peter

# Other home folders to backup
home_folders_to_backup=(\
	"Zotero" \
#	"Pictures" \
)

# RClone remote path to store backups
rclone_filtered='rclone copy --exclude */.git/*'
remote_path=nextcloud:HomeBackup

# Backup all folders
for folder in ${home_folders_to_backup[@]}
do
  echo "Backing up ~/$folder to $remote_path/$folder ..."
  $rclone_filtered ~/$folder $remote_path/$folder
  echo "Backup of ~/$folder to $remote_path/$folder complete"
  echo
done




