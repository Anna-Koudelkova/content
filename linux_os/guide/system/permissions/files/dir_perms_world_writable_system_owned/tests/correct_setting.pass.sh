#!/bin/bash
# remediation = none

find / -xdev -type d -perm -0002 -uid +999 -print | xargs -I{} chown root {}
