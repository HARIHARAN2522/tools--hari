{{/*
Expand the name of the chart.
*/}}
{{- define "docusaurus-docs.name" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if $name -}}
{{- $name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- fail "Chart name cannot be empty. Set .Chart.Name or .Values.nameOverride." -}}
{{- end -}}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "docusaurus-docs.selectorLabels" -}}
app.kubernetes.io/name: {{ include "docusaurus-docs.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "docusaurus-docs.labels" -}}
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
app.kubernetes.io/name: {{ include "docusaurus-docs.name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
{{- end -}}
