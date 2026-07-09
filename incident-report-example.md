# Incident Report — Example

> A filled example based on `incident-report-template.md`.
> All details are illustrative and anonymized — no real client, server, or confidential data is included.

## Incident Information

- Date: 2025-06-18
- Reported by: Client A — BI Team (via support ticket)
- Environment: Tableau Server (Production, single-node), Linux
- Priority: High
- Status: Resolved

## Summary

Users reported that the Tableau Server web portal was unreachable. The login page returned a gateway error and no dashboards could be accessed.

## Impact

- Approximately 120 users were unable to access Tableau Server for about 35 minutes.
- Scheduled extract refreshes during the window were delayed.

## Timeline

| Time  | Activity |
|---|---|
| 08:42 | Support ticket received — "Tableau not accessible" |
| 08:47 | Confirmed portal unreachable; ran `tsm status -v` |
| 08:52 | Identified Gateway service stopped; disk volume at 92% |
| 09:03 | Archived old logs per retention policy; freed ~40 GB |
| 09:10 | Restarted Gateway service; portal restored |
| 09:17 | Confirmed access with reporter; incident closed |

## Troubleshooting Performed

1. Verified server connectivity and reachability.
2. Ran `tsm status -v` — Gateway service reported as stopped.
3. Checked system resources with `df -h`; log volume at 92%.
4. Reviewed gateway logs — repeated write failures caused by low disk space.
5. Archived and removed old logs per retention policy.
6. Restarted the Gateway service and validated portal availability.

## Root Cause

Log directory growth filled the disk volume, preventing the Gateway service from writing and causing it to stop.

## Resolution

Freed disk space by archiving old logs, then restarted the Gateway service. Portal access was fully restored and confirmed with the reporting user.

## Recommendation

- Add a disk-usage alert threshold at 80% for early warning.
- Schedule automated log archival and cleanup.
- Include disk capacity validation in the weekly preventive maintenance checklist.

## Attachment / Evidence

- `tsm status -v` output before and after the fix (logs masked).
- `df -h` output showing disk recovery after cleanup.
