# Buxoro Tibbiyot — Railway v3.3.1

Railway-ready build for the Muassasa → Shifokor → Murojaat system.

## Railway
- Builder: Dockerfile
- Health check: `/api/health`
- Persistent volume mount: `/data`
- Runtime: Node.js 20

## Variables
Set these in Railway Variables:
- `BOSHQARMA_LOGIN`
- `BOSHQARMA_PASSWORD`
- `AUTH_SECRET`
- `DATA_DIR=/data`

The source bundle is stored in `railway-src/part-*` because it was transferred through the GitHub connector. The Docker build reconstructs and extracts it automatically.
