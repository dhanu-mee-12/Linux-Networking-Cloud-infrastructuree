# Linux CLI essentials

## Filesystem map

- `/` — filesystem root
- `/etc` — system configuration
- `/var/log` — service and system logs
- `/home` — user home directories
- `/tmp` — temporary files
- `/usr/bin` — installed commands
- `/opt` — optional application software

## Core commands

```bash
pwd; ls -lah; cd /var/log
mkdir -p ~/infra-lab/{notes,backups}
touch ~/infra-lab/notes/commands.txt
echo "hello" > ~/infra-lab/notes/example.txt
cat ~/infra-lab/notes/example.txt
cp -v source.txt backup.txt
mv -v backup.txt ~/infra-lab/backups/
find ~/infra-lab -type f -print
```

Use `man <command>` or `<command> --help` to inspect options. Prefer `printf` over `echo` in scripts when exact output matters.
