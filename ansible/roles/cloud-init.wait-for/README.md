# util.wait-for-ready
Used to delay interacting with a newly created or rebotted VM until it is accessible via SSH, and the cloud-init process is completed.

# Variables

* **`cloud_init__ssh_client_host`**: client host to use when testing SSH, which must have keys to the target host
* **`cloud_init__ssh_timeout`**: amount of time to wait for SSH to be accessible before giving up
