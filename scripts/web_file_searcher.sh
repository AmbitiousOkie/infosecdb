#!/bin/bash

rm output.txt

declare -a hosts=("172.16.49.20" "172.16.49.21" "172.16.49.22")

for h in "${hosts[@]}"
do
	declare -a ports=("5985" "5986" "8443" "8777" "8080" "9021" "47001")
	for p in "${ports[@]}"
		do
			declare -a cards=("9_of_spades" "nine_of 9_of_spades" "2_of_clubs" "two_of_clubs" "queen_of_clubs" "6_of_hearts" "six_of_hearts" "9_of_hearts" "nine_of_hearts" "ace_of_hearts" "ten_of_diamonds" "10_of_diamonds" "ace_of_diamonds" "king_of_diamonds")
			for c in "${cards[@]}"
				do
					link = $h + ":" + $p + "/" + $c

					echo "$h:$p/$c /n" >> output.txt

					link1 = "http://"+$link
					link2 = "http://"+$link+".png"
					link3 = "https://"+$link
					link4 = "https://"+$link+".png"

					declare -a links=($link1 $link2 $link3 $link4)

					for l in  "{links[@]}"
						do
							echo $l
						done

					# curl -I -m 5 
				done
		done
done