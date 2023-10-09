FROM python:3.7
WORKDIR /
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/project-neon/NeonFCsim.git
WORKDIR /NeonFCsim
RUN git checkout larc2023
EXPOSE 5000
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python3", "main.py"]
