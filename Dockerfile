FROM python:3.7
WORKDIR /
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/project-neon/NeonFC.git
RUN git checkout simulated
WORKDIR /NeonFC
EXPOSE 5000
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "main.py"]
