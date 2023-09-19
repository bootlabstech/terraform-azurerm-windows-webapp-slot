variable "name" {
  type        = string
  description = "The name which should be used for this Windows Windows Web App."
}

variable "service_plan_id" {
  type        = string
  description = "The ID of the Service Plan that this Windows App Service will be created in."

}

variable "ftps_state" {
  type        = string
  description = "The State of FTP / FTPS service. Possible values include: AllAllowed, FtpsOnly, Disabled."
  default     = "FtpsOnly"
}

variable "app_command_line" {
  type        = string
  description = "The App command line to launch."
  default     = ""
}
variable "current_stack" {
  type        = string
  description = " The Application Stack for the Windows Web App. Possible values include dotnet, dotnetcore, node, python, php, and java."
}

variable "stack_version" {
  type        = string
  description = "Version of the selected stack."

}

variable "docker_registry_url" {
  type        = string
  description = "The URL of the container registry where the docker_image_name is located. e.g. https://index.docker.io or https://mcr.microsoft.com. This value is required with docker_image_name."
  default     = "https://mcr.microsoft.com"
}
variable "docker_registry_username" {
  type        = string
  description = "The User Name to use for authentication against the registry to pull the image."
  default     = "admin"

}
variable "docker_registry_password" {
  type        = string
  description = "The User Name to use for authentication against the registry to pull the image."
  default     = "Welcome@1234"

}

variable "python" {
  type        = bool
  description = "value"
  default     = false

}