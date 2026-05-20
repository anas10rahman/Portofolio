# Case: High CPU Usage

## Symptoms

- Server feels slow
- Tableau dashboard loading is slower than usual
- High CPU alert is triggered

## Initial Checks

- Run `top`
- Check running processes
- Review recent scheduled jobs
- Check Tableau Backgrounder activity
- Review extract refresh schedule

## Troubleshooting Steps

1. Identify top CPU-consuming processes.
2. Validate whether high usage is temporary or continuous.
3. Check scheduled extract refreshes or maintenance jobs.
4. Review logs if abnormal process behavior is found.
5. Escalate if the root cause is unclear.

## Prevention

- Review scheduling of heavy jobs.
- Monitor CPU trend.
- Document recurring spikes.
