docker run --platform linux/arm64 -v ${PWD}:/workspace -w /workspace debian:bookworm "apt-get update && apt-get install sudo && bash /workspace/createDebianPackage.sh"
