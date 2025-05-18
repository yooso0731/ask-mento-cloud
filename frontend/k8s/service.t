apiVersion: v1
kind: Service
metadata:
  name: ${USER_NAME}-${SERVICE_NAME}
  namespace: ${NAMESPACE}
spec:
  selector:
    app: ${USER_NAME}-${SERVICE_NAME}
  ports:
    - name: http
      protocol: TCP
      port: ${CONTAINER_PORT}
      targetPort: 80
    - name: mgmt
      protocol: TCP
      port: 8081
      targetPort: 8081
  type: ClusterIP
