{{/*
Expand the name of the chart.
*/}}
{{- define "docusaurus-docs.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" | required "Chart name cannot be empty" }}
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
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
app.kubernetes.io/name: {{ include "docusaurus-docs.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
{{- end }}

{{/*
Selector labels
*/}}
{{- define "docusaurus-docs.selectorLabels" -}}
app.kubernetes.io/name: {{ include "docusaurus-docs.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end }}
