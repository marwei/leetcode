# Ruby on LeetCode
---
Yet another [LeetCode](https://leetcode.com) solution repo. It uses [RSpec](http://rspec.info/) for test-driven development.


## Set Up
---
clone this repo: `$ git clone git@github.com:marwei/leetcode.git`

install a couple of gems `$ bundle install`

initialize RSpec `$ rspec --init` (or not)

start Guard `$ guard`

## Use
---
create/remove/test files with `$ bin/leet <command> <filename>`

e.g.

* `bin/leet create 100`  # create problem/100.rb and spec/100_spec.rb
* `bin/leet delete 100`  # remove problem/100.rb and spec/100_spec.rb
* `bin/leet test 100`  # run rspec spec/100_spec.rb

(if you find the bin/leet annoying, just run `sudo ln -s $PWD/bin/leet usr/local/bin` and you will be able to run `leet` directly)

## Resource
---
There are several helper modules located in lib folder to help debug your solutions. 

* lib/tree/build_tree.rb helps build tree from array.
	
		e.g. 

			require "../lib/tree/build_tree.rb"
			BuildTree.build_tree_from_array [1, 2, 3, 4, nil, nil, 7] 
	
		will return:	 1 <- root
			           /   \
			           2   3
			          / \ / \
			          4     7
		(must fill empty node's position with nil)
	
* lib/tree/print_tree.rb helps visualize tree.
	
		e.g.
		
			require "../lib/tree/build_tree.rb"
			require "../lib/tree/print_tree.rb"
			tree = BuildTree.build_tree_from_array [1, 2, 3, 4, nil, nil, 7]
			PrintTree.print_tree_graph tree
	
		will return:	   _1
					   /        \      
					   _2      _3      
					 /    \  /    \  
					 _4  __  __  _7  
 
* lib/tree/traverse_tree.rb returns pre, in, postorder traversal of a tree

		e.g.
		
			require "../lib/tree/build_tree.rb"
			require "../lib/tree/print_tree.rb"
			tree = BuildTree.build_tree_from_array [1, 2, 3, 4, nil, nil, 7]
			TraverseTree.preorder_traversal tree
		
		will return: [1, 2, 4, 3, 7] 
		
Of course, if you find including individual files is a little annoying, just require "../lib/tree.rb"
## Solutions
---
|     |     |     |     |     |     |     |     |     |     |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|[1]|[2]|[3]|[4]|[5]|[6]|[7]|[8]|[9]|[10]|
|[11]|[12]|[13]|[14]|[15]|[16]|[17]|[18]|[19]|[20]|
|[21]|[22]|[23]|[24]|[25]|[26]|[27]|[28]|[29]|[30]|
|[31]|[32]|[33]|[34]|[35]|[36]|[37]|[38]|[39]|[40]|
|[41]|[42]|[43]|[44]|[45]|[46]|[47]|[48]|[49]|[50]|
|[51]|[52]|[53]|[54]|[55]|[56]|[57]|[58]|[59]|[60]|
|[61]|[62]|[63]|[64]|[65]|[66]|[67]|[68]|[69]|[70]|
|[71]|[72]|[73]|[74]|[75]|[76]|[77]|[78]|[79]|[80]|
|[81]|[82]|[83]|[84]|[85]|[86]|[87]|[88]|[89]|[90]|
|[91]|[92]|[93]|[94]|[95]|[96]|[97]|[98]|[99]|[100]|
|[101]|[102]|[103]|[104]|[105]|[106]|[107]|[108]|[109]|[110]|
|[111]|[112]|[113]|[114]|[115]|[116]|[117]|[118]|[119]|[120]|
|[121]|[122]|[123]|[124]|[125]|[126]|[127]|[128]|[129]|[130]|
|[131]|[132]|[133]|[134]|[135]|[136]|[137]|[138]|[139]|[140]|
|[141]|[142]|[143]|[144]|[145]|[146]|[147]|[148]|[149]|[150]|
|[151]|[152]|[153]|[154]|[155]|[156]|[157]|[158]|[159]|[160]|
|[161]|[162]|[163]|[164]|[165]|[166]|[167]|[168]|[169]|[170]|
|[171]|[172]|[173]|[174]|[175]|[176]|[177]|[178]|[179]|[180]|
|[181]|[182]|[183]|[184]|[185]|[186]|[187]|[188]|[189]|[190]|
|[191]|[192]|[193]|[194]|[195]|[196]|[197]|[198]|[199]|[200]|
|[201]|[202]|[203]|[204]|[205]|[206]|[207]|[208]|[209]|[210]|
|[211]|[212]|[213]|[214]|[215]|[216]|[217]|[218]|[219]|[220]|
|[221]|[222]|[223]|[224]|[225]|[226]|[227]|[228]|[229]|[230]|
|[231]|[232]|[233]|[234]|[235]|[236]|[237]|[238]|[239]|[240]|
|[241]|[242]|[243]|[244]|[245]|[246]|[247]|[248]|[249]|[250]|
|[251]|[252]|[253]|[254]|[255]|[256]|[257]|[258]|[259]|[260]|
|[261]|[262]|[263]|[264]|[265]|[266]|[267]|[268]|[269]|[270]|
|[271]|[272]|[273]|[274]|[275]|[276]|[277]|[278]|[279]|[280]|
|[281]|[282]|[283]|[284]|[285]|[286]|[287]|[288]|[289]|[290]|
|[291]|[292]|[293]|[294]|[295]|[296]|[297]|[298]|[299]|[300]|
|[301]|[302]|[303]|[304]|[305]|[306]|[307]|[308]|[309]|[310]|
|[311]|[312]|[313]|[314]|[315]|[316]|[317]|[318]|[319]|[320]|
|[321]|[322]|[323]|[324]|[325]|[326]|[327]|[328]|[329]|[330]|
|[331]|[332]|[333]|[334]|[335]|[336]|[337]|[338]|[339]|[340]|
|[341]|[342]|[343]|[344]|[345]|[346]|[347]|[348]|[349]|[350]|
|[351]|[352]|[353]|[354]|[355]|[356]|[357]|[358]|[359]|[360]|
|[361]|[362]|[363]|[364]|[365]|[366]|[367]|[368]|[369]|[370]|
|[371]|[372]|[373]|[374]|[375]|[376]|[377]|[378]|[379]|[380]|
|[381]|[382]|[383]|[384]|[385]|[386]|[387]|[388]|[389]|[390]|
|[391]|[392]|[393]|[394]|[395]|[396]|[397]|[398]|[399]|[400]|
|[401]|[402]|[403]|[404]|[405]|[406]|[407]|[408]|[409]|[410]|
|[411]|[412]|[413]|[414]|[415]|[416]|[417]|[418]|[419]|[420]|
|[421]|[422]|[423]|[424]|[425]|[426]|[427]|[428]|[429]|[430]|
|[431]|[432]|[433]|[434]|[435]|[436]|[437]|[438]|[439]|[440]|
|[441]|[442]|[443]|[444]|[445]|[446]|[447]|[448]|[449]|[450]|
|[451]|[452]|[453]|[454]|[455]|[456]|[457]|[458]|[459]|[460]|
|[461]|[462]|[463]|[464]|[465]|[466]|[467]|[468]|[469]|[470]|
|[471]|[472]|[473]|[474]|[475]|[476]|[477]|[478]|[479]|[480]|
|[481]|[482]|[483]|[484]|[485]|[486]|[487]|[488]|[489]|[490]|
|[491]|[492]|[493]|[494]|[495]|[496]|[497]|[498]|[499]|[500]|

## Todo
---
* "leet" command
  * create: overwrite existing files?
  * create: with libraries
  * create: add entry in README.md
  * delete: delete entry in README.md
* Libraries
  * ~~Generic tree~~
  * Singly linked list
  * Doubly linked list
* Gemify this


[100]: https://github.com/marwei/leetcode/blob/master/problem/100.rb
[104]: https://github.com/marwei/leetcode/blob/master/problem/104.rb
[106]: https://github.com/marwei/leetcode/blob/master/problem/106.rb
[109]: https://github.com/marwei/leetcode/blob/master/problem/109.rb
[110]: https://github.com/marwei/leetcode/blob/master/problem/110.rb
[122]: https://github.com/marwei/leetcode/blob/master/problem/122.rb
[136]: https://github.com/marwei/leetcode/blob/master/problem/136.rb
[144]: https://github.com/marwei/leetcode/blob/master/problem/144.rb
[145]: https://github.com/marwei/leetcode/blob/master/problem/145.rb
[166]: https://github.com/marwei/leetcode/blob/master/problem/166.rb
[171]: https://github.com/marwei/leetcode/blob/master/problem/171.rb
[198]: https://github.com/marwei/leetcode/blob/master/problem/198.rb
[226]: https://github.com/marwei/leetcode/blob/master/problem/226.rb
[235]: https://github.com/marwei/leetcode/blob/master/problem/235.rb
[236]: https://github.com/marwei/leetcode/blob/master/problem/236.rb
[237]: https://github.com/marwei/leetcode/blob/master/problem/237.rb
[238]: https://github.com/marwei/leetcode/blob/master/problem/238.rb
[242]: https://github.com/marwei/leetcode/blob/master/problem/242.rb
[258]: https://github.com/marwei/leetcode/blob/master/problem/258.rb
[260]: https://github.com/marwei/leetcode/blob/master/problem/260.rb
[268]: https://github.com/marwei/leetcode/blob/master/problem/268.rb
[283]: https://github.com/marwei/leetcode/blob/master/problem/283.rb
[292]: https://github.com/marwei/leetcode/blob/master/problem/292.rb
[318]: https://github.com/marwei/leetcode/blob/master/problem/318.rb
[319]: https://github.com/marwei/leetcode/blob/master/problem/319.rb
[328]: https://github.com/marwei/leetcode/blob/master/problem/328.rb
[329]: https://github.com/marwei/leetcode/blob/master/problem/329.rb
[78]: https://github.com/marwei/leetcode/blob/master/problem/78.rb
[90]: https://github.com/marwei/leetcode/blob/master/problem/90.rb
[94]: https://github.com/marwei/leetcode/blob/master/problem/94.rb
[95]: https://github.com/marwei/leetcode/blob/master/problem/95.rb
[96]: https://github.com/marwei/leetcode/blob/master/problem/96.rb
[51]: https://github.com/marwei/leetcode/blob/master/problem/51.rb
[310]: https://github.com/marwei/leetcode/blob/master/problem/310.rb
[214]: https://github.com/marwei/leetcode/blob/master/problem/214.rb
[4]: https://github.com/marwei/leetcode/blob/master/problem/4.rb
[46]: https://github.com/marwei/leetcode/blob/master/problem/46.rb
[77]: https://github.com/marwei/leetcode/blob/master/problem/77.rb
[316]: https://github.com/marwei/leetcode/blob/master/problem/316.rb
[130]: https://github.com/marwei/leetcode/blob/master/problem/130.rb
[91]: https://github.com/marwei/leetcode/blob/master/problem/91.rb
[273]: https://github.com/marwei/leetcode/blob/master/problem/273.rb
[287]: https://github.com/marwei/leetcode/blob/master/problem/287.rb
[187]: https://github.com/marwei/leetcode/blob/master/problem/187.rb
[312]: https://github.com/marwei/leetcode/blob/master/problem/312.rb
[42]: https://github.com/marwei/leetcode/blob/master/problem/42.rb
[239]: https://github.com/marwei/leetcode/blob/master/problem/239.rb
[206]: https://github.com/marwei/leetcode/blob/master/problem/206.rb
[25]: https://github.com/marwei/leetcode/blob/master/problem/25.rb
[233]: https://github.com/marwei/leetcode/blob/master/problem/233.rb
[92]: https://github.com/marwei/leetcode/blob/master/problem/92.rb
[234]: https://github.com/marwei/leetcode/blob/master/problem/234.rb
[9]: https://github.com/marwei/leetcode/blob/master/problem/9.rb
[168]: https://github.com/marwei/leetcode/blob/master/problem/168.rb
[331]: https://github.com/marwei/leetcode/blob/master/problem/331.rb
[71]: https://github.com/marwei/leetcode/blob/master/problem/71.rb
[5]: https://github.com/marwei/leetcode/blob/master/problem/5.rb
[7]: https://github.com/marwei/leetcode/blob/master/problem/7.rb
[442]: https://github.com/marwei/leetcode/blob/master/problem/442.rb
[1]: https://github.com/marwei/leetcode/blob/master/problem/1.rb
[2]: https://github.com/marwei/leetcode/blob/master/problem/2.rb
[3]: https://github.com/marwei/leetcode/blob/master/problem/3.rb
[461]: https://github.com/marwei/leetcode/blob/master/problem/461.rb
[463]: https://github.com/marwei/leetcode/blob/master/problem/463.rb
[485]: https://github.com/marwei/leetcode/blob/master/problem/485.rb
[448]: https://github.com/marwei/leetcode/blob/master/problem/448.rb
[389]: https://github.com/marwei/leetcode/blob/master/problem/389.rb
[30]: https://github.com/marwei/leetcode/blob/master/problem/30.rb
