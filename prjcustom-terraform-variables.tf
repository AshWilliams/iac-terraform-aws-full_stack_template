##  Application Custom Variables  ##

  ## Symfony Parameters yml
  
    variable "app-symfony-dedup_api_username" {
      description = "Requiered Username to access DuDupe API Interface"
    }

    variable "app-symfony-dedup_api_userpass" {
      description = "Requiered User Password to access DuDupe API Interface"
    }

    variable "app-symfony-bridgemanimages_api_base_url" {
      default     = "https://api.bridgemanimages.com"
      description = "Base URL of BridgemanImages.com API Interface"
    }

    variable "app-symfony-bridgemanimages_api_username" {
      description = "Requiered Username to access BridgemanImages.com API Interface"
    }
    
    variable "app-symfony-bridgemanimages_api_userpass" {
      description = "Requiered User Password to access BridgemanImages.com API Interface"
    }
