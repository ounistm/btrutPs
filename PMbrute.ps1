
$st=[System.Diagnostics.Stopwatch]::StartNew()
#=======================lazemlek 20malion malion =16!               =>mazal lazemlek analyse
$place=@(48,49,50,51,52,53,54,55,56,57,97,98,99,100,101,102)
for($i1=0;$i1 -le $place.Length-1;$i1++){
#---------------------boucle1
$n1=[char]$place[$i1];#$n1
 #---------------------boucle2
 for($i2=0;$i2 -le $place.Length-1;$i2++){
 $n2=[char]$place[$i2];#$n1+$n2
  #---------------------boucle3
  for($i3=0;$i3 -le $place.Length-1;$i3++){
  $n3=[char]$place[$i3];#$n1+n1+$n2   
   #---------------------boucle4
   for($i4=0;$i4 -le $place.Length-1;$i4++){
   $n4=[char]$place[$i4];#$n1+$n2+$n3+$n4 
    #---------------------boucle5
    for($i5=0;$i5 -le $place.Length-1;$i5++){
    $n5=[char]$place[$i5];#$n1+$n2+$n3+$n4+$n5  
     #---------------------boucle6
     for($i6=0;$i6 -le $place.Length-1;$i6++){
     $n6=[char]$place[$i6];#$n1+$n2+$n3+$n4+$n5+$n6
      #---------------------boucle7
      for($i7=0;$i7 -le $place.Length-1;$i7++){
      $n7=[char]$place[$i7];#$n1+$n2+$n3+$n4+$n5+$n6+$n7
      if(($n1 -eq "f") -AND ($n2-eq"f") -AND ($n3-eq"f")-AND ($n4-eq"f")-AND ($n5-eq"f") -AND ($n6-eq"f") -AND ($n6-eq"f" )  -AND ($n7-eq"f" )  ){Write-Host "oooooooooooook "} 
      }
       
     }         
    }  
   }
  }
 }
}
$st.Elapsed

# Write-Host 

