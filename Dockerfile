FROM python:3.9

WORKDIR src

# Установите gcc
RUN apt-get update && apt-get install -y gcc

COPY . .

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt
# Копируем наш HTML-файл в директорию, где Nginx ищет статичные файлы
 

ENV MY_ENV=netology_18_03_24

# Экспортируем порт 80 для Nginx
EXPOSE 5050

#CMD ["python3", "-u", "main.py", "--host", "0.0.0.0", "--port", "5050"]

# Запуск бесконечного процесса, чтобы контейнер оставался активным
#CMD ["tail", "-f", "/dev/null"]


CMD ["python3", "-u", "main.py", "--host", "0.0.0.0", "--port", "5050"]



 