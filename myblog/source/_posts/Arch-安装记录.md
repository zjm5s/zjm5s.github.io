---
title: Arch的安装记录
date: 2018-01-03 15:13:12
tags: Arch Linux
---

要我说哪个Linux发行版最适合新手，我会说Arch Linux，一个轻量级的，采用滚动更新方式的linux发行版。它简洁，现代，实用，以用户为中心。

许多linux发行版都力图做到开箱即用，能节省不少用户的配置时间。但是，这点对新手来说并没有帮助。举个例子，一个拼装模型由他人之手装好给我，我不清楚其中的结构，之后我要改装它就难了。linux的使用过程中，总避免不了对它的改动，新手在这步通常得花费不少时间。

Arch linux则是轻量的，连图形化安装界面都省了，也就是说，从分区，安装系统，安装引导程序，全部都是以命令行的方式近行的。安装好基本系统之后，还需安装一个中意的桌面环境，才能跟黑乎乎的命令行说拜拜。请不要被如此繁琐的过程吓到而放弃，其实按照Arch wiki的指引，肯定能安装成功的。期间或许会遇到各种问题，不要浮躁，arch相比其他linux优点不多，就是帮助文档多。多看文档善搜索引擎，最终会受益良多。相信新手经过这个强制关卡，能够对linux有个基本的了解。

具体的安装过程，arch wiki里很详细了，我就只记分区部分了。

以前用的是fdisk分区，这次用gdisk，因为gdisk对gpt分区表支持更好。下面的是划分efi分区的例子。

```
# gdisk /dev/sda

Command (? for help): n
Partition number (1-128, default 1): 1
First sector (34-250069646, default = 2048) or {+-}size{KMGTP}: 
Last sector (2048-250069646, default = 250069646) or {+-}size{KMGTP}: +200M
Current type is 'Linux filesystem'

Hex code or GUID (L to show codes, Enter = 8300): ef00
Changed type of partition to 'EFI System'

Command (? for help): 

```