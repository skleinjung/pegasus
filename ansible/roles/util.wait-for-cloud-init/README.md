# util.wait-for-cloud-init
Used to delay interacting with a newly created VM until it is accessible via SSH, and the cloud-init
process is completed.

# Variables

* **`util__ssh_client_host`**: client host to use when testing SSH, which must have keys to the target host
* **`util__ssh_timeout`**: amount of time to wait for SSH to be accessible before giving up
