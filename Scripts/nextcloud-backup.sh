#!/bin/bash
rclone_filtered="rclone copy --exclude */.git/* --exclude */dosdevices/../* --dump filters"
#$rclone_filtered

home_folders_to_backup=(\
	"Zotero" \
	"Pictures" \
	"Games" \
	".local/share/dolphin-emu" \
	".local/share/DustAET" \
	".local/share/Terraria" \
	".local/share/wesnoth" \
	
	
)

remote_path=nextcloud:HomeBackup

for folder in ${home_folders_to_backup[@]}
do
  echo "Backing up ~/$home_folders_to_backup to $remote_path/$folder ..."
  $rclone_filtered --dry-run ~/$folder $remote_path/$folder
  echo "Backup of ~/$home_folders_to_backup to $remote_path/$folder complete"
  echo
done


#rclone copy ~/NextCloud/Peter   nextcloud:Peter


