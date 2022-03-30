# Crypto Mining on Google VM Concept
Here is my detected concept of crypto mining (monero in this case) using free trial google cloud vm instances.
I came to the conclusion that "google inappropriate vm usage detetcion system" doesnt check ur files for the presence of crypto miner files. 
It checks cpu usage graph.

For example if you start mining with interval of 1 min the cpu usage graph will look like this:
![](https://i.imgur.com/Ldgl9PL.png)
Ofcourse graph like this is being detected under few minutes.

### So to get undetected u have to improve two formulas in **bypass prototype.sh** script.
The first one is time formula:
```
t = t_min + RANDOMINT / t_max - t_min
```
The second one is cpu usage formula:
```
cpu=cpu_max + t*(cpu_min - cpu_max)/(t_max - t_min)
```

Im not good enough at math thats why I abandoned this project. 

But if youre are able to improve these two formulas so the cpu usage graph look as random as like this:
![](https://i.imgur.com/0W8HlIc.png)
And still generates decent hashrate then u can make some money on it.

GOOD LUCK!

# Legenda dla polskiej części odwiedzających:
![](https://i.imgur.com/u5YhhaD.png)
