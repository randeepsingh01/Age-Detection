FROM python:3

COPY detect_age_file.py ./
COPY requirements.txt ./
COPY deploy.prototxt ./
COPY res10_300x300_ssd_iter_140000.caffemodel ./
COPY age_deploy.prototxt ./
COPY age_net.caffemodel ./
COPY deploy_gender.prototxt ./
COPY gender_net.caffemodel ./
COPY test.mp4 ./

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python","detect_age_file.py"]



