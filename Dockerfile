From python

RUN mkdir /app
WORKDIR /app
COPY requirement.txt .
RUN pip install -r requirement.txt
COPY . .
RUN chmod 700 start.sh
CMD [ "./start_app.sh" ]
