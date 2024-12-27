# start docker container -> ./docker-run.ps1

$thispath = Get-Location

Set-Location $thispath

Write-Host " "
Write-Host "=== ColdFusion package repository ===" -f yellow
Write-Host " "

# creates volume to packages bundle (hosted on local server)
# to facilitate downloading and installing of cf packages
docker container run --rm `
-p 8081:8081 `
--volume "C:\ColdFusion2023\bundles:/usr/local/lib/serverHome/WEB-INF/bundles" `
--name test-sp `
test-sp

#start-process "http://okta.sptest1.com:8081/saml-response.cfm"