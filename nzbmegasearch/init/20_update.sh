#!/bin/bash
if [ ! -d /opt/megasearch/.git ]; then 
  git clone https://github.com/pillone/usntssearch.git /opt/megasearch
else
  cd /opt/megasearch
  git checkout master
fi
chown -R abc:abc /opt/megasearch

if [ ! -f /config/custom_params.ini ]; then 
  # no config param for nzbmegasearch, need to hack around it.
  cp /opt/megasearch/NZBmegasearch/builtin_params.ini /config/custom_params.ini
fi
ln -s /config/custom_params.ini /opt/megasearch/NZBmegasearch/custom_params.ini
chown -R abc:abc /config
