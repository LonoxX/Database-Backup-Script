# Database-Backup-Script

MySQL Database Backup Script

## How to use [Linux]

Now, copy the following content in a script file (like: /backup/Database_Backup.sh) and save on your Linux system.
After creating or downloading script make sure to set execute permission to run properly.

```bash
chmod +x /backup/Database_Backup.sh
```

## Schedule Script in Crontab

Now schedule the script in crontab to run on a daily basis and complete backup on regular basis. Edit crontab on your system with `crontab -e` command. Add following settings to enable backup at 2 in the morning.

```bash
0 2 * * * root /backup/Database_Backup.sh
```

Save your crontab file. After enabling cron, the script will take backup automatically, But keep check backups on a weekly or monthly basis to make sure.

## How to use [Windows]

Start the files and you're done ;)

## Task planning

1. Start task scheduling. You can find it by typing "Task Scheduler" in the Start menu.

2. Under Action, click Create Task. You will now see a window with various tabs that you should go through one after the other.

3. General: In the "General" tab you can give the task any name. Optionally, you can add a description. If you want to assign the task to a user, make the appropriate settings in the "Security Options" section. You should activate the option "Execute with the highest privileges" so that Windows can execute the task without prompting. Finally, configure the task for Windows 10.

4. Trigger: In the "Trigger" tab you specify the conditions according to which the task is to be carried out. Click on "New". Now you can set a schedule according to which the task should start.

5. Actions: Here you specify which file should be executed. Click on "New" and select the program file from your computer.

6. Conditions: You can make additional settings under "Conditions". Here you can keep the preset options. Only if you are using a laptop should you specify under "Energy" whether the task should be carried out on battery power.

7. Settings: In the "Settings" you can set security options so that the execution of the task can be canceled in the event of an error.

## Support

Panda-Network Discord [Discord-Server](https://discord.gg/z8ScRvf)

#### © 2021 Panda-Network
