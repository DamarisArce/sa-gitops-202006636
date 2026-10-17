{{- define "payment-service.fullname" -}}
{{- printf "%s-payment-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "payment-service.labels" -}}
app.kubernetes.io/name: payment-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: microservice
app.kubernetes.io/part-of: sa-platform
{{- end -}}

{{- define "payment-service.selectorLabels" -}}
app.kubernetes.io/name: payment-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}