#!/bin/bash
cd /root/puppet/pbg_chrony/
git commit -a -m "fix metdata.json error"
git push origin master
git tag -a 0.1.1 -f -m 'Release 0.1.1'
git push -f origin 0.1.1

