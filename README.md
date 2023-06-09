# Ruby on 唐诗API项目

用 ruby 做一个唐诗 api 项目，预览地址：https://tangpoetry.fly.dev/



## 接口列表

- 随机出现一首诗：/poetry/random
- 用诗的题目查询：/poetry/title/静夜思
- 列出这个诗人的所有诗：/poetry/author/李白
- 列出这个诗人的这首诗：/poetry/author/张若虚/title/春江花月夜



## 如何启动

先将项目中的 `tangpoetry.sql` 导入到 postgresql 数据库。可以使用 pgAdmin 也可以使用命令行 psql 导入数据

### mysql 情况下

1. 新建数据库

```bash
mysql> create database tang_poetry;
mysql> exit;
```

2. 导入数据

```bash
mysql -u root -p -h localhost tang_poetry < tang_poetry.sql
```



### PostgreSQL 情况下

1. 使用 pgAdmin 工具导入。在 pgAdmin 中，可以选择要导入数据的数据库、右键单击该数据库并选择“Restore...”选项，之后选择要导入的数据文件并执行导入操作

2. 或者使用 psql 命令行工具

   - 进入命令行终端，并登录 PostgreSQL 数据库。例如，输入以下命令登录到 PostgreSQL 数据库：

   - ```bash
     $ psql -U username -d dbname
     ```

     其中 `username` 是你的用户名，`dbname` 是要导入数据的数据库名。

   - 选择要使用的数据库：

   - ```mysql
     dbname=# \c databasename
     ```

   - 执行导入命令：

   - ```mysql
     dbname=# \i path/to/datafile.sql
     ```

     其中 `path/to/datafile.sql` 是要导入的 SQL 数据文件路径。执行上述命令后，将开始将数据文件内容导入到数据库中。



`rails s` 启动项目