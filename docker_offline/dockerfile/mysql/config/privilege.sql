use mysql;
select host, user from user;
-- 因为mysql版本是5.6，因此新建用户为如下命令：
-- create user  docker identified by '123456';
-- 将model_market数据库的权限授权给创建的docker用户，密码为hzsqjs&*to2eK：
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
-- 这一条命令一定要有：
FLUSH PRIVILEGES;

UPDATE user SET password=PASSWORD("root") WHERE user='root';
FLUSH PRIVILEGES;