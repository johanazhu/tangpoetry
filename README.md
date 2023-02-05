# README

唐诗API项目



## 开发配置

### 数据库创建

```
docker run -d --name db-for-tangpoetry  -e POSTGRES_USER=tangpoetry -e POSTGRES_PASSWORD=123456  -e POSTGRES_DB=tangpoetry_dev -e PGDATA=/var/lib/postgresql/data/pgdata  -v tangpoetry-data:/var/lib/postgresql/data      --network=network1      postgres:14

```