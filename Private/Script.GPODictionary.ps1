﻿$Script:GPODitionary = @{
    Autologon                  = [ordered] @{
        Category = 'RegistrySettings'
        Settings = 'RegistrySettings'
        Code     = {
            ConvertTo-RegistryAutologon -GPOList $GPOList
        }
    }
    LocalUsersAndGroups        = [ordered] @{
        Category = 'LugsSettings'
        Settings = 'LocalUsersAndGroups'
        Code     = {
            ConvertTo-LocalUserAndGroups -GPOList $GPOList
        }
    }
    Policies                   = @{
        Category = 'RegistrySettings'
        Settings = 'Policy'
        Code     = {
            ConvertTo-Policies -GPOList $GPOList
        }
    }
    RegistrySettings           = [ordered] @{
        Category = 'RegistrySettings'
        Settings = 'RegistrySettings'
        Code     = {
            ConvertTo-RegistrySettings -GPOList $GPOList
        }
    }
    RegistrySettingsCollection = [ordered] @{
        Category = 'RegistrySettings'
        Settings = 'RegistrySettings'
        Code     = {
            ConvertTo-RegistrySettingsCollection -GPOList $GPOList
        }
    }
    Scripts                    = [ordered] @{
        Category = 'Scripts'
        Settings = 'Script'
        Code     = {
            ConvertTo-Scripts -GPOList $GPOList
        }
    }
    SecurityOptions            = [ordered] @{
        Category = 'SecuritySettings'
        Settings = 'SecurityOptions'
        Code     = {
            ConvertTo-SecurityOptions -GPOList $GPOList
        }
    }
    SoftwareInstallation       = [ordered] @{
        Category = 'SoftwareInstallationSettings'
        Settings = 'MsiApplication'
        Code     = {
            ConvertTo-SoftwareInstallation -GPOList $GPOList
        }
    }
    SystemServices             = [ordered] @{
        Description = ''
        GPOPath     = 'Computer Configuration -> Policies -> Windows Settings -> Security Settings -> System Services'
        Category    = 'SecuritySettings'
        Settings    = 'SystemServices'
        Code        = {
            ConvertTo-SystemServices -GPOList $GPOList
        }
    }
    SystemServicesNT           = [ordered] @{
        Description = ''
        GPOPath     = 'Computer Configuration -> Preferences -> Control Pannel Settings -> Services'
        Category    = 'ServiceSettings'
        Settings    = 'NTServices'
        Code        = {
            ConvertTo-SystemServicesNT -GPOList $GPOList
        }
    }
    #LugsSettings    = @{
    #    LocalUsersAndGroups = $LugsSettingsLocalUsersAndGroups

}