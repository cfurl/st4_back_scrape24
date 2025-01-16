FROM rocker/r-ver:4.2.2

RUN mkdir -p /home
RUN mkdir -p /home/code
RUN mkdir -p /home/data

RUN R -e "install.packages(c('dplyr','stringr','rvest'))"

WORKDIR /home

COPY /code/scrape24hr_nomads.R /code/scrape24hr_nomads.R
CMD Rscript /code/scrape24hr_nomads.R