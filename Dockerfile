FROM sainarasimhav/tensorflow-opencv-gst:1.2

ARG http_proxy
ARG https_proxy


RUN mkdir -p /home/Natural_Disaster_Detector/

COPY ./output /home/Natural_Disaster_Detector/output/
COPY ./pyimagesearch /home/Natural_Disaster_Detector/pyimagesearch/
COPY ./train.py /home/Natural_Disaster_Detector/
COPY ./predict.py /home/Natural_Disaster_Detector/
COPY ./config /home/Natural_Disaster_Detector/config/

RUN export http_proxy=${http_proxy} && \
export https_proxy=${https_proxy} && \
apt-get update && \
apt-get install -y vim

RUN cd /home/Natural_Disaster_Detector/ && \
export http_proxy=${http_proxy} && \
export https_proxy=${https_proxy} && \
pip3 install --proxy=${http_proxy} -r /home/Natural_Disaster_Detector/config/requirements.txt

RUN chmod -R 0775 /home/Natural_Disaster_Detector/
RUN chown -R root:root /home/Natural_Disaster_Detector/

WORKDIR /home/Natural_Disaster_Detector/
