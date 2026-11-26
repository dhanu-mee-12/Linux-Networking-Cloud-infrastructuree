# Lab 01 — Linux CLI and files

## Goal

Become comfortable navigating the filesystem, creating files, inspecting content, and finding files.

## Exercises

1. Print your current directory and list hidden files.
2. Create `~/infra-lab/{notes,backups}`.
3. Record the output of `uname -a`, `hostname`, `whoami`, `id`, and `df -h` in `notes/system-inventory.txt`.
4. Create a file, copy it, move the copy into `backups`, and verify both paths.
5. Find all files under `~/infra-lab` modified in the last day.

```bash
mkdir -p ~/infra-lab/{notes,backups}
{
  uname -a; hostname; whoami; id; df -h
} | tee ~/infra-lab/notes/system-inventory.txt
printf 'first lab file\n' > ~/infra-lab/notes/example.txt
cp ~/infra-lab/notes/example.txt /tmp/example-copy.txt
mv /tmp/example-copy.txt ~/infra-lab/backups/
find ~/infra-lab -type f -mtime -1 -print
```

## Acceptance criteria

- You can explain the difference between an absolute and relative path.
- You can locate a file with `find` and inspect disk usage with `df` and `du`.
