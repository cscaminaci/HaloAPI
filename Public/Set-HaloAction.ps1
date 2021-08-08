Function Set-HaloAction {
    <#
    .SYNOPSIS
        Updates an action via the Halo API.
    .DESCRIPTION
        Function to send a action update request to the Halo API
    .OUTPUTS
        Outputs an object containing the response from the web request.
    #>
    [CmdletBinding()]
    Param (
        [Parameter( Mandatory = $True )]
        [PSCustomObject]$Action
    )
    Invoke-HaloUpdate -Object $Action -Endpoint "Actions" -update
}