#!/bin/bash

echo $(date)","$(curl -s https://forgeapi.puppet.com/v3/releases?module=puppetlabs-support_tasks | grep  "downloads"  | awk '/version/ { printf("%s\t", $0); next } 1' |  sed 's/[^0-9]*//g'  | awk '{s+=$1} END {print s}') >> /home/centos/support_tasks_count.csv

echo $(date)"," $(curl -s https://forgeapi.puppet.com/v3/releases?module=puppetlabs-support_tasks | grep  "\"version\"\|downloads" | grep -v "        \"version\":"  | awk '/version/ { printf("%s\t", $0); next } 1') >> /home/centos/support_tasks_data.txt

echo $(date)","$(curl -s https://forgeapi.puppet.com/v3/releases?module=puppetlabs-puppet_metrics_collector | grep  "downloads"  | awk '/version/ { printf("%s\t", $0); next } 1' |  sed 's/[^0-9]*//g'  | awk '{s+=$1} END {print s}') >> /home/centos/puppet_metrics_collector_count.csv

echo $(date)"," $(curl -s https://forgeapi.puppet.com/v3/releases?module=puppetlabs-puppet_metrics_collector | grep  "\"version\"\|downloads" | grep -v "        \"version\":"  | awk '/version/ { printf("%s\t", $0); next } 1') >> /home/centos/puppet_metrics_collector_data.txt

echo $(date)","$(curl -s https://forgeapi.puppet.com/v3/releases?module=puppetlabs-healthcheck_lite | grep  "downloads"  | awk '/version/ { printf("%s\t", $0); next } 1' |  sed 's/[^0-9]*//g'  | awk '{s+=$1} END {print s}') >> /home/centos/healthcheck_lite.csv

echo $(date)","$(curl -s https://forgeapi.puppet.com/v3/releases?module=npwalker/pe_databases | grep  "downloads"  | awk '/version/ { printf("%s\t", $0); next } 1' |  sed 's/[^0-9]*//g'  | awk '{s+=$1} END {print s}') >> /home/centos/pe_databases.csv
