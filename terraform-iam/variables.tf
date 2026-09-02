variable "website_bucket_name" {
  description = "Name of the S3 bucket hosting the static website"
  type        = string
}

variable "artifact_bucket_name" {
  description = "Name of the S3 bucket CodePipeline uses for build artifacts"
  type        = string
}