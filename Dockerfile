FROM langchain/langgraph-api:3.11

# Instalar dependencias del proyecto
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copiar el código fuente
COPY . .

# Puerto que expone Cloud Run
ENV PORT=8080
EXPOSE 8080

# Comando de inicio usando langgraph-cli
CMD exec langgraph up --port $PORT --host 0.0.0.0
