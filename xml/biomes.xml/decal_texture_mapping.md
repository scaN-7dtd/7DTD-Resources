# DECAL TEXTURE MAPPING

Mapping between `decal texture` IDs present in `biomes.xml`, under the "Street Parameters" section for "City Asphalt", "Country Road Asphalt", and "Road Gravel", and their corresponding block names from `blocks.xml`.

### Index

* decal texture 0 = newspaperDecor01
* decal texture 1 = bloodDecor01
* decal texture 2 = newspaperDecor03
* decal texture 3 = newspaperDecor04
* decal texture 4 = rubbishDecor01
* decal texture 5 = rubbishDecor02
* decal texture 6 = bloodDecor02
* decal texture 7 = rubbishDecor03
* decal texture 8 = rubbishDecor04
* decal texture 9 = rubbishDecor05
* decal texture 10 = **rubbish - unknown**
* decal texture 11 = **blood - unknown**
* decal texture 12 = bloodDecor05
* decal texture 13 = bloodDecor06
* decal texture 14 = rubbishDecor06
* decal texture 15 = rubbishDecor09

### Missing Ones

Decal textures 10 and 11 are not present in `blocks.xml`.

Interestingly, decal textures 9 and 10 have a probability of 0 in `biomes.xml` for all three street types.

```xml
<decal texture="9" face="0" prob="0"/>
<decal texture="10" face="0" prob="0"/>
```
