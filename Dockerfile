# -----------------------------------------------------------------------------
# ACTION IMAGE
#
# A simple image which just copies and runs the action script.
# -----------------------------------------------------------------------------
# Build a lightweight environment
FROM alpine:3.16

# Install dependencies
RUN apk update;
RUN apk add openssh;

# Copy script
COPY entrypoint.sh /entrypoint.sh

# Increase permissions
RUN chmod +x /entrypoint.sh

# Run script on start
ENTRYPOINT ["/entrypoint.sh"]