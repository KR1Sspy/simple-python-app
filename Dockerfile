# 1. Используем легкий образ Python
FROM python:3.9-slim

# 2. Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# 3. Копируем файл зависимостей и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Копируем исходный код приложения
COPY app.py .

# 5. Указываем, какой порт будет слушать контейнер
EXPOSE 5000

# 6. Команда для запуска приложения
CMD ["python", "app.py"]
