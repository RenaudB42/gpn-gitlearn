$proxy = git config --global --get-regexp http.*

if ($proxy -eq $null){
        git config --global http.proxy http://direct.proxy.i2:8080
        $proxy = git config --global --get-regexp http.*
        Write-Host("Proxy value set to : " + $proxy)
}
else {
    $proxy = $proxy.ToLower()
    if ( $proxy -contains "http.proxy http://direct.proxy.i2:8080"){
        git config --global --unset http.proxy
        Write-Host("Proxy removed")
    }
    else {
        Write-Host("Proxy unchanged because it was set to an unknown value : "+ $proxy)
    
    }
    
}

PAUSE