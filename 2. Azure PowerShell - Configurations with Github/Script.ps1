$ResourceGroupName="matheus-az204"
$WebAppName="companyapp9090assis"

$Properties=@{
    repoUrl = "https://github.com/assis402/SimpleWebAppAzureContainer";
    branch = "main";
    isManualIntegration="true";
}

Set-AzResource -ResourceGroupName $ResourceGroupName -Properties $Properties `
-ResourceType Microsoft.Web/sites/sourcecontrols `
-ResourceName $WebAppName/web -ApiVersion 2015-08-01 -Force