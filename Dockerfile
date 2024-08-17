FROM python:3.12-slim
 
WORKDIR /app
 
COPY requirements.txt .
 
RUN pip3 install --no-cache-dir -r requirements.txt
 
RUN pip3 install gunicorn
 
COPY . .
 
EXPOSE 5000
 
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app" ]
