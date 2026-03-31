FROM langchain/langgraph-api:3.11

# Instalar dependencias del proyecto
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copiar el código fuente
COPY . .

# Puerto de Cloud Run (LangGraph API escucha en 8000 por defecto)
# El entrypoint de la imagen base maneja el inicio del servidor
ENV HOST=0.0.0.0
ENV PORT=8000
EXPOSE 8000
