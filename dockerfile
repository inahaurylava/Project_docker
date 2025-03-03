# Базовый образ Python
#FROM python:3.9
# Устанавливаем рабочую директорию
#WORKDIR /app
# Копируем файл с кодом
#COPY script.py .
# Запускаем Python-скрипт
#CMD ["python", "script.py"]

FROM python:3.9

WORKDIR /tests

COPY test_script.py .

RUN pip install pytest

CMD ["pytest", "-s", "test_script.py"]





