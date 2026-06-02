# Gatekeeper on GKE Autopilot Notes

Gatekeeper was tested as part of this Kubernetes Security Hardening Platform.

The default Gatekeeper Helm chart was blocked by GKE Autopilot because Autopilot restricts certain admission webhook rules.

## Error Observed

GKE Admission Webhook Controller denied webhook rules using broad resources such as `*` and `nodes/proxy`.

## Root Cause

GKE Autopilot enforces strict security constraints that prevent:
- Broad webhook permissions
- Access to sensitive Kubernetes APIs like nodes/proxy

## Decision

For this project, Gatekeeper is documented as a compatibility limitation with Autopilot.

This demonstrates:
- Real-world platform constraints
- Security-first managed Kubernetes environments
- Trade-offs when choosing Autopilot vs Standard clusters