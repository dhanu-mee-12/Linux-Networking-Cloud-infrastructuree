# 1. File Operations

**Goal:** Navigate the filesystem and create, copy, move, search and view files.

## Commands

```bash
pwd                          # print current directory
ls -la                       # list all files with details
mkdir -p ~/lab/{docs,scripts,logs}   # create nested directories
cd ~/lab                     # change directory
touch docs/notes.txt         # create an empty file
echo "hello linux" > docs/notes.txt  # write to file (>> appends)
cp docs/notes.txt docs/backup.txt    # copy
mv docs/backup.txt logs/old.txt      # move / rename
cat docs/notes.txt           # print file contents
head -n 5 file / tail -n 5 file      # first / last lines
tail -f /var/log/syslog      # follow a log live
grep -i "error" file         # search text, case-insensitive
grep -r "hello" ~/lab        # search recursively
find ~/lab -name "*.txt"     # find files by name
ls | wc -l                   # count files (pipe)
rm logs/old.txt              # delete a file
rm -r ~/lab/logs             # delete a directory
man ls                       # manual page
```

## My output

```
(paste your terminal output here)
```

![screenshot](screenshots/)

## What I learned

- _Write 2-3 points in your own words._
