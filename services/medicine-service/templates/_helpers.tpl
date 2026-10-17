{{- define "medicine-service.fullname" -}}
{{- printf "%s-medicine-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "medicine-service.labels" -}}
app.kubernetes.io/name: medicine-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: microservice
app.kubernetes.io/part-of: sa-platform
{{- end -}}

{{- define "medicine-service.selectorLabels" -}}
app.kubernetes.io/name: medicine-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}