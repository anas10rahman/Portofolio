# Case: Tableau Server Service Down

## Symptoms

- Users cannot access Tableau Server
- Login page is unavailable
- Tableau service status shows one or more services stopped

## Initial Checks

- Check server connectivity
- Run `tsm status -v`
- Check disk capacity
- Check CPU and memory usage
- Review recent configuration changes
- Review relevant logs

## Troubleshooting Steps

1. Confirm the affected services.
2. Validate whether the issue affects all users or specific users.
3. Check system resource usage.
4. Review logs for service errors.
5. Restart affected services if required and approved.
6. Escalate to vendor support if the issue persists.

## Resolution

Document the action taken and confirm service availability after resolution.

## Prevention

- Add service status validation to routine maintenance.
- Monitor disk capacity and log growth.
- Document recurring patterns.
