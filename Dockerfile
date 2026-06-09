FROM python:3.13-slim

WORKDIR /app

# Install deps first for layer caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# App code + static assets (index.html, react/recharts/babel bundles, etc.)
COPY server.py index.html ./
COPY *.js ./

# Bind to all interfaces inside the container so the host port mapping works.
# API key is supplied at run time via -e INFOBLOX_API_KEY, never baked in.
ENV HOST=0.0.0.0 \
    PORT=8080

EXPOSE 8080

CMD ["python", "server.py"]
