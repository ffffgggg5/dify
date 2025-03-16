FROM python:3.10-slim

# 環境変数設定
ENV PYTHONUNBUFFERED=1
ENV MODE=api
ENV PORT=5001

# 作業ディレクトリを設定
WORKDIR /app

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Difyのコードをコピー
COPY . /app

# Pythonの依存関係をインストール
RUN pip install --upgrade pip
#RUN pip install -r api/requirements.txt

# ポートを開放
EXPOSE 5001

# サーバー起動コマンド
CMD ["python", "api/dify_app.py"]

