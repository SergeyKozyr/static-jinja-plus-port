# StaticJinjaPlus Docker Port

Docker-образы для [StaticJinjaPlus](https://github.com/MrDave/StaticJinjaPlus)

## Сборка

1. Выбрать образ `debian.Dockerfile` или `slim.Dockerfile`
2. Выбрать [версию](https://github.com/MrDave/StaticJinjaPlus/tags) библиотеки
3. Получить хэш-сумму нужной версии:
   ```shell
   curl -L https://github.com/MrDave/StaticJinjaPlus/archive/refs/tags/<версия>.tar.gz | sha256sum
   ```
4. Собрать образ
   ```shell
   docker build -f <путь до Dockerfile> --build-arg VERSION=<версия> --build-arg SHA256=<хэш-сумма> -t <название образа> .
   ```

## Цели проекта

Код написан в учебных целях — это урок в курсе по Python и веб-разработке на сайте [Devman](https://dvmn.org).
