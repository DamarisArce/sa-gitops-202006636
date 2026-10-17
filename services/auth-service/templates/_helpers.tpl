{{/*
Nombre completo del recurso, combinando el release y el nombre del chart.
*/}}
{{- define "auth-service.fullname" -}}
{{- printf "%s-auth-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Labels comunes para todos los recursos de este subchart.
*/}}
{{- define "auth-service.labels" -}}
app.kubernetes.io/name: auth-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: microservice
app.kubernetes.io/part-of: sa-platform
{{- end -}}

{{/*
Selector labels usados en matchLabels.
*/}}
{{- define "auth-service.selectorLabels" -}}
app.kubernetes.io/name: auth-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}