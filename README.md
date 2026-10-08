# lampac-va

Thin overlay over [`ghcr.io/lampac-nextgen/lampac`](https://github.com/lampac-nextgen/lampac)
that adds **VAAPI** + **OpenCL** (mesa) packages, enabling **AMD GPU transcoding**
in the lampac GStreamer module (`gstreamer1.0-vaapi`, `mesa-va-drivers`, `mesa-opencl-icd`).

Image: `ghcr.io/whishp/lampac-va:latest`

## Updates

`.github/workflows/build.yml` runs daily and on push:

- pulls current upstream `:latest`, builds this overlay, pushes to GHCR;
- if the upstream base digest **and** the Dockerfile are unchanged, the build is
  skipped — the published digest stays the same, so digest watchers
  (dockhand, Watchtower, ...) see no update.

Manual rebuild: *Actions → build → Run workflow* (check `force` to bypass the check).
