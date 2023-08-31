variable "name" {
    description = "The name of the webapp deployment slot to be created"
    type = string
  
}
variable "app_service_id" {
    description = "The resource id of the existing webapp "
    type = string
  
}
variable "current_stack" {
    description = "The application stack of the webapp"
    type = string
  
}
variable "stack_version" {
    description = "Application Stack Version"
    type = string
  
}
variable "java_server" {
    description = "The Java server type"
    type = string
    default = "JAVA"
  
}
variable "docker_image_tag" {
    description = "he image Tag to use. e.g. latest"
    type = string
    default = "latest"
  
}
variable "app_command_line" {
    description = "The App command line to launch"
    type = string
  
}
variable "ftps_state" {
    description = "The State of FTP / FTPS service. Possible values include AllAllowed, FtpsOnly, and Disabled."
    type = string
  
}