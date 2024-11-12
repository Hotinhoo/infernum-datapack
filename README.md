# Infernum Datapack - Minecraft 1.21

This datapack introduces an exciting new battle to Minecraft 1.21, where players face the fearsome Infernum dragon in an epic, collaborative challenge!

![Infernum](https://github.com/Hotinhoo/infernum-datapack/blob/main/images/infernum.png)

## How to Start the Battle

To summon the Infernum dragon, any player can create the **Infernum Horn**. Upon using it, a waiting area will be created, where players can gather to prepare for the battle.

![Horn Crafting](https://github.com/Hotinhoo/infernum-datapack/blob/main/images/crafting.png)

## Requirements and Settings

The experience is designed for **at least 6 players**. However, you can adjust the minimum number of required players with the following command:

```
/data modify storage infernum:config players set value <required_players>
```

## Rewards

Defeating the Infernum dragon grants random rewards. To disable or enable these rewards, use the command:

```
/data modify storage infernum:config rewards set value <true|false>
```

![Rewards](https://github.com/Hotinhoo/infernum-datapack/blob/main/images/rewards.png)

---

## Additional Settings

If you want to prevent mobs from breaking blocks during the battle, use the following command:

```
/gamerule mobGriefing false
```
