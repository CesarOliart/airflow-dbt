FROM apache/airflow:2.2.0
USER root
RUN apt-get update \
  && apt-get install -y python3.7-dev \
  && apt-get install -y --no-install-recommends gcc \
         vim \
  && apt-get install git -y \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
USER airflow
RUN pip install --no-cache-dir lxml
RUN pip install backports-datetime-fromisoformat
RUN pip install plyvel
RUN pip install dbt-core==0.21.1
RUN pip install dbt-snowflake==0.21.0
RUN pip install airflow-provider-fivetran
RUN pip install requests
RUN pip install slackclient
RUN pip install pytz
RUN pip install datetime
RUN pip install apache-airflow-providers-http
RUN pip install apache-airflow-providers-slack
RUN pip install apache-airflow-providers-snowflake