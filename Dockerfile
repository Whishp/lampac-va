# Thin overlay over the official lampac image:
# adds VAAPI + OpenCL (mesa) packages for AMD GPU transcoding in the GStreamer module.
# Automatically rebuilt from upstream -- see .github/workflows/build.yml
FROM ghcr.io/lampac-nextgen/lampac:latest
USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends gstreamer1.0-vaapi mesa-va-drivers mesa-opencl-icd \
 && rm -rf /var/lib/apt/lists/*
USER lampac
