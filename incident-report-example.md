# Incident Report — Example

> A filled example based on `incident-report-template.md`.
> All details are illustrative and anonymized — no real client, server, or confidential data is included.

## Incident Information

- Date: 2025-06-18
- Reported by: Client A — BI Team
- Environment: Tableau Server (Production), Linux
- Priority: High
- Status: Resolved

## Summary

The client reported that the **Data Server** service on Tableau Server was in an error state, affecting data source connectivity. Log analysis showed that the issue was not limited to Data Server — the **Backgrounder** and **VizQL Server** services had also in an error state. All three had been terminated by the **Server Resource Manager (SRM)** due to memory exhaustion. Services were restored after a restart.

## Impact

- Published data source connections and extract-based dashboards were affected.
- Background jobs (extract refreshes and subscriptions) failed during the window.
- Impact lasted until the services were restarted and validated.

## Timeline

| Time  | Activity |
|---|---|
| 14:05 | Client report ticket received — "Data Server service error on Tableau Server" |
| 14:15 | Confirmed service state with `tsm status -v` |
| 15:30 | Collected server logs using `tsm maintenance ziplogs` |
| 16:45 | Analyzed logs with Logshark to trace the root cause |
| 17:00 | Found Data Server, Backgrounder, and VizQL Server terminated by SRM due to full memory |
| 17:00 | Restarted the affected services |
| 17:10 | Confirmed all services healthy; validated with the reporter; incident closed |

## Troubleshooting Performed

1. Confirmed the reported Data Server error using `tsm status -v`.
2. Collected the server logs with `tsm maintenance ziplogs`.
3. Analyzed the logs with **Logshark** to trace the error and identify the root cause.
4. Found that Data Server was **not** the only affected service — **Backgrounder** and **VizQL Server** had errored as well.
5. Log evidence showed the **Server Resource Manager (SRM)** had terminated these services because system memory (RAM) was fully utilized, to protect the stability of the other running services.
6. Restarted the affected services.
7. Validated that all services returned to a healthy running state.

## Root Cause

System memory (RAM) was fully consumed. The **Server Resource Manager (SRM)** responded by terminating the **Data Server**, **Backgrounder**, and **VizQL Server** processes to prevent the memory pressure from destabilizing the rest of the platform. The reported "Data Server error" was a **symptom** of this memory-driven termination, not an isolated Data Server fault.

## Resolution

Restarted the affected Tableau Server services. After the restart, memory was released and all services — including Data Server, Backgrounder, and VizQL Server — returned to a normal running state. Data source connectivity and background jobs were confirmed working with the reporting user.

## Recommendation

- Add memory-usage monitoring with an alert threshold (e.g., 85%) for early warning before SRM termination occurs.
- Review server sizing and process configuration (Backgrounder and VizQL Server instances) against the actual workload.
- Review heavy extract-refresh schedules that may cause memory spikes, and stagger them where possible.
- Include memory-utilization validation in the preventive maintenance checklist.

## Attachment / Evidence

- `tsm status -v` output before and after the fix (logs masked).
- Logshark analysis summary highlighting the SRM termination events.
- Memory-utilization snapshot at the time of the incident.
