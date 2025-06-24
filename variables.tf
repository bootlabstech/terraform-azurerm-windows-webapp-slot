variable "name" {
  type        = string
  description = "The name which should be used for this Windows Windows Web App."
}

variable "app_service_id" {
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
  description = "Enable Python runtime stack (true for Python-based apps, false otherwise)."
  default     = false
}

variable "virtual_network_subnet_id" {
  type        = string
  description = "The resource ID of the subnet to integrate the App Service with a virtual network."
}

variable "vnet_route_all_enabled" {
  type        = bool
  description = "Route all outbound App Service traffic through the integrated virtual network."
  default = false
}

variable "physical_path" {
  type        = string
  description = "The physical file system path inside the App Service where the virtual directory maps."
}

variable "virtual_path" {
  type        = string
  description = "The virtual URL path users use to access content served from 'physical_path'."
}

variable "physical_path1" {
  type        = string
  description = "An additional physical path for configuring a second virtual directory mapping."
}

variable "virtual_path1" {
  type        = string
  description = "An additional virtual path for accessing 'physical_path1' in the web application."
}