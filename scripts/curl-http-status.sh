#!/bin/bash

# runs a HEAD request against the URLS in the urls.txt

rm status.txt

while read LINE; do
	
	cookieString="remember_user_token=BAhbCFsGaRRJIiIkMmEkMTEkYmFJaUpTSHNqb0dWQnV1c21ITlBaZQY6BkVUSSIXMTUzMzUzNjQzOS4wNjk3ODQ2BjsARg%3D%3D--d961aec211c6223e5d88a59df5aad4afce2beb7f"
	userName="admin@example.com"

 	curl -o /dev/null --silent --head -c $cookieString --write-out "%{http_code}, $LINE, $userName \n" $LINE >> status.txt

done < urls.txt
