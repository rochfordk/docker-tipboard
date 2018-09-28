#!/bin/bash

#curl http://localhost:7272/api/v0.1/13446d45c9544d4da0b981bd946de743/push -X POST -d "tile=text" -d "key=motd" -d 'data={"text": "Hello world!"}'

curl http://localhost:7272/api/v0.1/13446d45c9544d4da0b981bd946de743/push -X POST -d "tile=pie_chart" -d "key=example_pie" -d 'data={"title": "My title", "pie_data": [["Pie 1", 25], ["Pie 2", 25], ["Pie 3", 50]]}'

curl http://localhost:7272/api/v0.1/13446d45c9544d4da0b981bd946de743/push -X POST -d "tile=just_value" -d "key=clients_connected" -d 'data={"title": "Connected:", "description": "(Currently Connected Clients)", "just-value": "23"}'

curl http://localhost:7272/api/v0.1/13446d45c9544d4da0b981bd946de743/push -X POST -d "tile=just_value" -d "key=clients_disconnected" -d 'data={"title": "Disconnected:", "description": "(Registered clients currently disconnected)", "just-value": "3"}'

curl http://localhost:7272/api/v0.1/13446d45c9544d4da0b981bd946de743/push -X POST -d "tile=just_value" -d "key=clients_total" -d 'data={"title": "Total:", "description": "(Total number of registered clients)", "just-value": "3"}'

curl http://localhost:7272/api/v0.1/13446d45c9544d4da0b981bd946de743/push -X POST -d "tile=cumulative_flow" -d "key=msg_per_hr" -d 'data={"title": "My title:", "series_list": [{"label": "label 1", "series": [ 0, 0, 0, 0, 1, 1, 2, 2, 1, 1, 1, 0, 0, 2, 0 ]}, {"label": "label 2", "series": [ 0, 5, 0, 0, 1, 0, 0, 3, 0, 0, 0, 7, 8, 9, 1 ]}]}'

curl http://localhost:7272/api/v0.1/13446d45c9544d4da0b981bd946de743/push -X POST -d "tile=big_value" -d "key=messages_info" -d 'data={"title": "Dropped Messages", "description": "dropped due to inflight/queuing limits", "big-value": "4", "upper-left-label": "received:", "upper-left-value": "1020", "lower-left-label": "Rx (pub):", "lower-left-value": "8609", "upper-right-label": "sent:", "upper-right-value": "7532", "lower-right-label": "Tx (pub):", "lower-right-value": "19 853"}'

curl http://localhost:7272/api/v0.1/13446d45c9544d4da0b981bd946de743/push -X POST -d "tile=big_value" -d "key=broker_info" -d 'data={"title": "Subscriptions", "description": "Active Subscriptions", "big-value": "314", "upper-left-label": "time:", "upper-left-value": "14:58", "lower-left-label": "", "lower-left-value": "", "upper-right-label": "uptime:", "upper-right-value": "160hrs", "lower-right-label": "version:", "lower-right-value": "v1.0"}'