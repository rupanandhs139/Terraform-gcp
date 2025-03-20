project_id = "prod-<timestamp>"
env        = "prod"
image_list = [
  "ubuntu-2004-focal-v20230302",
  "centos-7-v20230306",
  "rhel-8-v20230306",
  "windows-2019-v20230306"
]
machine_types = [
  "n2-standard-4",
  "n2-standard-8",
  "n2-highcpu-4",
  "n2-highmem-4",
  "c2-standard-4"
]