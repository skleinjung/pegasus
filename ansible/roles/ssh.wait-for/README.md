# ssh.wait-for
Waits for a host to respond to SSH connection attempts. Currently, tests are performed locally
from localhost.

TODO: allow testing from other hosts

# Variables

* **`ssh__hostname`**: name of the host to wait for (Required)
* **`ssh__port`**: port to check for SSH connectivity (Default: 22)
* **`ssh__sleep`**: time, in seconds, between connectino attempts (Default: 3)
