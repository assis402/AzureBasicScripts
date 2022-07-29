$ResourceGroupName="matheus-az204"
$WebAppName="companyapp9090assis"
$AppServicePlanName="companyplan200assis"

Set-AzAppServicePlan -Name $AppServicePlanName -ResourceGroupName $ResourceGroupName `
-Tier Standard

$SlotName = "Staging"
New-AzWebAppSlot -Name $WebAppName -ResourceGroupName $ResourceGroupName `
-Slot $SlotName 

$Properties=@{
    repoUrl = "https://github.com/assis402/SimpleWebAppAzureContainer";
    branch = "main";
    isManualIntegration="true";
}

Set-AzResource -ResourceGroupName $ResourceGroupName -Properties $Properties `
-ResourceType Microsoft.Web/sites/slots/sourcecontrols `
-ResourceName $WebAppName/$SlotName/web -ApiVersion 2015-08-01 -Force

$TargetSlot = "production"

Switch-AzWebAppSlot -Name $WebAppName -ResourceGroupName $ResourceGroupName `
-SourceSlotName $SlotName -DestinationSlotName $TargetSlot