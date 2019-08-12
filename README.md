# forge_plot
Scripts to Scrape Module Stats from the Puppet Forge to CSV and plot to charts in HTML

Consists of 2 scripts:

1 - forge_tasks.sh	- Scrapes download stats from then forge for an array of modules, outputs in CSV format, designed to be run on a cron
2 - plot.py - Converts the CSV files to html files with interactive line graphs, requires python plot.ly module
