# This docker file is a simple utility to list the contents of a docker COPY operation
from busybox

# Copy the content you want listed into /image-content
COPY . /image-content

RUN \
    printf "\n\n\n\n\n\n\n\n================== Content ==================\n\n" && \
    ls -lhR /image-content && \
    printf '\n================== End ==================\n\n\n\n\n\n\n\n\n'
