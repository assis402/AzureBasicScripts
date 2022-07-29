$ResourceGroupName="matheus-az204"
$Location="North Europe"
$AppServicePlanName="companyplan200assis"
$WebAppName="companyapp9090assis"

# Connect-AzAccount

# New-AzResourceGroup -Name $ResourceGroupName -Location $Location

# New-AzAppServicePlan -ResourceGroupName $ResourceGroupName `
# -Location $Location -Tier "B1" -NumberofWorkers 1 -Name $AppServicePlanName

New-AzWebApp -ResourceGroupName $ResourceGroupName -Name $WebAppName `
-Location $Location -AppServicePlan $AppServicePlanName