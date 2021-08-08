Function Set-HaloKBArticle {
    <#
    .SYNOPSIS
        Updates a KBArticle via the Halo API.
    .DESCRIPTION
        Function to send an KBArticle update request to the Halo API
    .OUTPUTS
        Outputs an object containing the response from the web request.
    #>
    [CmdletBinding()]
    Param (
        [Parameter( Mandatory = $True )]
        [PSCustomObject]$KBArticle
    )
    Invoke-HaloUpdate -Object $KBArticle -Endpoint "KBArticle" -update
}