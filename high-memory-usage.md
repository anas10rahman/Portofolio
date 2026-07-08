# Case: High Memory Usage

## Symptoms

- Slow response from server
- Services become unstable
- Memory usage alert is triggered

## Initial Checks

- Run `free -m -h`
- Run `top`
- Identify top memory-consuming processes
- Check Tableau service status
- Review recent user activity or jobs

## Troubleshooting Steps

1. Identify memory-consuming processes.
2. Check whether memory usage is expected.
3. Review workload and scheduled jobs.
4. Restart services only when required and approved.
5. Document findings and recommendations.

## Prevention

- Monitor memory trend.
- Review workload distribution.
- Validate server sizing.
