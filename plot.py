import pandas as pd
import plotly.express as px

df = pd.read_csv('/home/centos/support_tasks_count.csv')

fig = px.line(df, x = 'Date-Time', y = 'Download-Count', title='Support_Task Module Downloads from the Forge')
fig.write_html('/usr/share/nginx/html/support_tasks.html')

metrics = pd.read_csv('/home/centos/puppet_metrics_collector_count.csv')

fig = px.line(metrics, x = 'Date-Time', y = 'Download-Count', title='puppet_metrics_collector  Module Downloads from the Forge')
fig.write_html('/usr/share/nginx/html/puppet_metrics_collector.html')

hc = pd.read_csv('/home/centos/healthcheck_lite.csv')

fig = px.line(hc, x = 'Date-Time', y = 'Download-Count', title='healthcheck_lite  Module Downloads from the Forge')
fig.write_html('/usr/share/nginx/html/healthcheck_lite.html')

pedb = pd.read_csv('/home/centos/pe_databases.csv')

fig = px.line(pedb, x = 'Date-Time', y = 'Download-Count', title='pe_databases  Module Downloads from the Forge')
fig.write_html('/usr/share/nginx/html/pe_databases.html')
