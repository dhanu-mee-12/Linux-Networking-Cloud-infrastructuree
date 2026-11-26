# 2. File Permissions

**Goal:** Read and change permissions and ownership.

## Reading permissions

`ls -l` shows e.g. `-rwxr-xr-- 1 dhanu dev 120 Nov 25 hello.sh`

- First character: type (`-` file, `d` directory, `l` link)
- Then three triplets: owner, group, others
- r = 4, w = 2, x = 1 (so rwx = 7, r-x = 5, r-- = 4)

## Commands

```bash
ls -l scripts/hello.sh
./scripts/hello.sh                # fails: Permission denied (no execute bit)
chmod 755 scripts/hello.sh        # owner rwx, group r-x, others r-x
./scripts/hello.sh                # now works
chmod u+x file                    # add execute for owner
chmod go-w file                   # remove write for group and others
chmod 600 secret.txt              # owner read/write only
sudo chown dhanu:devteam file     # change owner and group
sudo chown -R dhanu: dir          # recursive
umask                             # default permission mask
```

## Common values

| Mode | Use |
|------|-----|
| 644 | normal files |
| 755 | scripts and directories |
| 600 | private files (SSH keys) |
| 700 | private directories (~/.ssh) |

## My output

```
(paste your terminal output here)
```

## What I learned

- _Write 2-3 points in your own words._
