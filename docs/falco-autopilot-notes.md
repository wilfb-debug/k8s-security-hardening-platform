# Falco on GKE Autopilot Notes

Falco was tested as part of this Kubernetes Security Hardening Platform.

## Error Observed

Falco installation failed due to GKE Autopilot restrictions.

## Root Cause

GKE Autopilot blocks:
- Privileged containers
- hostPath volume mounts

Falco requires both to monitor kernel-level activity.

## Decision

Falco cannot run on GKE Autopilot.

This highlights:
- Security trade-offs of managed Kubernetes
- Limitations of runtime security tooling on Autopilot
- Need for Standard GKE when deep runtime visibility is required