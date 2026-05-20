# Case: Tableau Server Disk Full

## Symptoms

- Tableau Server performance degradation
- Backup failure
- Extract refresh failure
- Service instability
- Low disk space alert

## Initial Checks

- Run `df -h`
- Identify large directories
- Check Tableau logs directory
- Check backup directory
- Review extract and temporary file locations

## Troubleshooting Steps

1. Identify disk partition with high usage.
2. Locate large files or directories.
3. Confirm cleanup policy with the client or internal team.
4. Archive or remove old logs/backups if approved.
5. Validate available storage after cleanup.
6. Monitor disk usage trend.

## Resolution

Document files cleaned, storage recovered, and follow-up recommendations.

## Prevention

- Schedule log cleanup.
- Review backup retention policy.
- Add disk monitoring threshold.
