From python

RUN mkdir /app
WORKDIR /app
COPY requirement.txt .
RUN pip install -r requirement.txt
COPY . .
CMD python app.py