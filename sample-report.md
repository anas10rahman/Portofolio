# Linux Server Monitoring Report

Generated at: Mon Jun 30 09:15:04 WIB 2025

> Sample output produced by `monitor.sh`, for portfolio purposes only.
> Hostnames, paths, and values are anonymized — no real production data is included.

## Hostname

```
tableau-prod-01
```

## Uptime

```
 09:15:04 up 42 days,  3:27,  1 user,  load average: 0.62, 0.71, 0.68
```

## Disk Usage

```
Filesystem                 Size  Used Avail Use% Mounted on
/dev/mapper/vg--root        80G   34G   43G  45% /
/dev/sda1                  2.0G  260M  1.6G  14% /boot
/dev/mapper/vg--data       500G  318G  157G  67% /var/opt/tableau
tmpfs                       16G     0   16G   0% /dev/shm
```

## Memory Usage

```
              total        used        free      shared  buff/cache   available
Mem:           31Gi        18Gi       2.1Gi       512Mi        11Gi         12Gi
Swap:         8.0Gi       1.2Gi       6.8Gi
```

## CPU Information

```
top - 09:15:04 up 42 days,  3:27,  1 user,  load average: 0.62, 0.71, 0.68
Tasks: 312 total,   1 running, 311 sleeping,   0 stopped,   0 zombie
%Cpu(s):  8.3 us,  2.1 sy,  0.0 ni, 88.9 id,  0.5 wa,  0.0 hi,  0.2 si,  0.0 st
MiB Mem :  31890.0 total,   2150.4 free,  18432.7 used,  11306.9 buff/cache
MiB Swap:   8192.0 total,   6963.2 free,   1228.8 used.  12980.3 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
   4821 tableau   20   0   12.4g   4.1g  38208 S   6.3  13.2   2201:14 vizqlserver
   4102 tableau   20   0    8.9g   2.7g  22400 S   3.0   8.7    884:02 backgrounder
```

## Top Processes by Memory

```
USER       PID %CPU %MEM      VSZ     RSS TTY   STAT  START   TIME COMMAND
tableau   4821  6.3 13.2 13012480 4312064 ?     Sl    May19 2201:14 vizqlserver
tableau   4102  3.0  8.7  9328640 2831360 ?     Sl    May19  884:02 backgrounder
tableau   3980  1.2  6.4  7208960 2101248 ?     Sl    May19  512:33 dataserver
tableau   3877  0.9  4.1  5406720 1345536 ?     Sl    May19  402:11 vizportal
postgres  4210  0.5  3.2  3812864 1048576 ?     Ss    May19  221:47 postgres (repository)
tableau   3760  0.4  2.0  2904064  655360 ?     Sl    May19  180:22 gateway
tableau   3690  0.2  1.1  1802240  360448 ?     Sl    May19   88:04 cacheserver
root      1024  0.0  0.6   912384  204800 ?     Ss    May19   44:12 tsm-controller
```
