# 基于官方 lightweight OpenJDK 17 运行时镜像
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 定义一个可覆盖的参数，默认指向 Maven 打包后生成的 jar 文件
ARG JAR_FILE=target/order-ms-0.0.1-SNAPSHOT.jar

# 把构建好的 Jar 复制到容器里，重命名为 app.jar
COPY ${JAR_FILE} app.jar

# 容器启动时执行此命令
ENTRYPOINT ["java", "-jar", "app.jar"]

