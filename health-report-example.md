# Tableau Server Health Report

Generated at: Mon Jun 30 09:20:11 WIB 2025

> Sample report produced by `generate_health_report.sh`, for portfolio purposes only.
> All hostnames, paths, and values are anonymized — no confidential client information is included.

## Disk Usage Check

```
Filesystem                 Size  Used Avail Use% Mounted on
/dev/mapper/vg--root        80G   34G   43G  45% /
/dev/mapper/vg--data       500G  318G  157G  67% /var/opt/tableau
```

## CPU and Memory Check

### CPU Load

```
 09:20:11 up 42 days,  3:32,  1 user,  load average: 0.58, 0.66, 0.67
```

### Memory Usage

```
              total        used        free      shared  buff/cache   available
Mem:           31Gi        18Gi       2.0Gi       512Mi        11Gi         12Gi
Swap:         8.0Gi       1.2Gi       6.8Gi
```

## Tableau Server Services Check

```
Node1: tableau-prod-01
Status: RUNNING

'Cluster Controller'                      is running.
'Coordination Service'                    is running.
'Gateway'                                 is running.
'Application Server (vizportal)'          is running.
'VizQL Server'                            is running.
'Cache Server'                            is running.
'Backgrounder'                            is running.
'Data Server'                             is running.
'File Store'                              is running.
'Repository'                              is running (Active).
'Administration Controller'               is running.
'Administration Agent'                    is running.
```

## Findings

- Disk usage on `/var/opt/tableau` at **67%** — within safe range; continue monitoring log and extract growth.
- CPU load and memory usage nominal for the current workload.
- All core Tableau Server services running and healthy.

## Notes

- Review disk capacity, memory usage, CPU load, and service status.
- Document any abnormal findings and recommended actions.
- No confidential server information is included; this is a sample report for portfolio purposes.
