FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
COPY requirements.txt /tmp
# RUN pip install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org -r /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
WORKDIR /app
COPY ./app .
EXPOSE 8000
CMD ["uvicorn", "sql_app.main:app", "--host", "0.0.0.0", "--port", "8000"]