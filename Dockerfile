FROM python:3.8

WORKDIR /app

COPY requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install streamlit

COPY main.py .

EXPOSE 8501

CMD ["streamlit", "run", "main.py"]