FROM php:7.4-apache 
RUN docker-php-ext-install mysqli

#upload
RUN echo "file_uploads = On\n" \
         "memory_limit = 50M\n" \
         "upload_max_filesize = 10M\n" \
         "post_max_size = 50M\n" \
         "max_execution_time = 90\n" \
         > /usr/local/etc/php/conf.d/uploads.ini
