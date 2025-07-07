#!/bin/bash

{{% if product in ["ubuntu2404"] %}}
useradd crontab
{{% endif %}}

{{% if 'ubuntu' in product %}}
for SYSLIBDIRS in /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin
{{% else %}}
for SYSLIBDIRS in /bin /sbin /usr/bin /usr/sbin /usr/local/bin
{{% endif %}}
do
  find -L  $SYSLIBDIRS \! -group root -type f -exec chgrp root '{}' \;
done

ln -s $(mktemp -p /tmp) /usr/bin/test.log.symlink
chgrp -h nogroup /usr/bin/test.log.symlink
