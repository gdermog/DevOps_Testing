FROM python:3.9-slim
WORKDIR /divapp
COPY divapp/__init__.py .
COPY divapp/app.py .
WORKDIR /tests
COPY tests/test_divide.py .
WORKDIR /
RUN python -m unittest tests/test_divide.py -v
CMD ["python", "divapp/app.py"]