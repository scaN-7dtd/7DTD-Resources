## Disable a Block


Example of how to disable the block `cntCashRegisterEmpty`.

```
<configs>
    <remove xpath="/blocks/block[@name='cntCashRegisterEmpty']" />
    
    <insertBefore xpath="/blocks/block[@name='air']">
        <block name="cntCashRegisterEmpty">
            <property name="Material" value="Mair" />
            <property name="Shape" value="Invisible" />
            <property name="Texture" value="250" />
            <property name="WaterFlow" value="permitted" />
            <property name="ImposterDontBlock" value="true" />
            <property name="SortOrder1" value="0000" />
            <property name="SortOrder2" value="0000" />
            <property name="Tags" value="air" />
            <property name="FilterTags" value="MC_outdoor,SC_terrain" />
        </block>
    </insertBefore>
</configs>
```
