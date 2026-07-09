# Monthly Tableau Server Maintenance Report — Example

> A filled example based on `monthly-maintenance-report-template.md`.
> All details are illustrative and anonymized — no real client, server, or confidential data is included.

## Report Information

- Client / Environment: Client A — Tableau Server (Production, single-node), Linux
- Period: June 2025
- Prepared by: Muhammad Anas Rahman — Technical Support
- Maintenance type: Preventive (monthly)

## Executive Summary

Overall server condition is healthy and stable. CPU load and Tableau Server services operated normally throughout the period. Memory usage peaked near capacity during heavy extract windows, and one memory-related incident occurred on 18 June (resolved same day). Disk usage on the data volume is trending upward and should be monitored. Recommendations focus on memory monitoring, disk housekeeping, and extract-schedule tuning.

## Health Check Result

| Area | Status | Notes |
|---|---|---|
| CPU | Normal | Average load ~0.65; no sustained spikes |
| Memory | Warning | Peaks near capacity during morning extract windows; one SRM termination event on 18 Jun |
| Disk | Warning | `/var/opt/tableau` at 67% and trending upward |
| Tableau Services | Normal | All core services running and healthy |
| Backup | Normal | Daily backups completing; last verified 29 Jun |
| Logs | Normal | Log growth within expected range after cleanup |

## Findings

1. A memory-driven incident on 18 June caused the Server Resource Manager (SRM) to terminate the Data Server, Backgrounder, and VizQL Server services; resolved the same day via restart (see `incident-report-example.md`).
2. Data volume usage is trending upward (67%); at the current growth rate it is projected to approach 80% within roughly two months.
3. Heavy extract refreshes are clustered in the morning window, contributing to memory spikes.

## Recommendations

1. Implement memory-usage alerting at 85% and review server/process sizing (Backgrounder and VizQL Server instances).
2. Schedule automated log and temporary-file cleanup, and review extract retention.
3. Stagger heavy extract-refresh schedules with the BI team to reduce peak memory usage.

## Follow-up Actions

| Action | Owner | Target Date | Status |
|---|---|---|---|
| Configure memory-usage alert (85%) | Technical Support | 2025-07-10 | In Progress |
| Set up automated log/temp cleanup job | Technical Support | 2025-07-15 | Planned |
| Review extract-refresh schedule with BI team | Client + Support | 2025-07-20 | Planned |
