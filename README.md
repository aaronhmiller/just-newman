# just-newman
A containerized version of Postman's Newman CLI collection runner


## Usage

Using a URL to your Collection:

```
docker run --rm saltaaron/just-newman run https://www.getpostman.com/collections/221645fd2a40abb94aec -n 3
```

Using a path to the Collection JSON export file:

```
docker run -v `pwd`/samples/:/samples/ --rm saltaaron/just-newman run /samples/Httpbin-Collection.postman_collection.json
```

Using the reporters feature:

```
docker run --rm -v `pwd`/reports/:/reports/ saltaaron/just-newman run --reporters json https://www.getpostman.com/collections/221645fd2a40abb94aec --reporter-json-export /reports
```

Using both together:

```
docker run -v `pwd`/samples/:/samples/ -v `pwd`/reports/:/reports/ --rm saltaaron/just-newman run /samples/Httpbin-Collection.postman_collection.json --reporters json --reporter-json-export /reports
```

