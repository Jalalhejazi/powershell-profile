# Denne er ok men vil bruge ByPropertyName og ikke ByValue

Get-Service | Stop-Process

# For at forstå hvad der sker må vi først 
# vide hvilke Objekter som komme fra Get-Service

Get-Service | Get-Member

#   TypeName: System.ServiceProcess.ServiceController <<<<<<<< denne er ikke kompatibel med Stop-Process, så ByValue duer ikke her,
#                                                              Get-Service forstår kun System.Diagnostics.Process Object.

# Name                      MemberType    Definition
# ----                      ----------    ----------
# Name                      AliasProperty Name = ServiceName <<<<<<<<< 
# RequiredServices          AliasProperty RequiredServices = ServicesDependedOn
# Disposed                  Event         System.EventHandler Disposed(System.Object, System.EventArgs)
# Close                     Method        void Close()
# Continue                  Method        void Continue()
# CreateObjRef              Method        System.Runtime.Remoting.ObjRef CreateObjRef(type requestedType)
# Dispose                   Method        void Dispose(), void IDisposable.Dispose()
# Equals                    Method        bool Equals(System.Object obj)
# ExecuteCommand            Method        void ExecuteCommand(int command)
# GetHashCode               Method        int GetHashCode()
# GetLifetimeService        Method        System.Object GetLifetimeService()
# GetType                   Method        type GetType()
# InitializeLifetimeService Method        System.Object InitializeLifetimeService()
# Pause                     Method        void Pause()
# Refresh                   Method        void Refresh()
# Start                     Method        void Start(), void Start(string[] args)
# Stop                      Method        void Stop()
# WaitForStatus             Method        void WaitForStatus(System.ServiceProcess.ServiceControllerStatus desiredStatus), void WaitForStatus(System.ServiceProcess.ServiceControll...
# CanPauseAndContinue       Property      bool CanPauseAndContinue {get;}
# CanShutdown               Property      bool CanShutdown {get;}
# CanStop                   Property      bool CanStop {get;}
# Container                 Property      System.ComponentModel.IContainer Container {get;}
# DependentServices         Property      System.ServiceProcess.ServiceController[] DependentServices {get;}
# DisplayName               Property      string DisplayName {get;set;}
# MachineName               Property      string MachineName {get;set;}
# ServiceHandle             Property      System.Runtime.InteropServices.SafeHandle ServiceHandle {get;}
# ServiceName               Property      string ServiceName {get;set;}
# ServicesDependedOn        Property      System.ServiceProcess.ServiceController[] ServicesDependedOn {get;}
# ServiceType               Property      System.ServiceProcess.ServiceType ServiceType {get;}
# Site                      Property      System.ComponentModel.ISite Site {get;set;}
# Status                    Property      System.ServiceProcess.ServiceControllerStatus Status {get;}
# ToString                  ScriptMethod  System.Object ToString();

# Og så må vi se hvilke parametre Stop-Process forstår

Help Stop-Process -ShowWindow

# Synopsis
#     Stops one or more running processes.

# Syntax
#     Stop-Process [-Id] <Int32[]> [-Force ] [-PassThru ] [-Confirm ] [-WhatIf ] [<CommonParameters>]

#     Stop-Process [-InputObject] <Process[]> [-Force ] [-PassThru ] [-Confirm ] [-WhatIf ] [<CommonParameters>]

#     Stop-Process [-Force ] [-PassThru ] -Name <String[]> [-Confirm ] [-WhatIf ] [<CommonParameters>]


# Description
#     The Stop-Process cmdlet stops one or more running processes. You can specify a process by process name or process ID (PID), or pass a process object to Stop-Process.  Stop-Process works only on processes running on the local computer.
    
#     On Windows Vista and later versions of Windows, to stop a process that is not owned by the current user, you must start Windows PowerShell with the "Run as administrator" option.  Also, you are prompted for confirmation unless you use the Force parameter.


# Parameters
#     -Force <SwitchParameter>
#         Stops the specified processes without prompting for confirmation. By default, Stop-Process prompts for confirmation before stopping any process that is not owned by the current user.
#         
# 
#         Required?                    false
#         Position?                    named
#         Default value                False
#         Accept pipeline input?       false
#         Accept wildcard characters?  false

#     -Id <Int32[]> <<<<<<<<<<<<<<<< kan f.eks ikke bruges da der ikke kommer en parameter med dette navn gennem pipen
#         Specifies the process IDs of the processes to be stopped. To specify multiple IDs, use commas to separate the IDs. To find the PID of a process, type "get-process". The parameter name ("Id") is optional.
# 
#         Required?                    true
#         Position?                    1
#         Default value                
#         Accept pipeline input?       true (ByPropertyName) 
#         Accept wildcard characters?  false

#     -InputObject <Process[]>
#         Stops the processes represented by the specified process objects. Enter a variable that contains the objects, or type a command or expression that gets the objects.
# 
#         Required?                    true
#         Position?                    1
#         Default value                
#         Accept pipeline input?       true (ByValue)
#         Accept wildcard characters?  false

#     -Name <String[]>  <<<<<<<<<<<<<<<<<<<<<<<<<< denne kan bruges da der er et match på "Name"
#         Specifies the process names of the processes to be stopped. You can type multiple process names (separated by commas) or use wildcard characters.
#
#         Required?                    true
#         Position?                    named
#         Default value                
#         Accept pipeline input?       true (ByPropertyName) <<<<<<<<<< og denne parameter kan bruge ByPropertyName
#         Accept wildcard characters?  true

#     -PassThru <SwitchParameter>
#         Returns an object representing the process. By default, this cmdlet does not generate any output.
# 
#         Required?                    false
#         Position?                    named
#         Default value                False
#         Accept pipeline input?       false
#         Accept wildcard characters?  false

#     -Confirm <SwitchParameter>
#         Prompts you for confirmation before running the cmdlet.

#         Required?                    false
#         Position?                    named
#         Default value                false
#         Accept pipeline input?       false
#         Accept wildcard characters?  false

#     -WhatIf <SwitchParameter>
#         Shows what would happen if the cmdlet runs. The cmdlet is not run.
#
#         Required?                    false
#         Position?                    named
#         Default value                false
#         Accept pipeline input?       false
#         Accept wildcard characters?  false



# Inputs
#     System.Diagnostics.Process  <<<<<<<<<<<<<<<<<<<<<<<<<<<< ikke samme Object type som den der kommer gennem pipen fra Get-Service, og kan derfor ikke bruges
#     You can pipe a process object to Stop-Process.

# Outputs
#     None or System.Diagnostics.Process
#     When you use the PassThru parameter, Stop-Process returns a System.Diagnostics.Process object that represents the stopped process. Otherwise, this cmdlet does not generate any output.
