{{/*
Image used by the container.
*/}}
{{- define "bjw-s.common.lib.container.field.image" -}}
  {{- $ctx := .ctx -}}
  {{- $rootContext := $ctx.rootContext -}}
  {{- $containerObject := $ctx.containerObject -}}

  {{- $imageRepo := $containerObject.image.repository -}}
  {{- $imageTag := $containerObject.image.tag -}}
  {{- $imageDigest := $containerObject.image.digest -}}

  {{- if and $imageRepo $imageTag -}}
    {{- printf "%s:%s" $imageRepo $imageTag -}}
  {{- end -}}

  {{- if and $imageRepo $imageTag $imageDigest -}}
    {{- printf "%s:%s" $imageRepo $imageTag $imageDigest -}}
  {{- end -}}
{{- end -}}
