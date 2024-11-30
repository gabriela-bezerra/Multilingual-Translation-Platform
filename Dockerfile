FROM python:3.12-slim 

WORKDIR /app 

# Copiar apenas o requirements.txt primeiro para aproveitar o cache do Docker
COPY requirements.txt .

# Instalar dependências
RUN pip install -r requirements.txt

# Copiar o resto do projeto
COPY src/ ./src/

# Expor a porta do Streamlit 
EXPOSE 8501 

# Comando para executar a aplicação
CMD ["streamlit", "run", "src/app.py", "--server.address", "0.0.0.0"]