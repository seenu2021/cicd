FROM centos:7

# Install httpd (web server)
RUN yum -y update && \
    yum -y install httpd httpd-tools && \
    yum clean all

# Copy home page to Apache default document root
COPY index.html /var/www/html/index.html

# Expose HTTP port
EXPOSE 80

# Start web server in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
