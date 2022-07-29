# AllTrees

#### TL;DR

`actor: Obj_Tree* NOT TreeBaobab NOT TreeStump NOT TreeBroadleafHoleStump NOT TreeBroadleafMossStump NOT TreeBroadleafStumpMoss NOT TreeGiant* NOT Root NOT TreeBroadleafRoot NOT TreeGhost_A_01 NOT TreeGhost_A_02 NOT TreeGhost_A_04 NOT TreeCherry NOT Fallen NOT TreeBroadleafFallen* NOT TreeConiferousSnowFallen* NOT TreePalmJungle NOT TreeDeadleaf_A_LL NOT TreeTropical_A_LL NOT TreeMaple_A_LL NOT TreeBroadleaf_A_LL NOT TreeBroadleaf_B_L NOT Trunk NOT TreeDragonblood_A_01 NOT TreeDragonblood_A_02 NOT TreeDragonblood_A_04 NOT TreeDragonblood_A_05  NOT TreeGashamahi*`

#### It's complicated

A simple search for `actor: Obj_Tree*` returns 27185 objects, this includes a variety of objects are are unable to be cut down or are already down including things like 
- Tree Trunks `_Trunk`
- Ghost Trees in Korok Forest `_GhostTree_A_0[1,2,4]`
- Giant and/or Hollow Trees 
- Trees that are really roots
- Trees that are only underwater

#### Updated Version (2022-07-29)
Using the initial list from `Obj_Tree*` each tree type was inspected and an attempt was made to chop it down (it only took a few hours).  Stumps, Trunk, and Fallen trees were ignored.  This produces a shorter list than the initial version as all `Obj_TreeGashamahi*` and most `Obj_TreeDragonblood*` cannot be chopped down.

A complete list in `all_trees.txt` contains the Tree type and if can be chopped down.

#### Initial Version (2022-07-27)

#### LumberjackTree

Many Obj_Tree objects within their Description in `Actor/ActorLink` use `DamageParamUser` that links to the [LumberjackTree](https://github.com/leoetlino/botw/blob/master/Actor/DamageParam/LumberjackTree.dmgparam.yml).  [Obj_TreeWhiteBirch_A_01](https://github.com/leoetlino/botw/blob/master/Actor/ActorLink/Obj_TreeWhiteBirch_A_01.yml) is an example. We assume these are [fellable trees](https://en.wikipedia.org/wiki/Felling). However, this confusinlgy includes a number of Trunks and Stumps.

#### NoReAction

Other `Obj_Tree` have the `DamageParamUser` set to `NoReAction`.  These appear not to be [fellable](https://en.wikipedia.org/wiki/Felling).  We ignore these.

#### Stump, Trunk, Roots, ...

Other tree types have the following in their Object/Actor names which are not kept:
- Stump
- Trunk
- Root
- Giant
- Fallen

#### Dummy

The remaining Obj_Tree objects have a `Dummy` `GParamUser`, where `DamageParamUser` is not set to either `LumberjackTree` or `NoReAction`.  These are kept as they include many low lying trees and shrubs. 

Any other type of Tree was considered to be "Ok" as they have specific `GParamUser` or `DamgageParamUser`

#### Final Result

Starting with `actor: Obj_Tree` we remove the objects above by their name coming up with **23,189 and 72 types**

`actor: Obj_Tree* NOT TreeBaobab NOT TreeStump NOT TreeBroadleafHoleStump NOT TreeBroadleafMossStump NOT TreeBroadleafStumpMoss NOT TreeGiant* NOT Root NOT TreeBroadleafRoot NOT TreeGhost_A_01 NOT TreeGhost_A_02 NOT TreeGhost_A_04 NOT TreeCherry NOT Fallen NOT TreeBroadleafFallen* NOT TreeConiferousSnowFallen* NOT TreePalmJungle NOT TreeDeadleaf_A_LL NOT TreeTropical_A_LL NOT TreeMaple_A_LL NOT TreeBroadleaf_A_LL NOT TreeBroadleaf_B_L NOT Trunk NOT TreeDragonblood_A_01 NOT TreeDragonblood_A_02 NOT TreeDragonblood_A_04 NOT TreeDragonblood_A_05 NOT TreeGashamahi*`

or more leagably:

    actor: Obj_Tree* 
       NOT TreeBaobab 
       NOT TreeStump 
       NOT TreeBroadleafHoleStump NOT TreeBroadleafMossStump NOT TreeBroadleafStumpMoss 
       NOT TreeGiant* 
       NOT Root 
       NOT TreeBroadleafRoot 
       NOT TreeGhost_A_01 NOT TreeGhost_A_02 NOT TreeGhost_A_04 
       NOT TreeCherry 
       NOT Fallen 
       NOT TreeBroadleafFallen* 
       NOT TreeConiferousSnowFallen* 
       NOT TreePalmJungle 
       NOT TreeDeadleaf_A_LL 
       NOT TreeTropical_A_LL 
       NOT TreeMaple_A_LL
       NOT TreeBroadleaf_A_LL NOT TreeBroadleaf_B_L 
       NOT Trunk
       NOT TreeDragonblood_A_01 NOT TreeDragonblood_A_02 NOT TreeDragonblood_A_04 NOT TreeDragonblood_A_05
       NOT TreeGashamahi*

**Note:** Dragonblood and Gashamahi trees were added to the second version.

#### Files
**Note:** These files are outdated, but useful as a knowledge base

Inlcuded you will find a script, `trees.sh`, that operating on a single ActorLink file from https://github.com/leoetlino/botw/ to categorize it. The resulting file `trees_cat.txt` was used to check the output of the objmap query only based on type.  

#### Errors
There are likely errors here.  Possible that choppable/cuttable trees where missed and it may also include trees that cannot be cut down.  Let me know and I will modify this and the query.


