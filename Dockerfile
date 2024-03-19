FROM python:3.9-alpine
# Установите gcc
RUN apk add --no-cache gcc musl-dev linux-headers
WORKDIR src


COPY ./requirements.txt ./requirements.txt
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt


COPY . .


ENV MY_ENV=netology_18_03_24

# Экспортируем порт 80 для Nginx
EXPOSE 5050

CMD ["python3", "-u", "main.py", "--host", "0.0.0.0", "--port", "5050"]



 