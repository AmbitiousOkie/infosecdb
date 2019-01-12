#!/usr/bin/python3

import http.client
conn = http.client.HTTPSConnection("www.python.org",443)
conn.request("GET", "/")
r1 = conn.getresponse()
data1 = r1.read()
print(r1.read(1024))
