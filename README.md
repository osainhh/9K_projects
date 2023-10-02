# 9K_projects
Tang Nano 9Kで作った細々したプロジェクト

### led
公式チュートリアル[^1]を実行する\
オンボードLEDがシフトしていく

### adder (2bit)
1桁7セグ表示の2bit加算器
- or2.v : 2入力OR回路
- and2.v : 2入力AND回路
- xor.v : 2入力XOR回路
- half_adder.v : 半加算器
- full_adder.v : 全加算器
- decoder.v : 1桁7セグLEDデコーダ
- top.v : トップモジュール

DIPSWの1極を1bitとして2bit+2bitをします．\
10進数だと最大3+3になるので7セグには0~6までが表示されます．
![2bitadder](http://github.com/osainhh/9K_projects/pic/2bitadder.jpg)


[^1]: https://wiki.sipeed.com/hardware/en/tang/Tang-Nano-9K/examples/led.html