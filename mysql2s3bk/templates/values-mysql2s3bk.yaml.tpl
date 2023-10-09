# This is a YAML-formatted file.
# Declare variables to be passed into your templates.
jobs:
- name: mysql2s3
  image:
    repository: pyaephyohein/mysql2s3bk
    tag: alpha
    imagePullPolicy: IfNotPresent
  schedule: "* * * * *"
  command: ["/bin/sh"]
  args:
  - "-c"
  - "/apps/src/backup.sh"
  resources:
    limits:
      cpu: 50m
      memory: 256Mi
    requests:
      cpu: 50m
      memory: 256Mi
  failedJobsHistoryLimit: 1

  successfulJobsHistoryLimit: 3
  concurrencyPolicy: Forbid
  restartPolicy: OnFailure
  envFrom:
  - secretRef:
      name: ${SECRET_NAME} #update secret name
  configs:
    suspend:
      enabled: ${suspent_enabled}
    secret_env:
      MYSQL_USER: ${MYSQL_USER}
      MYSQL_PASSWORD: ${MYSQL_PASSWORD}
      MYSQL_PORT: "${MYSQL_PORT}"
      MYSQL_HOST: ${MYSQL_HOST}
      BUCKET_NAME: ${BUCKET_NAME}
      AWS_ACCESS_KEY_ID: ${AWS_ACCESS_KEY_ID}
      AWS_SECRET_ACCESS_KEY: ${AWS_SECRET_ACCESS_KEY}
      AWS_DEFAULT_REGION: ${AWS_DEFAULT_REGION}
