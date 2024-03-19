FROM python:3.9

# Используем официальный образ nginx
FROM nginx:latest



WORKDIR src

# Копируем наш HTML-файл в директорию, где Nginx ищет статичные файлы
COPY index.html /usr/share/nginx/html/


# Экспортируем порт 80 для Nginx
EXPOSE 80



RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

ENV MY_ENV=netology_18_03_24


CMD ["nginx", "-g", "daemon off;", "python3", "-u", "main.py", "--host", "0.0.0.0", "--port", "5050"]