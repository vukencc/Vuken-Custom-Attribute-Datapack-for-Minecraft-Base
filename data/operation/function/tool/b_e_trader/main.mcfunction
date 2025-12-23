$execute unless data block ~ ~-1 ~ Items.[{Slot:$(b)b}] run return run tellraw @p [{text:"Found No Slot : $(b) or $(d)",color:red,bold:true}]
$execute unless data block ~ ~-1 ~ Items.[{Slot:$(d)b}] run return run tellraw @p [{text:"Found No Slot : $(d)",color:red,bold:true}]

$execute unless data block ~ ~-1 ~ Items.[{Slot:$(c)b}] run data modify entity @s Offers.Recipes append value {maxUses:999999,uses:0,buy:{id:stone,components:{},count:1},sell:{id:stone,components:{},count:1}}
$execute if data block ~ ~-1 ~ Items.[{Slot:$(c)b}] run data modify entity @s Offers.Recipes append value {maxUses:999999,uses:0,buy:{id:stone,components:{},count:1},buyB:{id:stone,components:{},count:1},sell:{id:stone,components:{},count:1}}

$data modify entity @s Offers.Recipes.[$(a)].buy.id set from block ~ ~-1 ~ Items.[{Slot:$(b)b}].id
$data modify entity @s Offers.Recipes.[$(a)].buy.components set from block ~ ~-1 ~ Items.[{Slot:$(b)b}].components
$data modify entity @s Offers.Recipes.[$(a)].buy.count set from block ~ ~-1 ~ Items.[{Slot:$(b)b}].count

$data modify entity @s Offers.Recipes.[$(a)].sell.id set from block ~ ~-1 ~ Items.[{Slot:$(d)b}].id
$data modify entity @s Offers.Recipes.[$(a)].sell.components set from block ~ ~-1 ~ Items.[{Slot:$(d)b}].components
$data modify entity @s Offers.Recipes.[$(a)].sell.count set from block ~ ~-1 ~ Items.[{Slot:$(d)b}].count

$execute unless data block ~ ~-1 ~ Items.[{Slot:$(c)b}] run return run tellraw @p [{text:"Found No Slot : $(c) => Spawned 1->1 Offer",color:"yellow",bold:true}]
$data modify entity @s Offers.Recipes.[$(a)].buyB.id set from block ~ ~-1 ~ Items.[{Slot:$(c)b}].id
$data modify entity @s Offers.Recipes.[$(a)].buyB.components set from block ~ ~-1 ~ Items.[{Slot:$(c)b}].components
$data modify entity @s Offers.Recipes.[$(a)].buyB.count set from block ~ ~-1 ~ Items.[{Slot:$(c)b}].count

tellraw @p [{text:"Spawned 2->1 Offer ^=^",color:"#bdffb5",bold:true}]