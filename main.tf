resource "azurerm_windows_web_app_slot" "webapp_slot" {
    name = var.name
    app_service_id = var.app_service_id
    site_config {
        app_command_line = var.app_command_line
        ftps_state = var.ftps_state
        dynamic "application_stack" {
          for_each = var.current_stack == "python" ? [1] : []
          content {
            python_version = var.stack_version
          }
        }
        dynamic "application_stack" {
          for_each = var.current_stack == "node" ? [1] : []
          content {
            node_version = var.stack_version
          }
        }
        dynamic "application_stack" {
          for_each = var.current_stack == "docker" ? [1] : []
          content {
            docker_image     = var.stack_version
            docker_image_tag = var.docker_image_tag
          }
        }
        dynamic "application_stack" {
          for_each = var.current_stack == "dotnet" ? [1] : []
          content {
            dotnet_version = var.stack_version
          }
        }
        dynamic "application_stack" {
          for_each = var.current_stack == "java" ? [1] : []
          content {
            java_server  = var.java_server
            java_version = var.stack_version
          }
        }
        dynamic "application_stack" {
          for_each = var.current_stack == "php" ? [1] : []
          content {
            php_version = var.stack_version
          }
        }
        dynamic "application_stack" {
          for_each = var.current_stack == "ruby" ? [1] : []
          content {
            ruby_version = var.stack_version
          }
        }
          

    }

  
} 
# test