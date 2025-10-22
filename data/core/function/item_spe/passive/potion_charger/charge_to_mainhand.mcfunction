kill @n[type=marker,tag=pc.placeholder]
$tp @n[type=acacia_chest_boat,distance=..8,tag=PotionCharger.Init,nbt={data:{UUID:$(UUID)}}] ~ ~-300 ~
$kill @n[type=acacia_chest_boat,tag=PotionCharger.Init,nbt={data:{UUID:$(UUID)}}]
tag @s remove pc.cursor