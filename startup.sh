#!/bin/sh

checksum()
{
  md5sum $1 | awk '{print $1}'
}

if [ ! -e /opt/bin/jq ] || [ "$(checksum /opt/bin/jq)" != "$(checksum /jq)" ]; then
  echo "Installing jq to /opt/bin"
  cp -pf /jq /opt/bin
fi
