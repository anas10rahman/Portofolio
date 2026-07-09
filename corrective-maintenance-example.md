# Corrective Maintenance — Example

> A filled example based on `corrective-maintenance-template.md`.
> All details are illustrative and anonymized — no real client, server, or confidential data is included.

## Incident Summary

- Date: 2025-05-22
- Environment: Tableau Server (Production), Linux
- Reported by: Client B — Data Analytics Team
- Issue category: Extract Refresh Failure
- Priority: Medium

## Symptoms

Multiple scheduled extract refreshes were failing, and several dashboards displayed outdated data. Users reported "extract could not be created" errors when refreshing published data sources.

## Initial Checks

- Connectivity check: Server reachable; web portal accessible
- Tableau Server status: All services running (`tsm status -v`)
- Disk usage: `/var/opt/tableau` at 94% — extract/temp volume nearly full
- CPU and memory usage: Within normal range
- Recent changes: Steady increase in the number and size of scheduled extracts over the previous weeks
- Relevant logs: Backgrounder logs showing "insufficient disk space" during extract creation

## Root Cause

The disk volume used for extracts and temporary files was nearly full due to accumulated extract files, orphaned temp data, and unmanaged log growth. With no space to write, extract creation jobs failed.

## Action Taken

1. Identified the volume with high usage using `df -h`.
2. Located large temp/extract directories and old log files.
3. Confirmed the cleanup scope with the client and internal team.
4. Archived and removed old logs and orphaned temp files per retention policy.
5. Re-ran the failed extract refresh jobs.
6. Monitored disk usage and refresh success afterward.

## Resolution

After cleanup, approximately 60 GB was recovered and disk usage dropped from 94% to 71%. The previously failed extract refreshes completed successfully, and the affected dashboards updated with current data. Confirmed with the reporting team.

## Prevention / Recommendation

- Set a disk-usage alert threshold at 80% for early warning.
- Schedule automated log and temporary-file cleanup.
- Review extract refresh volume and retention; remove unused or duplicate extracts.
- Validate disk capacity as part of the weekly preventive maintenance checklist.

## Escalation

- Escalated to vendor support: No
- Escalation reference: N/A
- Follow-up required: Yes — implement automated cleanup and a disk-usage alert
