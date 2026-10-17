{{- define "order-service.fullname" -}}
{{- printf "%s-order-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "order-service.labels" -}}
app.kubernetes.io/name: order-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: microservice
app.kubernetes.io/part-of: sa-platform
{{- end -}}

{{- define "order-service.selectorLabels" -}}
app.kubernetes.io/name: order-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}