# start docker container -> ./docker-run.ps1

$thispath = Get-Location

Set-Location $thispath

Write-Host " "
Write-Host "*** $thisPath ***" -f cyan
Write-Host " "

docker container run --rm `
-p 8081:8081 `
--volume "C:\ColdFusion2023\bundles:/usr/local/lib/serverHome/WEB-INF/bundles" `
--name test-sp `
test-sp

Write-Host " "
docker ps -a
Write-Host " "

# start-process http://localhost:4000
# start-process http://localhost