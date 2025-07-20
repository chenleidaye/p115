docker pull gvddfdf/p115dav:latest

docker run -d --name p115dav \
  -e COOKIES='UID=...;CID=...;SEID=...' \
  -e USERNAME_PASSWORD='admin:123456' \
  -p 8000:8000 \
  gvddfdf/p115dav:latest
