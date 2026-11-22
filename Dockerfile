FROM python:3.12-slim
WORKDIR /app
COPY faiss_service/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY data /app/data
COPY faiss_service /app/faiss_service
EXPOSE 8000
CMD ["uvicorn", "faiss_service.app:app", "--host", "0.0.0.0", "--port", "8000"]
