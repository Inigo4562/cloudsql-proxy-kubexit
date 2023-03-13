FROM karlkfi/kubexit:0.3.2 AS kubexit

FROM gcr.io/cloudsql-docker/gce-proxy:1.26.0 AS runner

COPY --from=kubexit /bin/kubexit /bin/

ENTRYPOINT ["kubexit", "/cloud_sql_proxy"]
