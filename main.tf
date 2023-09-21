# Creates a Windows webapp slot
resource "azurerm_windows_web_app_slot" "web_app_slot" {
  name            = var.name
  app_service_id = var.app_service_id

  site_config {
    ftps_state       = var.ftps_state
    app_command_line = var.app_command_line
    dynamic "application_stack" {
      for_each = var.current_stack == "docker" ? [1] : []
      content {
        docker_container_name       = var.stack_version
        # docker_registry_url      = var.docker_registry_url
        # docker_registry_username = var.docker_registry_username
        # docker_registry_password = var.docker_registry_password
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "dotnet" ? [1] : []
      content {
        dotnet_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "dotnetcore" ? [1] : []
      content {
        dotnet_core_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "java" ? [1] : []
      content {
        java_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "node" ? [1] : []
      content {
        node_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "php" ? [1] : []
      content {
        php_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "python" ? [1] : []
      content {
        python = var.python
      }
    }
  }
}