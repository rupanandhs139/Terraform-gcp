project_id = "cert-<timestamp>"
env        = "cert"
image_list = [
  "fedora-coreos-35-v20230306",
  "rocky-linux-8-v20230306",
  "suse-sles-15-v20230306",
  "ubuntu-1804-bionic-v20230302"
]
machine_types = [
  "e2-micro",
  "e2-small",
  "e2-medium",
  "n2-standard-2",
  "n2-highmem-2"
]