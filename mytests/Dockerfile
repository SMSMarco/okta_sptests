################################################################
# 1. docker build --no-cache -t test-sp .

# 2. docker run -it -p 8081:8081 --name test-sp test-sp:latest

# 3a. docker logs --tail 100 test-sp

# 3b.  ./docker-run.ps1
################################################################

FROM ortussolutions/commandbox

# Metadata
LABEL maintainer="Ortus Solutions <info@ortussolutions.com>"
LABEL repository="https://github.com/Ortus-Solutions/docker-commandbox"

# ColdBox Healthcheck
ENV HEALTHCHECK_URI="http://127.0.0.1:${PORT}/healthcheck"

# Copy application files to root - Uses .dockerignore to ignore files
COPY ./ ${APP_DIR}/

# Copy your script into the image
COPY ./sptest1/myscript.sh ${APP_DIR}/

# Make the script executable
RUN chmod +x ${APP_DIR}/myscript.sh

# Set the entrypoint to your script
CMD ["/myscript.sh"]

# bypasses Zscaler fake certs into the HTTPS traffic (MO)
RUN box cfml sslcertificateInstall www.forgebox.io

# Make sure dependencies are installed
RUN cd ${APP_DIR} && box install --production

# WARM UP THE SERVER
RUN ${BUILD_DIR}/util/warmup-server.sh

# Run it
ENTRYPOINT ${BUILD_DIR}/run.sh