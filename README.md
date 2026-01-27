# StaticJinjaPlus Docker Port

Docker-образы для [StaticJinjaPlus](https://github.com/MrDave/StaticJinjaPlus)

## Сборка
1. Выбрать образ `debian.Dockerfile` или `slim.Dockerfile`
2. Выбрать [версию](https://github.com/MrDave/StaticJinjaPlus/tags) библиотеки
3. Собрать образ
   ```shell
   docker build -f <путь до Dockerfile> --build-arg VERSION=<версия библиотеки> -t <название образа> .
   ```

## Цели проекта
Код написан в учебных целях — это урок в курсе по Python и веб-разработке на сайте [Devman](https://dvmn.org).
