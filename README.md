# delete-outdated-es-indexes


[![Docker Automated buil](https://img.shields.io/docker/automated/playdingnow/delete-outdated-es-indexes.svg?style=flat-square)](https://hub.docker.com/r/playdingnow/delete-outdated-es-indexes/)
[![Docker Build Statu](https://img.shields.io/docker/build/playdingnow/delete-outdated-es-indexes.svg?style=flat-square)](https://hub.docker.com/r/playdingnow/delete-outdated-es-indexes/builds/)
[![Docker Pulls](https://img.shields.io/docker/pulls/playdingnow/delete-outdated-es-indexes.svg?style=flat-square)](https://hub.docker.com/r/playdingnow/delete-outdated-es-indexes)

## Use Environment

| name | default | description | cn |
| --- | --- | --- | --- |
| eshost | localhost | es server hostname or ip | es 服务的域名或 IP |
| esport | 9200 | es server port | ES 服务的端口 |
| esmaxdays | 15 | max retention days | 保留多少天内的 |
| esindexprefix | apm | index prefix, like `apm-2018.01.01` | 索引的前缀，例如 `apm-2018.01.01` |