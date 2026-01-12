{{/*
Expand the name of the chart.
*/}}
{{- define "docusaurus-docs.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" | required "Name cannot be empty" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "docusaurus-docs.fullname" -}}
{{- include "docusaurus-docs.name" . }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "docusaurus-docs.labels" -}}
helm.sh/chart: {{ include "docusaurus-docs.chart" . }}
app.kubernetes.io/name: {{ include "docusaurus-docs.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "docusaurus-docs.selectorLabels" -}}
app.kubernetes.io/name: {{ include "docusaurus-docs.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end }}

{{/*
Chart version
*/}}
{{- define "docusaurus-docs.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}
