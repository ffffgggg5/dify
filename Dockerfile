FROM langgenius/dify:latest

ENV MODE=api
ENV PORT=5001

EXPOSE 5001

CMD ["sh", "-c", "dify start"]
