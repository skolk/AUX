<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.001" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
</parts>
<sheets>
<sheet>
<plain>
<circle x="25.4" y="48.26" radius="2.54" width="0.1524" layer="91"/>
<circle x="-33.02" y="30.48" radius="2.54" width="0.1524" layer="91"/>
<circle x="25.4" y="31.75" radius="2.54" width="0.1524" layer="91"/>
<circle x="10.16" y="40.64" radius="1.912265625" width="0.1524" layer="91"/>
<wire x1="10.16" y1="45.72" x2="10.16" y2="40.64" width="0.1524" layer="95"/>
<wire x1="12.0904" y1="40.9194" x2="12.0904" y2="41.0464" width="0.1524" layer="95"/>
<wire x1="10.287" y1="38.6842" x2="10.16" y2="38.6842" width="0.1524" layer="95"/>
<wire x1="10.16" y1="38.6842" x2="10.16" y2="36.83" width="0.1524" layer="95"/>
<wire x1="10.16" y1="36.83" x2="11.0998" y2="36.83" width="0.1524" layer="95"/>
<wire x1="11.43" y1="36.83" x2="11.9634" y2="36.83" width="0.1524" layer="95"/>
<wire x1="11.9634" y1="36.83" x2="11.9634" y2="40.9194" width="0.1524" layer="95"/>
<wire x1="11.43" y1="36.83" x2="11.0998" y2="36.83" width="0.1524" layer="95"/>
<wire x1="11.0998" y1="36.83" x2="11.0998" y2="31.75" width="0.1524" layer="95"/>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<wire x1="40.64" y1="48.26" x2="30.48" y2="48.26" width="0.1524" layer="91"/>
<wire x1="30.48" y1="48.26" x2="30.48" y2="50.8" width="0.1524" layer="91"/>
<wire x1="30.48" y1="48.26" x2="30.48" y2="45.72" width="0.1524" layer="91"/>
<wire x1="30.48" y1="45.72" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="30.48" y1="50.8" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<wire x1="58.42" y1="68.58" x2="60.96" y2="68.58" width="0.1524" layer="91"/>
<wire x1="60.96" y1="68.58" x2="63.5" y2="68.58" width="0.1524" layer="91"/>
<wire x1="60.96" y1="68.58" x2="60.96" y2="73.66" width="0.1524" layer="91"/>
<wire x1="60.96" y1="73.66" x2="40.64" y2="73.66" width="0.1524" layer="91"/>
<wire x1="40.64" y1="48.26" x2="40.64" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="22.86" y1="48.26" x2="20.32" y2="50.8" width="0.1524" layer="91"/>
<wire x1="20.32" y1="50.8" x2="20.32" y2="48.26" width="0.1524" layer="91"/>
<wire x1="20.32" y1="48.26" x2="20.32" y2="45.72" width="0.1524" layer="91"/>
<wire x1="20.32" y1="45.72" x2="22.86" y2="48.26" width="0.1524" layer="91"/>
<wire x1="20.32" y1="48.26" x2="12.7" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="25.4" y1="50.8" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<wire x1="22.86" y1="53.34" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<wire x1="25.4" y1="53.34" x2="27.94" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="-33.02" y1="48.26" x2="-33.02" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="45.72" x2="-33.02" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="38.1" x2="-33.02" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="33.02" x2="-33.02" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="45.72" x2="-32.1818" y2="44.8818" width="0.1524" layer="91" curve="-90"/>
<wire x1="-32.1818" y1="44.8818" x2="-32.1818" y2="44.3484" width="0.1524" layer="91"/>
<wire x1="-32.1818" y1="44.3484" x2="-33.1724" y2="43.3578" width="0.1524" layer="91" curve="-90"/>
<wire x1="-33.1724" y1="43.3578" x2="-33.401" y2="43.3578" width="0.1524" layer="91"/>
<wire x1="-33.401" y1="43.3578" x2="-34.2138" y2="42.545" width="0.1524" layer="91" curve="90"/>
<wire x1="-34.2138" y1="42.545" x2="-34.2138" y2="41.6814" width="0.1524" layer="91"/>
<wire x1="-34.2138" y1="41.6814" x2="-33.4518" y2="40.9194" width="0.1524" layer="91" curve="90"/>
<wire x1="-33.4518" y1="40.9194" x2="-32.9946" y2="40.9194" width="0.1524" layer="91"/>
<wire x1="-32.9946" y1="40.9194" x2="-31.9278" y2="39.8526" width="0.1524" layer="91" curve="-90"/>
<wire x1="-31.9278" y1="39.8526" x2="-31.9278" y2="39.3192" width="0.1524" layer="91"/>
<wire x1="-31.9278" y1="39.3192" x2="-32.7914" y2="38.4556" width="0.1524" layer="91" curve="-90"/>
<wire x1="-32.7914" y1="38.4556" x2="-32.8168" y2="38.4556" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="38.1" x2="-34.4424" y2="36.6776" width="0.1524" layer="91" curve="90"/>
<wire x1="-34.4424" y1="36.6776" x2="-34.4424" y2="36.4744" width="0.1524" layer="91"/>
<wire x1="-34.4424" y1="36.4744" x2="-33.1978" y2="35.2298" width="0.1524" layer="91" curve="90"/>
<wire x1="-33.1978" y1="35.2298" x2="-33.0708" y2="35.306" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="45.72" x2="-10.16" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="48.26" x2="-10.16" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="50.8" x2="-17.78" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="50.8" x2="-17.78" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="48.26" x2="-17.78" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="45.72" x2="-10.16" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="48.26" x2="-17.78" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="48.26" x2="7.62" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="33.02" x2="-33.02" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="45.72" x2="-30.9626" y2="45.72" width="0.1524" layer="91"/>
<wire x1="-30.9626" y1="45.72" x2="-30.9626" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-30.9626" y1="35.56" x2="-31.0134" y2="35.6108" width="0.1524" layer="91"/>
<wire x1="-31.0134" y1="35.6108" x2="-31.0134" y2="34.1122" width="0.1524" layer="91"/>
<wire x1="-31.0134" y1="34.1122" x2="-34.8996" y2="34.0614" width="0.1524" layer="91"/>
<wire x1="-34.8996" y1="34.0614" x2="-34.8996" y2="45.6946" width="0.1524" layer="91"/>
<wire x1="-34.8996" y1="45.6946" x2="-31.3182" y2="45.6946" width="0.1524" layer="91"/>
<wire x1="-31.3182" y1="45.6946" x2="-31.3182" y2="45.4914" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="33.02" x2="-27.94" y2="31.75" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="31.75" x2="-27.94" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="30.48" x2="-30.48" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="31.75" x2="20.32" y2="31.75" width="0.1524" layer="91"/>
<wire x1="22.86" y1="31.75" x2="20.32" y2="34.29" width="0.1524" layer="91"/>
<wire x1="20.32" y1="34.29" x2="20.32" y2="31.75" width="0.1524" layer="91"/>
<wire x1="20.32" y1="31.75" x2="20.32" y2="29.21" width="0.1524" layer="91"/>
<wire x1="20.32" y1="29.21" x2="22.86" y2="31.75" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="25.4" y1="34.29" x2="25.4" y2="36.83" width="0.1524" layer="91"/>
<wire x1="22.86" y1="36.83" x2="25.4" y2="36.83" width="0.1524" layer="91"/>
<wire x1="25.4" y1="36.83" x2="27.94" y2="36.83" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="12.7" y1="50.8" x2="12.7" y2="45.72" width="0.1524" layer="91"/>
<wire x1="7.62" y1="45.72" x2="7.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="7.62" y1="50.8" x2="12.7" y2="50.8" width="0.1524" layer="91"/>
<wire x1="7.62" y1="50.8" x2="12.7" y2="45.72" width="0.1524" layer="91"/>
<wire x1="12.7" y1="45.72" x2="7.62" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="53.34" y1="53.34" x2="83.82" y2="53.34" width="0.1524" layer="91"/>
<wire x1="83.82" y1="53.34" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
<wire x1="53.34" y1="53.34" x2="53.34" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="76.2" y1="55.88" x2="81.28" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="30.48" y1="29.21" x2="27.94" y2="31.75" width="0.1524" layer="91"/>
<wire x1="30.48" y1="34.29" x2="30.48" y2="31.75" width="0.1524" layer="91"/>
<wire x1="30.48" y1="31.75" x2="30.48" y2="29.21" width="0.1524" layer="91"/>
<wire x1="30.48" y1="34.29" x2="27.94" y2="31.75" width="0.1524" layer="91"/>
<wire x1="78.74" y1="55.88" x2="78.74" y2="31.75" width="0.1524" layer="91"/>
<wire x1="30.48" y1="31.75" x2="78.74" y2="31.75" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="-12.827" y1="46.3042" x2="-12.954" y2="46.3042" width="0.1524" layer="91"/>
<wire x1="-12.954" y1="46.3042" x2="-12.954" y2="50.1396" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="-13.1572" y1="49.53" x2="-14.4272" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-14.4272" y1="48.26" x2="-13.1572" y2="46.99" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
