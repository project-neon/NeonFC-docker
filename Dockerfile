FROM python:3.5
WORKDIR /
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/project-neon/NeonFC.git
WORKDIR /NeonFC
EXPOSE 5000
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "main.py"]
