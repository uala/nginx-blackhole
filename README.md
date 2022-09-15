# Nginx Blackhole

Small image used as a blackhole for every service that should return only a 200 status code for any request made.
This is based on the official nginx.

Example:
```
# Run on port 888
docker run -p 888:80 leen15/blackhole

# Test it
~ curl -LI http://localhost:888 -o /dev/null -w '%{http_code}\n' -s
200
~ curl -LI http://localhost:888/test -o /dev/null -w '%{http_code}\n' -s
200
~ curl -LI http://localhost:888/random-text -o /dev/null -w '%{http_code}\n' -s
200
```
