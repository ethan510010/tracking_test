# 使用最新的 mysql 官方鏡像作為起始鏡像
FROM mysql:latest

# 查了一下 mysql image docker hub 的說明文件，有提到說如果我們要打包一些 db 相關資料格式的定義，要把相關的資料弄進 /docker-entrypoint-initdb.d/ 底下
COPY backup.sql /docker-entrypoint-initdb.d/
