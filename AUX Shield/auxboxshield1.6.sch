<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="14" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="fp8" color="7" fill="1" visible="yes" active="yes"/>
<layer number="109" name="fp9" color="7" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="4" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="no" active="no"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="EasyDriver">
<packages>
<package name="EASYDRIVER_V44">
<wire x1="-24.13" y1="-10.16" x2="24.13" y2="-10.16" width="0.254" layer="21"/>
<wire x1="24.13" y1="-10.16" x2="24.13" y2="10.16" width="0.254" layer="21"/>
<wire x1="-24.13" y1="10.16" x2="-24.13" y2="-10.16" width="0.254" layer="21"/>
<wire x1="-16.51" y1="9.398" x2="-15.875" y2="9.398" width="0.2032" layer="21"/>
<wire x1="-16.51" y1="9.398" x2="-16.51" y2="8.763" width="0.2032" layer="21"/>
<wire x1="-13.97" y1="9.398" x2="-14.605" y2="9.398" width="0.2032" layer="21"/>
<wire x1="-13.97" y1="9.398" x2="-13.97" y2="8.763" width="0.2032" layer="21"/>
<wire x1="-10.795" y1="9.398" x2="-11.43" y2="9.398" width="0.2032" layer="21"/>
<wire x1="-11.43" y1="9.398" x2="-11.43" y2="8.763" width="0.2032" layer="21"/>
<wire x1="-8.89" y1="9.398" x2="-9.525" y2="9.398" width="0.2032" layer="21"/>
<wire x1="-8.89" y1="9.398" x2="-8.89" y2="8.763" width="0.2032" layer="21"/>
<wire x1="24.13" y1="10.16" x2="-24.13" y2="10.16" width="0.254" layer="21"/>
<wire x1="19.05" y1="6.477" x2="19.05" y2="5.842" width="0.2032" layer="21"/>
<wire x1="21.59" y1="6.477" x2="21.59" y2="5.842" width="0.2032" layer="21"/>
<wire x1="21.59" y1="5.842" x2="19.05" y2="5.842" width="0.2032" layer="21"/>
<wire x1="-16.51" y1="6.35" x2="-16.51" y2="5.842" width="0.254" layer="21"/>
<wire x1="-16.51" y1="5.842" x2="-8.89" y2="5.842" width="0.254" layer="21"/>
<wire x1="-8.89" y1="5.842" x2="-8.89" y2="6.35" width="0.254" layer="21"/>
<pad name="B1" x="-8.89" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="B2" x="-11.43" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="A2" x="-13.97" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="A1" x="-16.51" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="M+" x="21.59" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="GND1" x="19.05" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="DIR" x="21.59" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="STEP" x="19.05" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="GND2" x="16.51" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="GND3" x="-16.51" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="P$11" x="-13.97" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="SLEEP" x="-3.81" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="MS1" x="-1.27" y="-7.62" drill="1.016" diameter="1.8796"/>
<pad name="MS2" x="11.43" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="ENABLE" x="8.89" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="RST" x="-1.27" y="7.62" drill="1.016" diameter="1.8796"/>
<pad name="PFD" x="-3.81" y="7.62" drill="1.016" diameter="1.8796"/>
<text x="20.701" y="-9.652" size="0.8128" layer="21" font="vector" ratio="18">DIR</text>
<text x="18.034" y="8.89" size="0.8128" layer="21" font="vector" ratio="18">GND</text>
<text x="21.082" y="8.89" size="0.8128" layer="21" font="vector" ratio="18">M+</text>
<text x="17.78" y="-6.35" size="0.8128" layer="21" font="vector" ratio="18">STEP</text>
<text x="-14.986" y="4.445" size="1.016" layer="21" font="vector" ratio="18">MOTOR</text>
<text x="-15.494" y="8.89" size="0.8128" layer="21" font="vector" ratio="18">A</text>
<text x="-10.414" y="8.89" size="0.8128" layer="21" font="vector" ratio="18">B</text>
<text x="-17.526" y="-9.652" size="0.8128" layer="21" font="vector" ratio="18">GND</text>
<text x="-15.113" y="-9.652" size="0.8128" layer="21" font="vector" ratio="18">+5V</text>
<text x="15.494" y="-9.652" size="0.8128" layer="21" font="vector" ratio="18">GND</text>
<text x="-2.286" y="-9.652" size="0.8128" layer="21" font="vector" ratio="18">MS1</text>
<text x="-4.826" y="-9.652" size="0.8128" layer="21" font="vector" ratio="18">SLP</text>
<text x="-4.826" y="8.89" size="0.8128" layer="21" font="vector" ratio="18">PFD</text>
<text x="-2.286" y="8.89" size="0.8128" layer="21" font="vector" ratio="18">RST</text>
<text x="5.588" y="8.89" size="0.8128" layer="21" font="vector" ratio="18">ENABLE</text>
<text x="10.414" y="8.89" size="0.8128" layer="21" font="vector" ratio="18">MS2</text>
<text x="18.288" y="4.699" size="0.8128" layer="21" font="vector" ratio="18">PWR IN</text>
</package>
</packages>
<symbols>
<symbol name="EASYDRIVER_V44">
<wire x1="-17.78" y1="12.7" x2="-17.78" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-10.16" x2="20.32" y2="-10.16" width="0.254" layer="94"/>
<wire x1="20.32" y1="-10.16" x2="20.32" y2="12.7" width="0.254" layer="94"/>
<wire x1="20.32" y1="12.7" x2="-17.78" y2="12.7" width="0.254" layer="94"/>
<text x="22.86" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
<text x="22.86" y="2.54" size="1.27" layer="95">&gt;NAME</text>
<pin name="A1" x="-15.24" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="A2" x="-12.7" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="B2" x="-10.16" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="B1" x="-7.62" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="PFD" x="0" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="RST" x="2.54" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="ENABLE" x="7.62" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="MS2" x="10.16" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="GND1" x="15.24" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="M+" x="17.78" y="15.24" visible="pin" length="short" rot="R270"/>
<pin name="DIR" x="17.78" y="-12.7" visible="pin" length="short" rot="R90"/>
<pin name="STEP" x="15.24" y="-12.7" visible="pin" length="short" rot="R90"/>
<pin name="GND2" x="12.7" y="-12.7" visible="pin" length="short" rot="R90"/>
<pin name="MS1" x="2.54" y="-12.7" visible="pin" length="short" rot="R90"/>
<pin name="SLP" x="0" y="-12.7" visible="pin" length="short" rot="R90"/>
<pin name="+5V_OUT" x="-12.7" y="-12.7" visible="pin" length="short" rot="R90"/>
<pin name="GND3" x="-15.24" y="-12.7" visible="pin" length="short" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="EASYDRIVER_V44">
<description>EasyDriver version 4.4 - http://www.schmalzhaus.com/EasyDriver</description>
<gates>
<gate name="G$1" symbol="EASYDRIVER_V44" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="EASYDRIVER_V44">
<connects>
<connect gate="G$1" pin="+5V_OUT" pad="P$11"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="B1" pad="B1"/>
<connect gate="G$1" pin="B2" pad="B2"/>
<connect gate="G$1" pin="DIR" pad="DIR"/>
<connect gate="G$1" pin="ENABLE" pad="ENABLE"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="GND3" pad="GND3"/>
<connect gate="G$1" pin="M+" pad="M+"/>
<connect gate="G$1" pin="MS1" pad="MS1"/>
<connect gate="G$1" pin="MS2" pad="MS2"/>
<connect gate="G$1" pin="PFD" pad="PFD"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="SLP" pad="SLEEP"/>
<connect gate="G$1" pin="STEP" pad="STEP"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-shiua-chyuan">
<description>Telephone Jack Connectors, Earphone &amp; Headphone Jack, DC Plug&lt;p&gt;
Shiua Chyuan Precision Industrial Co Ltd&lt;br&gt;
(234) 38 BAOFU RD SEC 2 YONGHE TAIPEI TAIWAN</description>
<packages>
<package name="SCD-014-A">
<description>&lt;b&gt;Power Jack&lt;/b&gt; SCD-014-A</description>
<wire x1="-4.25" y1="0.1" x2="4.25" y2="0.1" width="0.2032" layer="21"/>
<wire x1="4.25" y1="0.1" x2="4.25" y2="13.7" width="0.2032" layer="21"/>
<wire x1="4.25" y1="13.7" x2="-0.25" y2="13.7" width="0.2032" layer="21"/>
<wire x1="-0.25" y1="13.7" x2="-4.25" y2="13.7" width="0.2032" layer="51"/>
<wire x1="-4.25" y1="13.7" x2="-4.25" y2="12.7" width="0.2032" layer="51"/>
<wire x1="-4.25" y1="12.7" x2="-4.25" y2="8.4" width="0.2032" layer="21"/>
<wire x1="-4.25" y1="8.4" x2="-4.25" y2="6.55" width="0.2032" layer="51"/>
<wire x1="-4.25" y1="6.55" x2="-4.25" y2="0.1" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="13.8" x2="-3.6" y2="14.3" width="0" layer="46" curve="-90"/>
<wire x1="-3.6" y1="14.3" x2="-1.4" y2="14.3" width="0" layer="46"/>
<wire x1="-1.4" y1="14.3" x2="-0.9" y2="13.8" width="0" layer="46" curve="-90"/>
<wire x1="-0.9" y1="13.8" x2="-1.4" y2="13.3" width="0" layer="46" curve="-90"/>
<wire x1="-1.4" y1="13.3" x2="-3.6" y2="13.3" width="0" layer="46"/>
<wire x1="-3.6" y1="13.3" x2="-4.1" y2="13.8" width="0" layer="46" curve="-90"/>
<wire x1="-4.1" y1="7.5" x2="-3.6" y2="8" width="0" layer="46" curve="-90"/>
<wire x1="-3.6" y1="8" x2="-1.4" y2="8" width="0" layer="46"/>
<wire x1="-1.4" y1="8" x2="-0.9" y2="7.5" width="0" layer="46" curve="-90"/>
<wire x1="-0.9" y1="7.5" x2="-1.4" y2="7" width="0" layer="46" curve="-90"/>
<wire x1="-1.4" y1="7" x2="-3.6" y2="7" width="0" layer="46"/>
<wire x1="-3.6" y1="7" x2="-4.1" y2="7.5" width="0" layer="46" curve="-90"/>
<wire x1="2.5" y1="12.4" x2="3" y2="11.9" width="0" layer="46" curve="-90"/>
<wire x1="3" y1="11.9" x2="3" y2="9.7" width="0" layer="46"/>
<wire x1="3" y1="9.7" x2="2.5" y2="9.2" width="0" layer="46" curve="-90"/>
<wire x1="2.5" y1="9.2" x2="2" y2="9.7" width="0" layer="46" curve="-90"/>
<wire x1="2" y1="9.7" x2="2" y2="11.9" width="0" layer="46"/>
<wire x1="2" y1="11.9" x2="2.5" y2="12.4" width="0" layer="46" curve="-90"/>
<wire x1="-1.25" y1="2.55" x2="0" y2="1.3" width="0.05" layer="51" curve="90"/>
<wire x1="0" y1="1.3" x2="1.25" y2="2.55" width="0.05" layer="51" curve="90"/>
<wire x1="1.25" y1="2.55" x2="1.25" y2="9.2" width="0.05" layer="51"/>
<wire x1="-3.15" y1="9.2" x2="-1.25" y2="9.2" width="0.05" layer="51"/>
<wire x1="-1.25" y1="9.2" x2="-1.25" y2="2.55" width="0.05" layer="51"/>
<wire x1="-3.15" y1="9.2" x2="-3.15" y2="0.15" width="0.05" layer="51"/>
<wire x1="1.25" y1="9.2" x2="3.15" y2="9.2" width="0.05" layer="51"/>
<wire x1="3.15" y1="9.2" x2="3.15" y2="0.15" width="0.05" layer="51"/>
<pad name="1" x="-2.5" y="13.8" drill="1" diameter="2" shape="long"/>
<pad name="2" x="-2.5" y="7.5" drill="1" diameter="2" shape="long"/>
<pad name="3" x="2.5" y="10.8" drill="1" diameter="2" shape="long" rot="R90"/>
<text x="-5.08" y="0" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="6.35" y="0" size="1.778" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="733989">
<wire x1="-2.54" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="1.524" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="1.524" y1="-0.762" x2="2.794" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-2.286" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="-2.286" x2="-0.508" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-1.524" x2="-1.016" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.524" x2="-0.762" y2="-2.286" width="0.254" layer="94"/>
<text x="-2.54" y="4.064" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-5.588" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.54" y1="2.032" x2="2.794" y2="3.048" layer="94"/>
<pin name="1" x="-5.08" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SCD-014A" prefix="X" uservalue="yes">
<description>&lt;b&gt;Power Jack 2.5mm&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="733989" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SCD-014-A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<packages>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find connectors and sockets- basically anything that can be plugged into or onto.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1X03">
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="MOLEX-1X3">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="SCREWTERMINAL-3.5MM-3">
<wire x1="-2.3" y1="3.4" x2="9.3" y2="3.4" width="0.2032" layer="21"/>
<wire x1="9.3" y1="3.4" x2="9.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="9.3" y1="-2.8" x2="9.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="9.3" y1="-3.6" x2="-2.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-3.6" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-2.8" x2="-2.3" y2="3.4" width="0.2032" layer="21"/>
<wire x1="9.3" y1="-2.8" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-1.35" x2="-2.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-1.35" x2="-2.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-2.35" x2="-2.3" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="9.3" y1="3.15" x2="9.7" y2="3.15" width="0.2032" layer="51"/>
<wire x1="9.7" y1="3.15" x2="9.7" y2="2.15" width="0.2032" layer="51"/>
<wire x1="9.7" y1="2.15" x2="9.3" y2="2.15" width="0.2032" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.413" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.413"/>
<pad name="3" x="7" y="0" drill="1.2" diameter="2.413"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X03_LOCK">
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X03_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.524" y1="-0.127" x2="1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="4.064" y1="-0.127" x2="3.556" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.8636" x2="-0.9906" y2="1.143" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.1176" x2="-0.9906" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.127" x2="6.096" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.127" x2="6.35" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-1.1176" x2="6.0706" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.127" x2="6.35" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.8636" x2="6.0706" y2="1.143" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.4191" x2="0.2921" y2="0.1651" layer="51"/>
<rectangle x1="2.2479" y1="-0.4191" x2="2.8321" y2="0.1651" layer="51"/>
<rectangle x1="4.7879" y1="-0.4191" x2="5.3721" y2="0.1651" layer="51"/>
</package>
<package name="MOLEX-1X3_LOCK">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="6.35" y2="-2.54" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="6.35" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
<rectangle x1="4.7879" y1="-0.2921" x2="5.3721" y2="0.2921" layer="51"/>
</package>
<package name="SCREWTERMINAL-3.5MM-3_LOCK.007S">
<wire x1="-2.3" y1="3.4" x2="9.3" y2="3.4" width="0.2032" layer="21"/>
<wire x1="9.3" y1="3.4" x2="9.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="9.3" y1="-2.8" x2="9.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="9.3" y1="-3.6" x2="-2.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-3.6" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-2.8" x2="-2.3" y2="3.4" width="0.2032" layer="21"/>
<wire x1="9.3" y1="-2.8" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-1.35" x2="-2.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-1.35" x2="-2.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-2.35" x2="-2.3" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="9.3" y1="3.15" x2="9.7" y2="3.15" width="0.2032" layer="51"/>
<wire x1="9.7" y1="3.15" x2="9.7" y2="2.15" width="0.2032" layer="51"/>
<wire x1="9.7" y1="2.15" x2="9.3" y2="2.15" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="3.5" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="7" y="0" radius="0.425" width="0.001" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="7.1778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X03_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X03_LONGPADS">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<text x="-1.3462" y="2.4638" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-3-PTH">
<wire x1="-3.95" y1="-1.6" x2="-3.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-3.95" y1="6" x2="3.95" y2="6" width="0.2032" layer="21"/>
<wire x1="3.95" y1="6" x2="3.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-3.95" y1="-1.6" x2="-3.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="3.95" y1="-1.6" x2="3.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-3.3" y1="-1.6" x2="-3.3" y2="0" width="0.2032" layer="21"/>
<wire x1="3.3" y1="-1.6" x2="3.3" y2="0" width="0.2032" layer="21"/>
<pad name="1" x="-2" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="0" y="0" drill="0.7" diameter="1.6"/>
<pad name="3" x="2" y="0" drill="0.7" diameter="1.6"/>
<text x="-1.27" y="5.24" size="0.4064" layer="25">&gt;Name</text>
<text x="-1.27" y="3.97" size="0.4064" layer="27">&gt;Value</text>
<text x="-2.4" y="0.67" size="1.27" layer="51">+</text>
<text x="-0.4" y="0.67" size="1.27" layer="51">-</text>
<text x="1.7" y="0.87" size="0.8" layer="51">S</text>
</package>
<package name="1X03_PP_HOLES_ONLY">
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="5.08" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="0.8128" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
<hole x="5.08" y="0" drill="1.4732"/>
</package>
<package name="SCREWTERMINAL-5MM-3">
<wire x1="-3.1" y1="4.2" x2="13.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="13.1" y1="4.2" x2="13.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="13.1" y1="-2.3" x2="13.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="13.1" y1="-3.3" x2="-3.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.3" x2="-3.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="13.1" y1="-2.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-1.35" x2="-3.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-1.35" x2="-3.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-2.35" x2="-3.1" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="13.1" y1="4" x2="13.7" y2="4" width="0.2032" layer="51"/>
<wire x1="13.7" y1="4" x2="13.7" y2="3" width="0.2032" layer="51"/>
<wire x1="13.7" y1="3" x2="13.1" y2="3" width="0.2032" layer="51"/>
<circle x="2.5" y="3.7" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" diameter="2.413" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3" diameter="2.413"/>
<pad name="3" x="10" y="0" drill="1.3" diameter="2.413"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X03_LOCK_NO_SILK">
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-3-SMD">
<wire x1="-4.99" y1="-2.07" x2="-4.99" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="-4.99" y1="-5.57" x2="-4.19" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="-4.19" y1="-5.57" x2="-4.19" y2="-3.07" width="0.2032" layer="21"/>
<wire x1="-4.19" y1="-3.07" x2="-2.99" y2="-3.07" width="0.2032" layer="21"/>
<wire x1="3.01" y1="-3.07" x2="4.21" y2="-3.07" width="0.2032" layer="21"/>
<wire x1="4.21" y1="-3.07" x2="4.21" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="4.21" y1="-5.57" x2="5.01" y2="-5.57" width="0.2032" layer="21"/>
<wire x1="5.01" y1="-5.57" x2="5.01" y2="-2.07" width="0.2032" layer="21"/>
<wire x1="3.01" y1="1.93" x2="-2.99" y2="1.93" width="0.2032" layer="21"/>
<smd name="1" x="-1.99" y="-4.77" dx="1" dy="4.6" layer="1"/>
<smd name="3" x="2.01" y="-4.77" dx="1" dy="4.6" layer="1"/>
<smd name="NC1" x="-4.39" y="0.43" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="NC2" x="4.41" y="0.43" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="2" x="0.01" y="-4.77" dx="1" dy="4.6" layer="1"/>
<text x="-2.26" y="0.2" size="0.4064" layer="25">&gt;Name</text>
<text x="-2.26" y="-1.07" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="1X03-1MM-RA">
<wire x1="-1" y1="-4.6" x2="1" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-2" x2="-2.5" y2="-0.35" width="0.254" layer="21"/>
<wire x1="1.75" y1="-0.35" x2="2.4997" y2="-0.35" width="0.254" layer="21"/>
<wire x1="2.4997" y1="-0.35" x2="2.4997" y2="-2" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-0.35" x2="-1.75" y2="-0.35" width="0.254" layer="21"/>
<circle x="-2" y="0.3" radius="0.1414" width="0.4" layer="21"/>
<smd name="NC2" x="-2.3" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="NC1" x="2.3" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="1" x="-1" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="2" x="0" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="3" x="1" y="0" dx="0.6" dy="1.35" layer="1"/>
<text x="-1.73" y="1.73" size="0.4064" layer="25" rot="R180">&gt;NAME</text>
<text x="3.46" y="1.73" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
</package>
<package name="1X03_SMD_RA_FEMALE">
<wire x1="-3.935" y1="4.25" x2="-3.935" y2="-4.25" width="0.1778" layer="21"/>
<wire x1="3.935" y1="4.25" x2="-3.935" y2="4.25" width="0.1778" layer="21"/>
<wire x1="3.935" y1="-4.25" x2="3.935" y2="4.25" width="0.1778" layer="21"/>
<wire x1="-3.935" y1="-4.25" x2="3.935" y2="-4.25" width="0.1778" layer="21"/>
<rectangle x1="-0.32" y1="6.8" x2="0.32" y2="7.65" layer="51"/>
<rectangle x1="2.22" y1="6.8" x2="2.86" y2="7.65" layer="51"/>
<rectangle x1="-2.86" y1="6.8" x2="-2.22" y2="7.65" layer="51"/>
<smd name="3" x="2.54" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="2" x="0" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="1" x="-2.54" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<text x="-3.155" y="2.775" size="1" layer="27">&gt;Value</text>
<text x="-2.955" y="-3.395" size="1" layer="25">&gt;Name</text>
</package>
<package name="1X03_SMD_RA_MALE">
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="2" x="0" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5" dx="3" dy="1" layer="1" rot="R90"/>
</package>
<package name="1X03_SMD_RA_MALE_POST">
<description>&lt;h3&gt;SMD 3-Pin Male Right-Angle Header w/ Alignment posts&lt;/h3&gt;

Matches 4UCONN part # 11026&lt;br&gt;
&lt;a href="http://www.4uconnector.com/online/object/4udrawing/11026.pdf"&gt;http://www.4uconnector.com/online/object/4udrawing/11026.pdf&lt;/a&gt;</description>
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="2" x="0" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<hole x="-1.27" y="0" drill="1.6"/>
<hole x="1.27" y="0" drill="1.6"/>
</package>
<package name="JST-3-PTH-VERT">
<description>This 3-pin connector mates with the JST cable sold on SparkFun.</description>
<wire x1="-3.95" y1="-2.25" x2="-3.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-3.95" y1="2.25" x2="3.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="3.95" y1="2.25" x2="3.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="3.95" y1="-2.25" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.25" x2="-3.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="1" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.75" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="-1" y2="-2.25" width="0.2032" layer="21"/>
<pad name="1" x="-2" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="2" x="0" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="3" x="2" y="-0.55" drill="0.7" diameter="1.6"/>
<text x="-3" y="3" size="0.4064" layer="25">&gt;Name</text>
<text x="1" y="3" size="0.4064" layer="27">&gt;Value</text>
<text x="-2.4" y="0.75" size="1.27" layer="51">+</text>
<text x="-0.4" y="0.75" size="1.27" layer="51">-</text>
<text x="1.7" y="0.95" size="0.8" layer="51">S</text>
</package>
<package name="1X03_SMD_RA_MALE_POST_SMALLER">
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="2" x="0" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<hole x="-1.27" y="0" drill="1.3589"/>
<hole x="1.27" y="0" drill="1.3589"/>
</package>
<package name="1X03_SMD_RA_MALE_POST_SMALLEST">
<wire x1="3.81" y1="1.25" x2="-3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="-3.81" y1="1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="2.53" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="-0.01" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-2.55" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-3.81" y2="-1.25" width="0.1778" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="1.25" width="0.1778" layer="51"/>
<wire x1="2.53" y1="-1.25" x2="2.53" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-0.01" y1="-1.25" x2="-0.01" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-2.55" y1="-1.25" x2="-2.55" y2="-7.25" width="0.127" layer="51"/>
<rectangle x1="-0.32" y1="4.15" x2="0.32" y2="5.95" layer="51"/>
<rectangle x1="-2.86" y1="4.15" x2="-2.22" y2="5.95" layer="51"/>
<rectangle x1="2.22" y1="4.15" x2="2.86" y2="5.95" layer="51"/>
<smd name="1" x="-2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="2" x="0" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<smd name="3" x="2.54" y="5.07" dx="2.5" dy="1.27" layer="1" rot="R90"/>
<hole x="-1.27" y="0" drill="1.3462"/>
<hole x="1.27" y="0" drill="1.3462"/>
</package>
<package name="1X04">
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="MOLEX-1X4">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="8.89" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="8.89" y1="-2.54" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="SCREWTERMINAL-3.5MM-4">
<wire x1="-2.3" y1="3.4" x2="12.8" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.8" y1="3.4" x2="12.8" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-2.8" x2="12.8" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-3.6" x2="-2.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-3.6" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-2.8" x2="-2.3" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-2.8" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-1.35" x2="-2.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-1.35" x2="-2.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-2.35" x2="-2.3" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="12.8" y1="3.15" x2="13.2" y2="3.15" width="0.2032" layer="51"/>
<wire x1="13.2" y1="3.15" x2="13.2" y2="2.15" width="0.2032" layer="51"/>
<wire x1="13.2" y1="2.15" x2="12.8" y2="2.15" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="3.5" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="7" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="10.5" y="0" radius="0.425" width="0.001" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="7" y="0" drill="1.2" diameter="2.032"/>
<pad name="4" x="10.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X04-1.27MM">
<wire x1="-0.381" y1="-0.889" x2="0.381" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.381" y1="-0.889" x2="0.635" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="-0.635" x2="0.889" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="-0.889" x2="1.651" y2="-0.889" width="0.127" layer="21"/>
<wire x1="1.651" y1="-0.889" x2="1.905" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="-0.635" x2="2.159" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.159" y1="-0.889" x2="2.921" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.921" y1="-0.889" x2="3.175" y2="-0.635" width="0.127" layer="21"/>
<wire x1="3.175" y1="-0.635" x2="3.429" y2="-0.889" width="0.127" layer="21"/>
<wire x1="3.429" y1="-0.889" x2="4.191" y2="-0.889" width="0.127" layer="21"/>
<wire x1="4.191" y1="0.889" x2="3.429" y2="0.889" width="0.127" layer="21"/>
<wire x1="3.429" y1="0.889" x2="3.175" y2="0.635" width="0.127" layer="21"/>
<wire x1="3.175" y1="0.635" x2="2.921" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.921" y1="0.889" x2="2.159" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.159" y1="0.889" x2="1.905" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="0.635" x2="1.651" y2="0.889" width="0.127" layer="21"/>
<wire x1="1.651" y1="0.889" x2="0.889" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="0.889" x2="0.635" y2="0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.381" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.381" y1="0.889" x2="-0.381" y2="0.889" width="0.127" layer="21"/>
<wire x1="-0.381" y1="0.889" x2="-0.889" y2="0.381" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-0.381" x2="-0.381" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.889" y1="0.381" x2="-0.889" y2="-0.381" width="0.127" layer="21"/>
<wire x1="4.191" y1="0.889" x2="4.699" y2="0.381" width="0.127" layer="21"/>
<wire x1="4.699" y1="0.381" x2="4.699" y2="-0.381" width="0.127" layer="21"/>
<wire x1="4.699" y1="-0.381" x2="4.191" y2="-0.889" width="0.127" layer="21"/>
<pad name="4" x="3.81" y="0" drill="0.508" diameter="1"/>
<pad name="3" x="2.54" y="0" drill="0.508" diameter="1"/>
<pad name="2" x="1.27" y="0" drill="0.508" diameter="1"/>
<pad name="1" x="0" y="0" drill="0.508" diameter="1"/>
<text x="-0.508" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.508" y="-1.651" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X04_LOCK">
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" shape="square" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X04_LOCK_LONGPADS">
<description>This footprint was designed to help hold the alignment of a through-hole component (i.e.  6-pin header) while soldering it into place.  
You may notice that each hole has been shifted either up or down by 0.005 of an inch from it's more standard position (which is a perfectly straight line).  
This slight alteration caused the pins (the squares in the middle) to touch the edges of the holes.  Because they are alternating, it causes a "brace" 
to hold the component in place.  0.005 has proven to be the perfect amount of "off-center" position when using our standard breakaway headers.
Although looks a little odd when you look at the bare footprint, once you have a header in there, the alteration is very hard to notice.  Also,
if you push a header all the way into place, it is covered up entirely on the bottom side.  This idea of altering the position of holes to aid alignment 
will be further integrated into the Sparkfun Library for other footprints.  It can help hold any component with 3 or more connection pins.</description>
<wire x1="1.524" y1="-0.127" x2="1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="4.064" y1="-0.127" x2="3.556" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="6.604" y1="-0.127" x2="6.096" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.8636" x2="-0.9906" y2="1.143" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.1176" x2="-0.9906" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.127" x2="8.636" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.127" x2="8.89" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-1.1176" x2="8.6106" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.127" x2="8.89" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.8636" x2="8.6106" y2="1.143" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<text x="-1.27" y="1.778" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-1.27" y="-3.302" size="1.27" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.2921" y1="-0.4191" x2="0.2921" y2="0.1651" layer="51"/>
<rectangle x1="2.2479" y1="-0.4191" x2="2.8321" y2="0.1651" layer="51"/>
<rectangle x1="4.7879" y1="-0.4191" x2="5.3721" y2="0.1651" layer="51"/>
<rectangle x1="7.3279" y1="-0.4191" x2="7.9121" y2="0.1651" layer="51" rot="R90"/>
</package>
<package name="MOLEX-1X4_LOCK">
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="8.89" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="8.89" y1="-2.54" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796"/>
<pad name="4" x="7.62" y="-0.127" drill="1.016" diameter="1.8796"/>
</package>
<package name="1X04-SMD">
<wire x1="5.08" y1="1.25" x2="-5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="1.25" x2="-5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="-1.25" x2="-3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="5.08" y1="-1.25" x2="5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="-7.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="-1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-3.81" y2="-7.25" width="0.127" layer="51"/>
<smd name="4" x="3.81" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="2" x="-1.27" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="1" x="-3.81" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<hole x="-2.54" y="0" drill="1.4"/>
<hole x="2.54" y="0" drill="1.4"/>
</package>
<package name="1X04_LONGPADS">
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<text x="-1.3462" y="2.4638" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="1X04_NO_SILK">
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
<package name="JST-4-PTH">
<pad name="1" x="-3" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="-1" y="0" drill="0.7" diameter="1.6"/>
<pad name="3" x="1" y="0" drill="0.7" diameter="1.6"/>
<pad name="4" x="3" y="0" drill="0.7" diameter="1.6"/>
<text x="-2.27" y="5.27" size="0.4064" layer="25">&gt;Name</text>
<text x="-2.27" y="4" size="0.4064" layer="27">&gt;Value</text>
<text x="-3.4" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<text x="0.7" y="0.9" size="0.8" layer="51">S</text>
<text x="2.7" y="0.9" size="0.8" layer="51">S</text>
<wire x1="-4.95" y1="-1.6" x2="-4.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-4.95" y1="6" x2="4.95" y2="6" width="0.2032" layer="21"/>
<wire x1="4.95" y1="6" x2="4.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-4.95" y1="-1.6" x2="-4.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="4.95" y1="-1.6" x2="4.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-4.3" y1="-1.6" x2="-4.3" y2="0" width="0.2032" layer="21"/>
<wire x1="4.3" y1="-1.6" x2="4.3" y2="0" width="0.2032" layer="21"/>
</package>
<package name="SCREWTERMINAL-3.5MM-4_LOCK">
<wire x1="-2.3" y1="3.4" x2="12.8" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.8" y1="3.4" x2="12.8" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-2.8" x2="12.8" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-3.6" x2="-2.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-3.6" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-2.8" x2="-2.3" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-2.8" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-1.35" x2="-2.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-1.35" x2="-2.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-2.35" x2="-2.3" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="12.8" y1="3.15" x2="13.2" y2="3.15" width="0.2032" layer="51"/>
<wire x1="13.2" y1="3.15" x2="13.2" y2="2.15" width="0.2032" layer="51"/>
<wire x1="13.2" y1="2.15" x2="12.8" y2="2.15" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="3.5" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="7" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="10.5" y="0" radius="0.425" width="0.001" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.6778" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="6.8222" y="0" drill="1.2" diameter="2.032"/>
<pad name="4" x="10.6778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="1X04-1MM-RA">
<wire x1="-1.5" y1="-4.6" x2="1.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-3" y1="-2" x2="-3" y2="-0.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="-0.35" x2="3" y2="-0.35" width="0.254" layer="21"/>
<wire x1="3" y1="-0.35" x2="3" y2="-2" width="0.254" layer="21"/>
<wire x1="-3" y1="-0.35" x2="-2.25" y2="-0.35" width="0.254" layer="21"/>
<circle x="-2.5" y="0.3" radius="0.1414" width="0.4" layer="21"/>
<smd name="NC2" x="-2.8" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="NC1" x="2.8" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="1" x="-1.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="2" x="-0.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="3" x="0.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="4" x="1.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<text x="-1.73" y="1.73" size="0.4064" layer="25" rot="R180">&gt;NAME</text>
<text x="3.46" y="1.73" size="0.4064" layer="27" rot="R180">&gt;VALUE</text>
</package>
<package name="1X04_SMD_STRAIGHT_COMBO">
<wire x1="7.62" y1="1.27" x2="7.62" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="0" y1="1.27" x2="0" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="-1.37" y1="-1.25" x2="-1.37" y2="1.25" width="0.1778" layer="21"/>
<wire x1="8.99" y1="1.25" x2="8.99" y2="-1.25" width="0.1778" layer="21"/>
<wire x1="-0.73" y1="-1.25" x2="-1.37" y2="-1.25" width="0.1778" layer="21"/>
<wire x1="8.99" y1="-1.25" x2="8.32" y2="-1.25" width="0.1778" layer="21"/>
<wire x1="8.32" y1="1.25" x2="8.99" y2="1.25" width="0.1778" layer="21"/>
<wire x1="-1.37" y1="1.25" x2="-0.73" y2="1.25" width="0.1778" layer="21"/>
<wire x1="5.869" y1="-1.29" x2="6.831" y2="-1.29" width="0.1778" layer="21"/>
<wire x1="5.869" y1="1.25" x2="6.831" y2="1.25" width="0.1778" layer="21"/>
<wire x1="3.329" y1="-1.29" x2="4.291" y2="-1.29" width="0.1778" layer="21"/>
<wire x1="3.329" y1="1.25" x2="4.291" y2="1.25" width="0.1778" layer="21"/>
<wire x1="0.789" y1="-1.29" x2="1.751" y2="-1.29" width="0.1778" layer="21"/>
<wire x1="0.789" y1="1.25" x2="1.751" y2="1.25" width="0.1778" layer="21"/>
<smd name="3" x="5.08" y="-1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="1" x="0" y="-1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="4" x="7.62" y="1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="2" x="2.54" y="1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="1-2" x="0" y="1.65" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="2-2" x="2.54" y="-1.65" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="3-2" x="5.08" y="1.65" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="4-2" x="7.62" y="-1.65" dx="2" dy="1" layer="1" rot="R90"/>
<text x="0" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="1X04-SMD_LONG">
<wire x1="5.08" y1="1.25" x2="-5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="1.25" x2="-5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="-1.25" x2="-3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="5.08" y1="-1.25" x2="5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="-7.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="-1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-3.81" y2="-7.25" width="0.127" layer="51"/>
<smd name="4" x="3.81" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<smd name="2" x="-1.27" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<smd name="1" x="-3.81" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<hole x="-2.54" y="0" drill="1.4"/>
<hole x="2.54" y="0" drill="1.4"/>
</package>
<package name="JST-4-PTH-VERT">
<wire x1="-4.95" y1="-2.25" x2="-4.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-4.95" y1="2.25" x2="4.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="4.95" y1="-2.25" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.25" x2="-4.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="1" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.75" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="-1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="4.95" y1="2.25" x2="4.95" y2="-2.25" width="0.2032" layer="21"/>
<pad name="1" x="-3" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="2" x="-1" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="3" x="1" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="4" x="3" y="-0.55" drill="0.7" diameter="1.6"/>
<text x="-3" y="3" size="0.4064" layer="25">&gt;Name</text>
<text x="1" y="3" size="0.4064" layer="27">&gt;Value</text>
<text x="-1.4" y="0.75" size="1.27" layer="51">+</text>
<text x="0.6" y="0.75" size="1.27" layer="51">-</text>
<text x="2.7" y="0.95" size="0.8" layer="51">Y</text>
<text x="-3.3" y="0.95" size="0.8" layer="51">B</text>
</package>
<package name="1X04_SMD_RA_FEMALE">
<wire x1="-5.205" y1="4.25" x2="-5.205" y2="-4.25" width="0.1778" layer="21"/>
<wire x1="5.205" y1="4.25" x2="-5.205" y2="4.25" width="0.1778" layer="21"/>
<wire x1="5.205" y1="-4.25" x2="5.205" y2="4.25" width="0.1778" layer="21"/>
<wire x1="-5.205" y1="-4.25" x2="5.205" y2="-4.25" width="0.1778" layer="21"/>
<rectangle x1="-1.59" y1="6.8" x2="-0.95" y2="7.65" layer="51"/>
<rectangle x1="0.95" y1="6.8" x2="1.59" y2="7.65" layer="51"/>
<rectangle x1="-4.13" y1="6.8" x2="-3.49" y2="7.65" layer="51"/>
<smd name="3" x="1.27" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="2" x="-1.27" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="1" x="-3.81" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<text x="-4.425" y="2.775" size="1" layer="27">&gt;Value</text>
<text x="-4.225" y="-3.395" size="1" layer="25">&gt;Name</text>
<rectangle x1="3.49" y1="6.8" x2="4.13" y2="7.65" layer="51"/>
<smd name="4" x="3.81" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
</package>
<package name="1X04-1.5MM_JST">
<pad name="4" x="4.5" y="0" drill="0.7"/>
<pad name="3" x="3" y="0" drill="0.7"/>
<pad name="2" x="1.5" y="0" drill="0.7"/>
<pad name="1" x="0" y="0" drill="0.7"/>
<text x="-0.508" y="1.27" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.508" y="-1.651" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-1.5" y1="2.2" x2="6" y2="2.2" width="0.3048" layer="21"/>
<wire x1="6" y1="2.2" x2="6" y2="-1.5" width="0.3048" layer="21"/>
<wire x1="6" y1="-1.5" x2="4.5" y2="-1.5" width="0.3048" layer="21"/>
<wire x1="4.5" y1="-1.5" x2="4.5" y2="-1" width="0.3048" layer="21"/>
<wire x1="4.5" y1="-1" x2="0" y2="-1" width="0.3048" layer="21"/>
<wire x1="0" y1="-1" x2="0" y2="-1.5" width="0.3048" layer="21"/>
<wire x1="0" y1="-1.5" x2="-1.5" y2="-1.5" width="0.3048" layer="21"/>
<wire x1="-1.5" y1="-1.5" x2="-1.5" y2="2.2" width="0.3048" layer="21"/>
</package>
<package name="2X8">
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="11.43" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="13.97" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="3.81" x2="0.635" y2="3.81" width="0.1524" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.905" y2="3.81" width="0.1524" layer="21"/>
<wire x1="1.905" y1="3.81" x2="3.175" y2="3.81" width="0.1524" layer="21"/>
<wire x1="3.175" y1="3.81" x2="3.81" y2="3.175" width="0.1524" layer="21"/>
<wire x1="3.81" y1="3.175" x2="4.445" y2="3.81" width="0.1524" layer="21"/>
<wire x1="4.445" y1="3.81" x2="5.715" y2="3.81" width="0.1524" layer="21"/>
<wire x1="5.715" y1="3.81" x2="6.35" y2="3.175" width="0.1524" layer="21"/>
<wire x1="6.35" y1="3.175" x2="6.985" y2="3.81" width="0.1524" layer="21"/>
<wire x1="6.985" y1="3.81" x2="8.255" y2="3.81" width="0.1524" layer="21"/>
<wire x1="8.255" y1="3.81" x2="8.89" y2="3.175" width="0.1524" layer="21"/>
<wire x1="8.89" y1="3.175" x2="9.525" y2="3.81" width="0.1524" layer="21"/>
<wire x1="9.525" y1="3.81" x2="10.795" y2="3.81" width="0.1524" layer="21"/>
<wire x1="10.795" y1="3.81" x2="11.43" y2="3.175" width="0.1524" layer="21"/>
<wire x1="11.43" y1="3.175" x2="12.065" y2="3.81" width="0.1524" layer="21"/>
<wire x1="12.065" y1="3.81" x2="13.335" y2="3.81" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.97" y2="3.175" width="0.1524" layer="21"/>
<wire x1="13.97" y1="3.175" x2="14.605" y2="3.81" width="0.1524" layer="21"/>
<wire x1="14.605" y1="3.81" x2="15.875" y2="3.81" width="0.1524" layer="21"/>
<wire x1="15.875" y1="3.81" x2="16.51" y2="3.175" width="0.1524" layer="21"/>
<wire x1="16.51" y1="3.175" x2="17.145" y2="3.81" width="0.1524" layer="21"/>
<wire x1="17.145" y1="3.81" x2="18.415" y2="3.81" width="0.1524" layer="21"/>
<wire x1="18.415" y1="3.81" x2="19.05" y2="3.175" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-0.635" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-0.635" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-0.635" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="3.175" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="3.175" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="3.175" x2="8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="3.175" x2="11.43" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="3.175" x2="13.97" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="3.175" x2="16.51" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="19.05" y1="3.175" x2="19.05" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="3" x="2.54" y="0" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="4" x="2.54" y="2.54" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="5" x="5.08" y="0" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="6" x="5.08" y="2.54" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="7" x="7.62" y="0" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="8" x="7.62" y="2.54" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="9" x="10.16" y="0" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="10" x="10.16" y="2.54" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="11" x="12.7" y="0" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="12" x="12.7" y="2.54" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="13" x="15.24" y="0" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="14" x="15.24" y="2.54" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="15" x="17.78" y="0" drill="1.016" diameter="1.8796" shape="octagon"/>
<pad name="16" x="17.78" y="2.54" drill="1.016" diameter="1.8796" shape="octagon"/>
<text x="-1.27" y="4.445" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="2.286" x2="0.254" y2="2.794" layer="51"/>
<rectangle x1="2.286" y1="2.286" x2="2.794" y2="2.794" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="2.286" x2="5.334" y2="2.794" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="2.286" x2="7.874" y2="2.794" layer="51"/>
<rectangle x1="9.906" y1="2.286" x2="10.414" y2="2.794" layer="51"/>
<rectangle x1="12.446" y1="2.286" x2="12.954" y2="2.794" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="12.446" y1="-0.254" x2="12.954" y2="0.254" layer="51"/>
<rectangle x1="14.986" y1="2.286" x2="15.494" y2="2.794" layer="51"/>
<rectangle x1="14.986" y1="-0.254" x2="15.494" y2="0.254" layer="51"/>
<rectangle x1="17.526" y1="2.286" x2="18.034" y2="2.794" layer="51"/>
<rectangle x1="17.526" y1="-0.254" x2="18.034" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="M03">
<wire x1="3.81" y1="-5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M04">
<wire x1="1.27" y1="-5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="0" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="0" y2="5.08" width="0.6096" layer="94"/>
<text x="-5.08" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M2X8">
<wire x1="-1.27" y1="5.08" x2="-2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="10.16" x2="-2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="12.7" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="0" x2="-2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="-2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-7.62" x2="-2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="-3.81" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<text x="-2.54" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="13.97" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="14" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="16" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="M03" prefix="JP" uservalue="yes">
<description>&lt;b&gt;Header 3&lt;/b&gt;
Standard 3-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115). Molex polarized connector foot print use with SKU : PRT-08232 with associated crimp pins and housings.</description>
<gates>
<gate name="G$1" symbol="M03" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X03">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SCREW" package="SCREWTERMINAL-3.5MM-3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK" package="1X03_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X03_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X3_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SCREW_LOCK" package="SCREWTERMINAL-3.5MM-3_LOCK.007S">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X03_NO_SILK" package="1X03_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LONGPADS" package="1X03_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH" package="JST-3-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="SKU" value="PRT-09915" constant="no"/>
</technology>
</technologies>
</device>
<device name="POGO_PIN_HOLES_ONLY" package="1X03_PP_HOLES_ONLY">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-SCREW-5MM" package="SCREWTERMINAL-5MM-3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="STOREFRONT_ID" value="PRT-08433" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK_NO_SILK" package="1X03_LOCK_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-SMD" package="JST-3-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="1X03-1MM-RA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD_RA_FEMALE" package="1X03_SMD_RA_FEMALE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-10926"/>
<attribute name="VALUE" value="1x3 RA Female .1&quot;"/>
</technology>
</technologies>
</device>
<device name="SMD_RA_MALE" package="1X03_SMD_RA_MALE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-10925"/>
</technology>
</technologies>
</device>
<device name="SMD_RA_MALE_POST" package="1X03_SMD_RA_MALE_POST">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-VERT" package="JST-3-PTH-VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X03_SMD_RA_MALE_POST_SMALLER" package="1X03_SMD_RA_MALE_POST_SMALLER">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X03_SMD_RA_MALE_POST_SMALLEST" package="1X03_SMD_RA_MALE_POST_SMALLEST">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="M04" prefix="JP" uservalue="yes">
<description>&lt;b&gt;Header 4&lt;/b&gt;
Standard 4-pin 0.1" header. Use with straight break away headers (SKU : PRT-00116), right angle break away headers (PRT-00553), swiss pins (PRT-00743), machine pins (PRT-00117), and female headers (PRT-00115). Molex polarized connector foot print use with SKU : PRT-08231 with associated crimp pins and housings. 1MM SMD Version SKU: PRT-10208</description>
<gates>
<gate name="G$1" symbol="M04" x="-2.54" y="0"/>
</gates>
<devices>
<device name="PTH" package="1X04">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SCREW" package="SCREWTERMINAL-3.5MM-4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1.27MM" package="1X04-1.27MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK" package="1X04_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X04_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X4_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="1X04-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LONGPADS" package="1X04_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X04_NO_SILK" package="1X04_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH" package="JST-4-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="SKU" value="PRT-09916" constant="no"/>
</technology>
</technologies>
</device>
<device name="SCREW_LOCK" package="SCREWTERMINAL-3.5MM-4_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2" package="1X04-1MM-RA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD_STRAIGHT_COMBO" package="1X04_SMD_STRAIGHT_COMBO">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08511"/>
<attribute name="VALUE" value="1X04_SMD_STRAIGHT_COMBO"/>
</technology>
</technologies>
</device>
<device name="SMD_LONG" package="1X04-SMD_LONG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-VERT" package="JST-4-PTH-VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD_RA_FEMALE" package="1X04_SMD_RA_FEMALE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST" package="1X04-1.5MM_JST">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="M08X2">
<description>.1" headers, two rows of 8 each</description>
<gates>
<gate name="G$1" symbol="M2X8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2X8">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Electromechanical">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find anything that moves- switches, relays, buttons, potentiometers. Also, anything that goes on a board but isn't electrical in nature- screws, standoffs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="TACTILE-PTH">
<description>&lt;b&gt;OMRON SWITCH&lt;/b&gt;</description>
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.159" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="21"/>
<wire x1="3.048" y1="0.998" x2="3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-3.048" y1="1.028" x2="-3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.508" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="-2.54" y2="-1.27" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="-2.159" y2="-0.381" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.2032" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1.016" diameter="1.8796"/>
<pad name="2" x="3.2512" y="2.2606" drill="1.016" diameter="1.8796"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1.016" diameter="1.8796"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1.016" diameter="1.8796"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="TACTILE_SWITCH_SMD-2">
<wire x1="1.905" y1="1.27" x2="1.905" y2="0.445" width="0.127" layer="51"/>
<wire x1="1.905" y1="0.445" x2="2.16" y2="-0.01" width="0.127" layer="51"/>
<wire x1="1.905" y1="-0.23" x2="1.905" y2="-1.115" width="0.127" layer="51"/>
<wire x1="-2.25" y1="2.25" x2="2.25" y2="2.25" width="0.127" layer="51"/>
<wire x1="2.25" y1="2.25" x2="2.25" y2="-2.25" width="0.127" layer="51"/>
<wire x1="2.25" y1="-2.25" x2="-2.25" y2="-2.25" width="0.127" layer="51"/>
<wire x1="-2.25" y1="-2.25" x2="-2.25" y2="2.25" width="0.127" layer="51"/>
<wire x1="-2.2" y1="0.8" x2="-2.2" y2="-0.8" width="0.2032" layer="21"/>
<wire x1="1.3" y1="2.2" x2="-1.3" y2="2.2" width="0.2032" layer="21"/>
<wire x1="2.2" y1="-0.8" x2="2.2" y2="0.8" width="0.2032" layer="21"/>
<wire x1="-1.3" y1="-2.2" x2="1.3" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="2.2" y1="0.8" x2="1.8" y2="0.8" width="0.2032" layer="21"/>
<wire x1="2.2" y1="-0.8" x2="1.8" y2="-0.8" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="0.8" x2="-2.2" y2="0.8" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="-0.8" x2="-2.2" y2="-0.8" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="1.27" width="0.2032" layer="21"/>
<smd name="1" x="2.225" y="1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<smd name="2" x="2.225" y="-1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<smd name="3" x="-2.225" y="-1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<smd name="4" x="-2.225" y="1.75" dx="1.1" dy="0.7" layer="1" rot="R90"/>
<text x="-0.889" y="1.778" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="TACTILE-PTH-12MM">
<wire x1="5" y1="-1.3" x2="5" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="5" y1="-0.7" x2="4.5" y2="-0.2" width="0.2032" layer="51"/>
<wire x1="5" y1="0.2" x2="5" y2="1" width="0.2032" layer="51"/>
<wire x1="-6" y1="4" x2="-6" y2="5" width="0.2032" layer="21"/>
<wire x1="-5" y1="6" x2="5" y2="6" width="0.2032" layer="21"/>
<wire x1="6" y1="5" x2="6" y2="4" width="0.2032" layer="21"/>
<wire x1="6" y1="1" x2="6" y2="-1" width="0.2032" layer="21"/>
<wire x1="6" y1="-4" x2="6" y2="-5" width="0.2032" layer="21"/>
<wire x1="5" y1="-6" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="-6" y1="-5" x2="-6" y2="-4" width="0.2032" layer="21"/>
<wire x1="-6" y1="-1" x2="-6" y2="1" width="0.2032" layer="21"/>
<wire x1="-6" y1="5" x2="-5" y2="6" width="0.2032" layer="21" curve="-90"/>
<wire x1="5" y1="6" x2="6" y2="5" width="0.2032" layer="21" curve="-90"/>
<wire x1="6" y1="-5" x2="5" y2="-6" width="0.2032" layer="21" curve="-90"/>
<wire x1="-5" y1="-6" x2="-6" y2="-5" width="0.2032" layer="21" curve="-90"/>
<circle x="0" y="0" radius="3.5" width="0.2032" layer="21"/>
<circle x="-4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="-4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<pad name="4" x="-6.25" y="2.5" drill="1.2" diameter="2.159"/>
<pad name="2" x="-6.25" y="-2.5" drill="1.2" diameter="2.159"/>
<pad name="1" x="6.25" y="-2.5" drill="1.2" diameter="2.159"/>
<pad name="3" x="6.25" y="2.5" drill="1.2" diameter="2.159"/>
</package>
<package name="TACTILE-SWITCH-1101NE">
<description>Sparkfun SKU# COM-08229</description>
<wire x1="-3" y1="1.1" x2="-3" y2="-1.1" width="0.127" layer="51"/>
<wire x1="3" y1="1.1" x2="3" y2="-1.1" width="0.127" layer="51"/>
<wire x1="-2.75" y1="1.75" x2="-3" y2="1.5" width="0.2032" layer="21" curve="90"/>
<wire x1="-2.75" y1="1.75" x2="2.75" y2="1.75" width="0.2032" layer="21"/>
<wire x1="2.75" y1="1.75" x2="3" y2="1.5" width="0.2032" layer="21" curve="-90"/>
<wire x1="3" y1="-1.5" x2="2.75" y2="-1.75" width="0.2032" layer="21" curve="-90"/>
<wire x1="2.75" y1="-1.75" x2="-2.75" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="-3" y1="-1.5" x2="-2.75" y2="-1.75" width="0.2032" layer="21" curve="90"/>
<wire x1="-3" y1="-1.5" x2="-3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="-3" y1="1.1" x2="-3" y2="1.5" width="0.2032" layer="21"/>
<wire x1="3" y1="1.1" x2="3" y2="1.5" width="0.2032" layer="21"/>
<wire x1="3" y1="-1.5" x2="3" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="0.75" x2="1.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-0.75" x2="-1.5" y2="-0.75" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-0.75" x2="-1.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="1.5" y1="-0.75" x2="1.5" y2="0.75" width="0.2032" layer="21"/>
<wire x1="-2" y1="0" x2="-1" y2="0" width="0.127" layer="51"/>
<wire x1="-1" y1="0" x2="0.1" y2="0.5" width="0.127" layer="51"/>
<wire x1="0.3" y1="0" x2="2" y2="0" width="0.127" layer="51"/>
<smd name="1" x="-3.15" y="0" dx="2.3" dy="1.6" layer="1" rot="R180"/>
<smd name="2" x="3.15" y="0" dx="2.3" dy="1.6" layer="1" rot="R180"/>
<text x="-3" y="2" size="0.762" layer="25">&gt;NAME</text>
<text x="-3" y="-2.7" size="0.762" layer="27">&gt;VALUE</text>
</package>
<package name="REED_SWITCH_PTH">
<wire x1="-6.985" y1="-0.635" x2="6.985" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-6.985" y1="-0.635" x2="-6.985" y2="0" width="0.127" layer="21"/>
<wire x1="-6.985" y1="0" x2="-6.985" y2="0.635" width="0.127" layer="21"/>
<wire x1="-6.985" y1="0.635" x2="6.985" y2="0.635" width="0.127" layer="21"/>
<wire x1="6.985" y1="0.635" x2="6.985" y2="0" width="0.127" layer="21"/>
<wire x1="6.985" y1="0" x2="6.985" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-6.985" y1="0" x2="-7.62" y2="0" width="0.127" layer="21"/>
<wire x1="6.985" y1="0" x2="7.62" y2="0" width="0.127" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="1.8796"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="TACTILE_SWITCH_TALL">
<wire x1="-3" y1="-3" x2="3" y2="-3" width="0.254" layer="21"/>
<wire x1="3" y1="-3" x2="3" y2="3" width="0.254" layer="21"/>
<wire x1="3" y1="3" x2="-3" y2="3" width="0.254" layer="21"/>
<wire x1="-3" y1="3" x2="-3" y2="-3" width="0.254" layer="21"/>
<circle x="0" y="0" radius="1.75" width="0.254" layer="21"/>
<smd name="A1" x="-3.975" y="-2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
<smd name="A2" x="3.975" y="-2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
<smd name="B1" x="-3.975" y="2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
<smd name="B2" x="3.975" y="2.25" dx="1.3" dy="1.55" layer="1" rot="R90"/>
</package>
<package name="REED_SWITCH_PLASTIC">
<wire x1="-7.5" y1="-1.65" x2="7.5" y2="-1.65" width="0.127" layer="21"/>
<wire x1="-7.5" y1="-1.65" x2="-7.5" y2="0" width="0.127" layer="21"/>
<wire x1="-7.5" y1="0" x2="-7.5" y2="1.65" width="0.127" layer="21"/>
<wire x1="-7.5" y1="1.65" x2="7.5" y2="1.65" width="0.127" layer="21"/>
<wire x1="7.5" y1="1.65" x2="7.5" y2="0" width="0.127" layer="21"/>
<wire x1="7.5" y1="0" x2="7.5" y2="-1.65" width="0.127" layer="21"/>
<wire x1="-7.5" y1="0" x2="-7.72" y2="0" width="0.127" layer="21"/>
<wire x1="7.5" y1="0" x2="7.72" y2="0" width="0.127" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="1.8796"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="1.8796"/>
</package>
<package name="TACTILE-PTH-SIDEEZ">
<wire x1="1.5" y1="-3.8" x2="-1.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="-2" x2="-3.65" y2="3.5" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="3.5" x2="-3" y2="3.5" width="0.2032" layer="51"/>
<wire x1="3" y1="3.5" x2="3.65" y2="3.5" width="0.2032" layer="51"/>
<wire x1="3.65" y1="3.5" x2="3.65" y2="-2" width="0.2032" layer="51"/>
<wire x1="-3" y1="2" x2="3" y2="2" width="0.2032" layer="51"/>
<wire x1="-3" y1="2" x2="-3" y2="3.5" width="0.2032" layer="51"/>
<wire x1="3" y1="2" x2="3" y2="3.5" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="-2" x2="-1.5" y2="-2" width="0.2032" layer="51"/>
<wire x1="-1.5" y1="-2" x2="1.5" y2="-2" width="0.2032" layer="51"/>
<wire x1="1.5" y1="-2" x2="3.65" y2="-2" width="0.2032" layer="51"/>
<wire x1="1.5" y1="-2" x2="1.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-1.5" y1="-2" x2="-1.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-3.65" y1="1" x2="-3.65" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.65" y1="-2" x2="3.65" y2="-2" width="0.2032" layer="21"/>
<wire x1="3.65" y1="-2" x2="3.65" y2="1" width="0.2032" layer="21"/>
<wire x1="2" y1="2" x2="-2" y2="2" width="0.2032" layer="21"/>
<pad name="ANCHOR1" x="-3.5" y="2.5" drill="1.2" diameter="2.2" stop="no"/>
<pad name="ANCHOR2" x="3.5" y="2.5" drill="1.2" diameter="2.2" stop="no"/>
<pad name="1" x="-2.5" y="0" drill="0.8" diameter="1.7" stop="no"/>
<pad name="2" x="2.5" y="0" drill="0.8" diameter="1.7" stop="no"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<circle x="2.5" y="0" radius="0.4445" width="0" layer="29"/>
<circle x="-2.5" y="0" radius="0.4445" width="0" layer="29"/>
<circle x="-3.5" y="2.5" radius="0.635" width="0" layer="29"/>
<circle x="3.5" y="2.5" radius="0.635" width="0" layer="29"/>
<circle x="-3.5" y="2.5" radius="1.143" width="0" layer="30"/>
<circle x="2.5" y="0" radius="0.889" width="0" layer="30"/>
<circle x="-2.5" y="0" radius="0.889" width="0" layer="30"/>
<circle x="3.5" y="2.5" radius="1.143" width="0" layer="30"/>
</package>
<package name="TACTILE_SWITCH_SMD-3">
<wire x1="-2.04" y1="-0.44" x2="-2.04" y2="0.47" width="0.2032" layer="21"/>
<wire x1="-1.04" y1="1.14" x2="1.04" y2="1.14" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="0.8" width="0.15" layer="21"/>
<smd name="1" x="-1.8" y="1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<smd name="2" x="1.8" y="1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<smd name="3" x="-1.8" y="-1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<smd name="4" x="1.8" y="-1.1" dx="0.8" dy="1" layer="1" rot="R90"/>
<wire x1="2.06" y1="-0.44" x2="2.06" y2="0.47" width="0.2032" layer="21"/>
<wire x1="-1.04" y1="-1.16" x2="1.04" y2="-1.16" width="0.2032" layer="21"/>
</package>
<package name="TACTILE-SMD-12MM">
<wire x1="5" y1="-1.3" x2="5" y2="-0.7" width="0.2032" layer="51"/>
<wire x1="5" y1="-0.7" x2="4.5" y2="-0.2" width="0.2032" layer="51"/>
<wire x1="5" y1="0.2" x2="5" y2="1" width="0.2032" layer="51"/>
<wire x1="-6" y1="4" x2="-6" y2="5" width="0.2032" layer="21"/>
<wire x1="-5" y1="6" x2="5" y2="6" width="0.2032" layer="21"/>
<wire x1="6" y1="5" x2="6" y2="4" width="0.2032" layer="21"/>
<wire x1="6" y1="1" x2="6" y2="-1" width="0.2032" layer="21"/>
<wire x1="6" y1="-4" x2="6" y2="-5" width="0.2032" layer="21"/>
<wire x1="5" y1="-6" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="-6" y1="-5" x2="-6" y2="-4" width="0.2032" layer="21"/>
<wire x1="-6" y1="-1" x2="-6" y2="1" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="3.5" width="0.2032" layer="21"/>
<circle x="-4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<circle x="-4.5" y="-4.5" radius="0.3" width="0.7" layer="21"/>
<smd name="4" x="-6.975" y="2.5" dx="1.6" dy="1.55" layer="1"/>
<smd name="2" x="-6.975" y="-2.5" dx="1.6" dy="1.55" layer="1"/>
<smd name="1" x="6.975" y="-2.5" dx="1.6" dy="1.55" layer="1"/>
<smd name="3" x="6.975" y="2.5" dx="1.6" dy="1.55" layer="1"/>
<wire x1="-6" y1="-5" x2="-5" y2="-6" width="0.2032" layer="21"/>
<wire x1="6" y1="-5" x2="5" y2="-6" width="0.2032" layer="21"/>
<wire x1="6" y1="5" x2="5" y2="6" width="0.2032" layer="21"/>
<wire x1="-5" y1="6" x2="-6" y2="5" width="0.2032" layer="21"/>
</package>
<package name="TACTILE-PTH-EZ">
<wire x1="3.048" y1="1.016" x2="3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="2.54" x2="2.54" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="3.048" y1="-2.54" x2="3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-3.048" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="2.54" x2="-3.048" y2="1.016" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-3.048" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-3.048" y1="-2.54" x2="-3.048" y2="-1.016" width="0.2032" layer="51"/>
<wire x1="2.54" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-3.048" x2="-2.159" y2="-3.048" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.54" y1="3.048" x2="2.159" y2="3.048" width="0.2032" layer="51"/>
<wire x1="2.159" y1="3.048" x2="-2.159" y2="3.048" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="-3.048" x2="2.159" y2="-3.048" width="0.2032" layer="21"/>
<wire x1="3.048" y1="0.998" x2="3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-3.048" y1="1.028" x2="-3.048" y2="-1.016" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.508" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-0.508" x2="-2.54" y2="-1.27" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="0.508" x2="-2.159" y2="-0.381" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.778" width="0.2032" layer="21"/>
<pad name="1" x="-3.2512" y="2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="2" x="3.2512" y="2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="3" x="-3.2512" y="-2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<pad name="4" x="3.2512" y="-2.2606" drill="1.016" diameter="1.8796" stop="no"/>
<text x="-2.54" y="3.81" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<polygon width="0.127" layer="30">
<vertex x="-3.2664" y="3.142"/>
<vertex x="-3.2589" y="3.1445" curve="89.986886"/>
<vertex x="-4.1326" y="2.286"/>
<vertex x="-4.1351" y="2.2657" curve="90.00652"/>
<vertex x="-3.2563" y="1.392"/>
<vertex x="-3.2487" y="1.3869" curve="90.006616"/>
<vertex x="-2.3826" y="2.2403"/>
<vertex x="-2.3775" y="2.2683" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.2462" y="2.7026"/>
<vertex x="-3.2589" y="2.7051" curve="90.026544"/>
<vertex x="-3.6881" y="2.2733"/>
<vertex x="-3.6881" y="2.2632" curve="89.974074"/>
<vertex x="-3.2562" y="1.8213"/>
<vertex x="-3.2259" y="1.8186" curve="90.051271"/>
<vertex x="-2.8093" y="2.2658"/>
<vertex x="-2.8093" y="2.2606" curve="90.012964"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="3.2411" y="3.1395"/>
<vertex x="3.2486" y="3.142" curve="89.986886"/>
<vertex x="2.3749" y="2.2835"/>
<vertex x="2.3724" y="2.2632" curve="90.00652"/>
<vertex x="3.2512" y="1.3895"/>
<vertex x="3.2588" y="1.3844" curve="90.006616"/>
<vertex x="4.1249" y="2.2378"/>
<vertex x="4.13" y="2.2658" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.2613" y="2.7001"/>
<vertex x="3.2486" y="2.7026" curve="90.026544"/>
<vertex x="2.8194" y="2.2708"/>
<vertex x="2.8194" y="2.2607" curve="89.974074"/>
<vertex x="3.2513" y="1.8188"/>
<vertex x="3.2816" y="1.8161" curve="90.051271"/>
<vertex x="3.6982" y="2.2633"/>
<vertex x="3.6982" y="2.2581" curve="90.012964"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.2613" y="-1.3868"/>
<vertex x="-3.2538" y="-1.3843" curve="89.986886"/>
<vertex x="-4.1275" y="-2.2428"/>
<vertex x="-4.13" y="-2.2631" curve="90.00652"/>
<vertex x="-3.2512" y="-3.1368"/>
<vertex x="-3.2436" y="-3.1419" curve="90.006616"/>
<vertex x="-2.3775" y="-2.2885"/>
<vertex x="-2.3724" y="-2.2605" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.2411" y="-1.8262"/>
<vertex x="-3.2538" y="-1.8237" curve="90.026544"/>
<vertex x="-3.683" y="-2.2555"/>
<vertex x="-3.683" y="-2.2656" curve="89.974074"/>
<vertex x="-3.2511" y="-2.7075"/>
<vertex x="-3.2208" y="-2.7102" curve="90.051271"/>
<vertex x="-2.8042" y="-2.263"/>
<vertex x="-2.8042" y="-2.2682" curve="90.012964"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="3.2411" y="-1.3843"/>
<vertex x="3.2486" y="-1.3818" curve="89.986886"/>
<vertex x="2.3749" y="-2.2403"/>
<vertex x="2.3724" y="-2.2606" curve="90.00652"/>
<vertex x="3.2512" y="-3.1343"/>
<vertex x="3.2588" y="-3.1394" curve="90.006616"/>
<vertex x="4.1249" y="-2.286"/>
<vertex x="4.13" y="-2.258" curve="89.98711"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.2613" y="-1.8237"/>
<vertex x="3.2486" y="-1.8212" curve="90.026544"/>
<vertex x="2.8194" y="-2.253"/>
<vertex x="2.8194" y="-2.2631" curve="89.974074"/>
<vertex x="3.2513" y="-2.705"/>
<vertex x="3.2816" y="-2.7077" curve="90.051271"/>
<vertex x="3.6982" y="-2.2605"/>
<vertex x="3.6982" y="-2.2657" curve="90.012964"/>
</polygon>
</package>
<package name="TACTILE-SWITCH-SMD">
<wire x1="-1.54" y1="-2.54" x2="-2.54" y2="-1.54" width="0.2032" layer="51"/>
<wire x1="-2.54" y1="-1.24" x2="-2.54" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="1.54" x2="-1.54" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-1.54" y1="2.54" x2="1.54" y2="2.54" width="0.2032" layer="21"/>
<wire x1="1.54" y1="2.54" x2="2.54" y2="1.54" width="0.2032" layer="51"/>
<wire x1="2.54" y1="1.24" x2="2.54" y2="-1.24" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-1.54" x2="1.54" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="1.54" y1="-2.54" x2="-1.54" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.905" y2="0.445" width="0.127" layer="51"/>
<wire x1="1.905" y1="0.445" x2="2.16" y2="-0.01" width="0.127" layer="51"/>
<wire x1="1.905" y1="-0.23" x2="1.905" y2="-1.115" width="0.127" layer="51"/>
<circle x="0" y="0" radius="1.27" width="0.2032" layer="21"/>
<smd name="1" x="-2.794" y="1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<smd name="2" x="2.794" y="1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<smd name="3" x="-2.794" y="-1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<smd name="4" x="2.794" y="-1.905" dx="0.762" dy="1.524" layer="1" rot="R90"/>
<text x="-0.889" y="1.778" size="0.4064" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="0.4064" layer="27">&gt;Value</text>
</package>
<package name="TACTILE_SWITCH-SMD-RIGHT-ANGLE">
<hole x="0" y="0.9" drill="0.7"/>
<hole x="0" y="-0.9" drill="0.7"/>
<smd name="1" x="-1.95" y="0" dx="2" dy="1.1" layer="1" rot="R90"/>
<smd name="2" x="1.95" y="0" dx="2" dy="1.1" layer="1" rot="R90"/>
<wire x1="-2" y1="1.2" x2="-2" y2="1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="1.5" x2="2" y2="1.5" width="0.127" layer="21"/>
<wire x1="2" y1="1.5" x2="2" y2="1.2" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.2" x2="-2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.5" x2="-0.7" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-1.5" x2="0.7" y2="-1.5" width="0.127" layer="21"/>
<wire x1="0.7" y1="-1.5" x2="2" y2="-1.5" width="0.127" layer="21"/>
<wire x1="2" y1="-1.5" x2="2" y2="-1.2" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-2.1" x2="0.7" y2="-2.1" width="0.127" layer="21"/>
<wire x1="0.7" y1="-2.1" x2="0.7" y2="-1.5" width="0.127" layer="21"/>
<wire x1="-0.7" y1="-2.1" x2="-0.7" y2="-1.5" width="0.127" layer="21"/>
<text x="-2" y="1.7" size="0.8128" layer="25" ratio="15">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="SWITCH-MOMENTARY-2">
<wire x1="1.905" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="1.905" y2="1.27" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.127" width="0.4064" layer="94"/>
<circle x="2.54" y="0" radius="0.127" width="0.4064" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="2"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SWITCH-MOMENTARY-2" prefix="S">
<description>Various NO switches- pushbuttons, reed, etc</description>
<gates>
<gate name="G$1" symbol="SWITCH-MOMENTARY-2" x="0" y="0"/>
</gates>
<devices>
<device name="PTH" package="TACTILE-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-2" package="TACTILE_SWITCH_SMD-2">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
<connect gate="G$1" pin="2" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="12MM" package="TACTILE-PTH-12MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-09185" constant="no"/>
</technology>
</technologies>
</device>
<device name="-SMD-1101NE" package="TACTILE-SWITCH-1101NE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_REED" package="REED_SWITCH_PTH">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-4" package="TACTILE_SWITCH_TALL">
<connects>
<connect gate="G$1" pin="1" pad="A2"/>
<connect gate="G$1" pin="2" pad="B2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-11966" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH_REED2" package="REED_SWITCH_PLASTIC">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SIDE_EZ" package="TACTILE-PTH-SIDEEZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-3" package="TACTILE_SWITCH_SMD-3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD-12MM" package="TACTILE-SMD-12MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_EZ" package="TACTILE-PTH-EZ">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD" package="TACTILE-SWITCH-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SWCH-08247" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD-REDUNDANT" package="TACTILE-SWITCH-SMD">
<connects>
<connect gate="G$1" pin="1" pad="1 2"/>
<connect gate="G$1" pin="2" pad="3 4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TACTILE-SWITCH-SMD-RIGHT-ANGLE" package="TACTILE_SWITCH-SMD-RIGHT-ANGLE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="COMP-12265" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-AnalogIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of analog ICs- DACs, ADCs, video chips, op-amps, and others.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt;Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SO08">
<description>&lt;b&gt;Small Outline Package&lt;/b&gt; Fits JEDEC packages (narrow SOIC-8)</description>
<circle x="-1.8034" y="-0.9906" radius="0.1436" width="0.2032" layer="21"/>
<wire x1="-2.362" y1="-1.803" x2="2.362" y2="-1.803" width="0.1524" layer="51"/>
<wire x1="2.362" y1="-1.803" x2="2.362" y2="1.803" width="0.1524" layer="21"/>
<wire x1="2.362" y1="1.803" x2="-2.362" y2="1.803" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="1.803" x2="-2.362" y2="-1.803" width="0.1524" layer="21"/>
<rectangle x1="-2.0828" y1="-2.8702" x2="-1.7272" y2="-1.8542" layer="51"/>
<rectangle x1="-0.8128" y1="-2.8702" x2="-0.4572" y2="-1.8542" layer="51"/>
<rectangle x1="0.4572" y1="-2.8702" x2="0.8128" y2="-1.8542" layer="51"/>
<rectangle x1="1.7272" y1="-2.8702" x2="2.0828" y2="-1.8542" layer="51"/>
<rectangle x1="-2.0828" y1="1.8542" x2="-1.7272" y2="2.8702" layer="51"/>
<rectangle x1="-0.8128" y1="1.8542" x2="-0.4572" y2="2.8702" layer="51"/>
<rectangle x1="0.4572" y1="1.8542" x2="0.8128" y2="2.8702" layer="51"/>
<rectangle x1="1.7272" y1="1.8542" x2="2.0828" y2="2.8702" layer="51"/>
<smd name="1" x="-1.905" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="2" x="-0.635" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="3" x="0.635" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="4" x="1.905" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="5" x="1.905" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="6" x="0.635" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="7" x="-0.635" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="8" x="-1.905" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<text x="-1.27" y="-0.635" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-1.27" y="0" size="0.4064" layer="25">&gt;NAME</text>
</package>
<package name="DIL-08">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="5.08" y1="2.921" x2="-5.08" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="-5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="-5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.016" x2="-5.08" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-5.334" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-3.556" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MCP41XXX">
<wire x1="-5.08" y1="25.4" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="7.62" y2="25.4" width="0.254" layer="94"/>
<wire x1="7.62" y1="25.4" x2="-5.08" y2="25.4" width="0.254" layer="94"/>
<pin name="VCC" x="-10.16" y="20.32" length="middle"/>
<pin name="CS" x="-10.16" y="15.24" length="middle"/>
<pin name="SCK" x="-10.16" y="12.7" length="middle"/>
<pin name="DI" x="-10.16" y="10.16" length="middle"/>
<pin name="A" x="-10.16" y="5.08" length="middle"/>
<pin name="W" x="-10.16" y="2.54" length="middle"/>
<pin name="B" x="-10.16" y="0" length="middle"/>
<pin name="GND" x="-10.16" y="-5.08" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MCP41XXX" prefix="U">
<description>SPI controlled single digital potentiometer by Microchip&lt;br /&gt;
&lt;br /&gt;
PID: COM-10613</description>
<gates>
<gate name="G$1" symbol="MCP41XXX" x="-2.54" y="-7.62"/>
</gates>
<devices>
<device name="" package="SO08">
<connects>
<connect gate="G$1" pin="A" pad="5"/>
<connect gate="G$1" pin="B" pad="7"/>
<connect gate="G$1" pin="CS" pad="1"/>
<connect gate="G$1" pin="DI" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="SCK" pad="2"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="W" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="DIL" package="DIL-08">
<connects>
<connect gate="G$1" pin="A" pad="5"/>
<connect gate="G$1" pin="B" pad="7"/>
<connect gate="G$1" pin="CS" pad="1"/>
<connect gate="G$1" pin="DI" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="SCK" pad="2"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="W" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Aesthetics">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find non-functional items- supply symbols, logos, notations, frame blocks, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="GND-ISO">
<description>Isolated ground</description>
<pin name="GND-ISO" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
<wire x1="-2.032" y1="0" x2="2.032" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-0.762" x2="1.27" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-1.524" x2="0.508" y2="-1.524" width="0.254" layer="94"/>
<text x="2.54" y="0" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="1.27" y1="2.032" x2="1.27" y2="0.508" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND-ISO" prefix="GND-ISO">
<description>Isolated ground</description>
<gates>
<gate name="G$1" symbol="GND-ISO" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="AXIAL-0.3">
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.3EZ">
<description>This is the "EZ" version of the standard .3" spaced resistor package.&lt;br&gt;
It has a reduced top mask to make it harder to install upside-down.</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="-3.81" y="0" radius="0.508" width="0" layer="29"/>
<circle x="3.81" y="0" radius="0.523634375" width="0" layer="29"/>
<circle x="-3.81" y="0" radius="1.02390625" width="0" layer="30"/>
<circle x="3.81" y="0" radius="1.04726875" width="0" layer="30"/>
</package>
<package name="AXIAL-0.1">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.1EZ">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="0" y="0" radius="1.016" width="0" layer="30"/>
<circle x="2.54" y="0" radius="1.016" width="0" layer="30"/>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.4572" width="0" layer="29"/>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="10OHM-1/4W-5%(PTH)" prefix="R" uservalue="yes">
<description>RES-10698</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-10698" constant="no"/>
<attribute name="VALUE" value="10" constant="no"/>
</technology>
</technologies>
</device>
<device name="HORIZ-KIT" package="AXIAL-0.3EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-10698" constant="no"/>
<attribute name="VALUE" value="10" constant="no"/>
</technology>
</technologies>
</device>
<device name="VERT" package="AXIAL-0.1">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-10698" constant="no"/>
<attribute name="VALUE" value="10" constant="no"/>
</technology>
</technologies>
</device>
<device name="VERT-KIT" package="AXIAL-0.1EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-10698" constant="no"/>
<attribute name="VALUE" value="10" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Boards">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find boards and modules: Arduino footprints, breadboards, non-RF modules, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="ARDUINO_MEGA_SHIELD">
<wire x1="-22.86" y1="30.48" x2="52.07" y2="30.48" width="0.2032" layer="51"/>
<wire x1="52.07" y1="30.48" x2="54.61" y2="27.94" width="0.2032" layer="51"/>
<wire x1="54.61" y1="17.78" x2="57.15" y2="15.24" width="0.2032" layer="51"/>
<wire x1="57.15" y1="15.24" x2="57.15" y2="-19.05" width="0.2032" layer="51"/>
<wire x1="57.15" y1="-19.05" x2="54.61" y2="-21.59" width="0.2032" layer="51"/>
<wire x1="54.61" y1="-21.59" x2="54.61" y2="-22.86" width="0.2032" layer="51"/>
<wire x1="54.61" y1="-22.86" x2="-22.86" y2="-22.86" width="0.2032" layer="51"/>
<wire x1="-22.86" y1="-22.86" x2="-22.86" y2="30.48" width="0.2032" layer="51"/>
<wire x1="54.61" y1="27.94" x2="54.61" y2="17.78" width="0.2032" layer="51"/>
<wire x1="43.815" y1="-19.05" x2="45.085" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="45.085" y1="-19.05" x2="45.72" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="45.72" y1="-20.955" x2="45.085" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="40.64" y1="-19.685" x2="41.275" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="41.275" y1="-19.05" x2="42.545" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="42.545" y1="-19.05" x2="43.18" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="43.18" y1="-20.955" x2="42.545" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="42.545" y1="-21.59" x2="41.275" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="41.275" y1="-21.59" x2="40.64" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="43.815" y1="-19.05" x2="43.18" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="43.18" y1="-20.955" x2="43.815" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="45.085" y1="-21.59" x2="43.815" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="36.195" y1="-19.05" x2="37.465" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="37.465" y1="-19.05" x2="38.1" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="38.1" y1="-20.955" x2="37.465" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="38.1" y1="-19.685" x2="38.735" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="38.735" y1="-19.05" x2="40.005" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="40.005" y1="-19.05" x2="40.64" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="40.64" y1="-20.955" x2="40.005" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="40.005" y1="-21.59" x2="38.735" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="38.735" y1="-21.59" x2="38.1" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="33.02" y1="-19.685" x2="33.655" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="33.655" y1="-19.05" x2="34.925" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="34.925" y1="-19.05" x2="35.56" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="35.56" y1="-20.955" x2="34.925" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="34.925" y1="-21.59" x2="33.655" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="33.655" y1="-21.59" x2="33.02" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="36.195" y1="-19.05" x2="35.56" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="35.56" y1="-20.955" x2="36.195" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="37.465" y1="-21.59" x2="36.195" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="28.575" y1="-19.05" x2="29.845" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="29.845" y1="-19.05" x2="30.48" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="30.48" y1="-20.955" x2="29.845" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="30.48" y1="-19.685" x2="31.115" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="31.115" y1="-19.05" x2="32.385" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="32.385" y1="-19.05" x2="33.02" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="33.02" y1="-20.955" x2="32.385" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="32.385" y1="-21.59" x2="31.115" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="31.115" y1="-21.59" x2="30.48" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="27.94" y1="-19.685" x2="27.94" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="28.575" y1="-19.05" x2="27.94" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="27.94" y1="-20.955" x2="28.575" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="29.845" y1="-21.59" x2="28.575" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="46.355" y1="-19.05" x2="47.625" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="47.625" y1="-19.05" x2="48.26" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="48.26" y1="-19.685" x2="48.26" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="48.26" y1="-20.955" x2="47.625" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="46.355" y1="-19.05" x2="45.72" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="45.72" y1="-20.955" x2="46.355" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="47.625" y1="-21.59" x2="46.355" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="38.735" y1="29.21" x2="40.005" y2="29.21" width="0.2032" layer="21"/>
<wire x1="40.005" y1="29.21" x2="40.64" y2="28.575" width="0.2032" layer="21"/>
<wire x1="40.64" y1="27.305" x2="40.005" y2="26.67" width="0.2032" layer="21"/>
<wire x1="35.56" y1="28.575" x2="36.195" y2="29.21" width="0.2032" layer="21"/>
<wire x1="36.195" y1="29.21" x2="37.465" y2="29.21" width="0.2032" layer="21"/>
<wire x1="37.465" y1="29.21" x2="38.1" y2="28.575" width="0.2032" layer="21"/>
<wire x1="38.1" y1="27.305" x2="37.465" y2="26.67" width="0.2032" layer="21"/>
<wire x1="37.465" y1="26.67" x2="36.195" y2="26.67" width="0.2032" layer="21"/>
<wire x1="36.195" y1="26.67" x2="35.56" y2="27.305" width="0.2032" layer="21"/>
<wire x1="38.735" y1="29.21" x2="38.1" y2="28.575" width="0.2032" layer="21"/>
<wire x1="38.1" y1="27.305" x2="38.735" y2="26.67" width="0.2032" layer="21"/>
<wire x1="40.005" y1="26.67" x2="38.735" y2="26.67" width="0.2032" layer="21"/>
<wire x1="31.115" y1="29.21" x2="32.385" y2="29.21" width="0.2032" layer="21"/>
<wire x1="32.385" y1="29.21" x2="33.02" y2="28.575" width="0.2032" layer="21"/>
<wire x1="33.02" y1="27.305" x2="32.385" y2="26.67" width="0.2032" layer="21"/>
<wire x1="33.02" y1="28.575" x2="33.655" y2="29.21" width="0.2032" layer="21"/>
<wire x1="33.655" y1="29.21" x2="34.925" y2="29.21" width="0.2032" layer="21"/>
<wire x1="34.925" y1="29.21" x2="35.56" y2="28.575" width="0.2032" layer="21"/>
<wire x1="35.56" y1="27.305" x2="34.925" y2="26.67" width="0.2032" layer="21"/>
<wire x1="34.925" y1="26.67" x2="33.655" y2="26.67" width="0.2032" layer="21"/>
<wire x1="33.655" y1="26.67" x2="33.02" y2="27.305" width="0.2032" layer="21"/>
<wire x1="27.94" y1="28.575" x2="28.575" y2="29.21" width="0.2032" layer="21"/>
<wire x1="28.575" y1="29.21" x2="29.845" y2="29.21" width="0.2032" layer="21"/>
<wire x1="29.845" y1="29.21" x2="30.48" y2="28.575" width="0.2032" layer="21"/>
<wire x1="30.48" y1="27.305" x2="29.845" y2="26.67" width="0.2032" layer="21"/>
<wire x1="29.845" y1="26.67" x2="28.575" y2="26.67" width="0.2032" layer="21"/>
<wire x1="28.575" y1="26.67" x2="27.94" y2="27.305" width="0.2032" layer="21"/>
<wire x1="31.115" y1="29.21" x2="30.48" y2="28.575" width="0.2032" layer="21"/>
<wire x1="30.48" y1="27.305" x2="31.115" y2="26.67" width="0.2032" layer="21"/>
<wire x1="32.385" y1="26.67" x2="31.115" y2="26.67" width="0.2032" layer="21"/>
<wire x1="23.495" y1="29.21" x2="24.765" y2="29.21" width="0.2032" layer="21"/>
<wire x1="24.765" y1="29.21" x2="25.4" y2="28.575" width="0.2032" layer="21"/>
<wire x1="25.4" y1="27.305" x2="24.765" y2="26.67" width="0.2032" layer="21"/>
<wire x1="25.4" y1="28.575" x2="26.035" y2="29.21" width="0.2032" layer="21"/>
<wire x1="26.035" y1="29.21" x2="27.305" y2="29.21" width="0.2032" layer="21"/>
<wire x1="27.305" y1="29.21" x2="27.94" y2="28.575" width="0.2032" layer="21"/>
<wire x1="27.94" y1="27.305" x2="27.305" y2="26.67" width="0.2032" layer="21"/>
<wire x1="27.305" y1="26.67" x2="26.035" y2="26.67" width="0.2032" layer="21"/>
<wire x1="26.035" y1="26.67" x2="25.4" y2="27.305" width="0.2032" layer="21"/>
<wire x1="22.86" y1="28.575" x2="22.86" y2="27.305" width="0.2032" layer="21"/>
<wire x1="23.495" y1="29.21" x2="22.86" y2="28.575" width="0.2032" layer="21"/>
<wire x1="22.86" y1="27.305" x2="23.495" y2="26.67" width="0.2032" layer="21"/>
<wire x1="24.765" y1="26.67" x2="23.495" y2="26.67" width="0.2032" layer="21"/>
<wire x1="41.275" y1="29.21" x2="42.545" y2="29.21" width="0.2032" layer="21"/>
<wire x1="42.545" y1="29.21" x2="43.18" y2="28.575" width="0.2032" layer="21"/>
<wire x1="43.18" y1="28.575" x2="43.18" y2="27.305" width="0.2032" layer="21"/>
<wire x1="43.18" y1="27.305" x2="42.545" y2="26.67" width="0.2032" layer="21"/>
<wire x1="41.275" y1="29.21" x2="40.64" y2="28.575" width="0.2032" layer="21"/>
<wire x1="40.64" y1="27.305" x2="41.275" y2="26.67" width="0.2032" layer="21"/>
<wire x1="42.545" y1="26.67" x2="41.275" y2="26.67" width="0.2032" layer="21"/>
<wire x1="20.955" y1="-19.05" x2="22.225" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="22.225" y1="-19.05" x2="22.86" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="22.86" y1="-20.955" x2="22.225" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="17.78" y1="-19.685" x2="18.415" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="18.415" y1="-19.05" x2="19.685" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="19.685" y1="-19.05" x2="20.32" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="20.32" y1="-20.955" x2="19.685" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="19.685" y1="-21.59" x2="18.415" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="18.415" y1="-21.59" x2="17.78" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="20.955" y1="-19.05" x2="20.32" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="20.32" y1="-20.955" x2="20.955" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="22.225" y1="-21.59" x2="20.955" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="13.335" y1="-19.05" x2="14.605" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="14.605" y1="-19.05" x2="15.24" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="15.24" y1="-20.955" x2="14.605" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="15.24" y1="-19.685" x2="15.875" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="15.875" y1="-19.05" x2="17.145" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="17.145" y1="-19.05" x2="17.78" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="17.78" y1="-20.955" x2="17.145" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="17.145" y1="-21.59" x2="15.875" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="15.875" y1="-21.59" x2="15.24" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="10.16" y1="-19.685" x2="10.795" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="10.795" y1="-19.05" x2="12.065" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="12.065" y1="-19.05" x2="12.7" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="12.7" y1="-20.955" x2="12.065" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="12.065" y1="-21.59" x2="10.795" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="10.795" y1="-21.59" x2="10.16" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="13.335" y1="-19.05" x2="12.7" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="12.7" y1="-20.955" x2="13.335" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="14.605" y1="-21.59" x2="13.335" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-19.05" x2="6.985" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="6.985" y1="-19.05" x2="7.62" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="7.62" y1="-20.955" x2="6.985" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="7.62" y1="-19.685" x2="8.255" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-19.05" x2="9.525" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="9.525" y1="-19.05" x2="10.16" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="10.16" y1="-20.955" x2="9.525" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="9.525" y1="-21.59" x2="8.255" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-21.59" x2="7.62" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="5.08" y1="-19.685" x2="5.08" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-19.05" x2="5.08" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="5.08" y1="-20.955" x2="5.715" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="6.985" y1="-21.59" x2="5.715" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="23.495" y1="-19.05" x2="24.765" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="24.765" y1="-19.05" x2="25.4" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="25.4" y1="-19.685" x2="25.4" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="25.4" y1="-20.955" x2="24.765" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="23.495" y1="-19.05" x2="22.86" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="22.86" y1="-20.955" x2="23.495" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="24.765" y1="-21.59" x2="23.495" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="15.875" y1="29.21" x2="17.145" y2="29.21" width="0.2032" layer="21"/>
<wire x1="17.145" y1="29.21" x2="17.78" y2="28.575" width="0.2032" layer="21"/>
<wire x1="17.78" y1="27.305" x2="17.145" y2="26.67" width="0.2032" layer="21"/>
<wire x1="12.7" y1="28.575" x2="13.335" y2="29.21" width="0.2032" layer="21"/>
<wire x1="13.335" y1="29.21" x2="14.605" y2="29.21" width="0.2032" layer="21"/>
<wire x1="14.605" y1="29.21" x2="15.24" y2="28.575" width="0.2032" layer="21"/>
<wire x1="15.24" y1="27.305" x2="14.605" y2="26.67" width="0.2032" layer="21"/>
<wire x1="14.605" y1="26.67" x2="13.335" y2="26.67" width="0.2032" layer="21"/>
<wire x1="13.335" y1="26.67" x2="12.7" y2="27.305" width="0.2032" layer="21"/>
<wire x1="15.875" y1="29.21" x2="15.24" y2="28.575" width="0.2032" layer="21"/>
<wire x1="15.24" y1="27.305" x2="15.875" y2="26.67" width="0.2032" layer="21"/>
<wire x1="17.145" y1="26.67" x2="15.875" y2="26.67" width="0.2032" layer="21"/>
<wire x1="8.255" y1="29.21" x2="9.525" y2="29.21" width="0.2032" layer="21"/>
<wire x1="9.525" y1="29.21" x2="10.16" y2="28.575" width="0.2032" layer="21"/>
<wire x1="10.16" y1="27.305" x2="9.525" y2="26.67" width="0.2032" layer="21"/>
<wire x1="10.16" y1="28.575" x2="10.795" y2="29.21" width="0.2032" layer="21"/>
<wire x1="10.795" y1="29.21" x2="12.065" y2="29.21" width="0.2032" layer="21"/>
<wire x1="12.065" y1="29.21" x2="12.7" y2="28.575" width="0.2032" layer="21"/>
<wire x1="12.7" y1="27.305" x2="12.065" y2="26.67" width="0.2032" layer="21"/>
<wire x1="12.065" y1="26.67" x2="10.795" y2="26.67" width="0.2032" layer="21"/>
<wire x1="10.795" y1="26.67" x2="10.16" y2="27.305" width="0.2032" layer="21"/>
<wire x1="5.08" y1="28.575" x2="5.715" y2="29.21" width="0.2032" layer="21"/>
<wire x1="5.715" y1="29.21" x2="6.985" y2="29.21" width="0.2032" layer="21"/>
<wire x1="6.985" y1="29.21" x2="7.62" y2="28.575" width="0.2032" layer="21"/>
<wire x1="7.62" y1="27.305" x2="6.985" y2="26.67" width="0.2032" layer="21"/>
<wire x1="6.985" y1="26.67" x2="5.715" y2="26.67" width="0.2032" layer="21"/>
<wire x1="5.715" y1="26.67" x2="5.08" y2="27.305" width="0.2032" layer="21"/>
<wire x1="8.255" y1="29.21" x2="7.62" y2="28.575" width="0.2032" layer="21"/>
<wire x1="7.62" y1="27.305" x2="8.255" y2="26.67" width="0.2032" layer="21"/>
<wire x1="9.525" y1="26.67" x2="8.255" y2="26.67" width="0.2032" layer="21"/>
<wire x1="0.635" y1="29.21" x2="1.905" y2="29.21" width="0.2032" layer="21"/>
<wire x1="1.905" y1="29.21" x2="2.54" y2="28.575" width="0.2032" layer="21"/>
<wire x1="2.54" y1="27.305" x2="1.905" y2="26.67" width="0.2032" layer="21"/>
<wire x1="2.54" y1="28.575" x2="3.175" y2="29.21" width="0.2032" layer="21"/>
<wire x1="3.175" y1="29.21" x2="4.445" y2="29.21" width="0.2032" layer="21"/>
<wire x1="4.445" y1="29.21" x2="5.08" y2="28.575" width="0.2032" layer="21"/>
<wire x1="5.08" y1="27.305" x2="4.445" y2="26.67" width="0.2032" layer="21"/>
<wire x1="4.445" y1="26.67" x2="3.175" y2="26.67" width="0.2032" layer="21"/>
<wire x1="3.175" y1="26.67" x2="2.54" y2="27.305" width="0.2032" layer="21"/>
<wire x1="0" y1="28.575" x2="0" y2="27.305" width="0.2032" layer="21"/>
<wire x1="0.635" y1="29.21" x2="0" y2="28.575" width="0.2032" layer="21"/>
<wire x1="0" y1="27.305" x2="0.635" y2="26.67" width="0.2032" layer="21"/>
<wire x1="1.905" y1="26.67" x2="0.635" y2="26.67" width="0.2032" layer="21"/>
<wire x1="18.415" y1="29.21" x2="19.685" y2="29.21" width="0.2032" layer="21"/>
<wire x1="19.685" y1="29.21" x2="20.32" y2="28.575" width="0.2032" layer="21"/>
<wire x1="20.32" y1="28.575" x2="20.32" y2="27.305" width="0.2032" layer="21"/>
<wire x1="20.32" y1="27.305" x2="19.685" y2="26.67" width="0.2032" layer="21"/>
<wire x1="18.415" y1="29.21" x2="17.78" y2="28.575" width="0.2032" layer="21"/>
<wire x1="17.78" y1="27.305" x2="18.415" y2="26.67" width="0.2032" layer="21"/>
<wire x1="19.685" y1="26.67" x2="18.415" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-5.969" y1="29.21" x2="-4.699" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-4.699" y1="29.21" x2="-4.064" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-4.064" y1="27.305" x2="-4.699" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-9.144" y1="28.575" x2="-8.509" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-8.509" y1="29.21" x2="-7.239" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-7.239" y1="29.21" x2="-6.604" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-6.604" y1="27.305" x2="-7.239" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-7.239" y1="26.67" x2="-8.509" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-8.509" y1="26.67" x2="-9.144" y2="27.305" width="0.2032" layer="21"/>
<wire x1="-5.969" y1="29.21" x2="-6.604" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-6.604" y1="27.305" x2="-5.969" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-4.699" y1="26.67" x2="-5.969" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-13.589" y1="29.21" x2="-12.319" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-12.319" y1="29.21" x2="-11.684" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-11.684" y1="27.305" x2="-12.319" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-11.684" y1="28.575" x2="-11.049" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-11.049" y1="29.21" x2="-9.779" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-9.779" y1="29.21" x2="-9.144" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-9.144" y1="27.305" x2="-9.779" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-9.779" y1="26.67" x2="-11.049" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-11.049" y1="26.67" x2="-11.684" y2="27.305" width="0.2032" layer="21"/>
<wire x1="-16.764" y1="28.575" x2="-16.129" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-16.129" y1="29.21" x2="-14.859" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-14.859" y1="29.21" x2="-14.224" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-14.224" y1="27.305" x2="-14.859" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-14.859" y1="26.67" x2="-16.129" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-16.129" y1="26.67" x2="-16.764" y2="27.305" width="0.2032" layer="21"/>
<wire x1="-13.589" y1="29.21" x2="-14.224" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-14.224" y1="27.305" x2="-13.589" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-12.319" y1="26.67" x2="-13.589" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-21.209" y1="29.21" x2="-19.939" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-19.939" y1="29.21" x2="-19.304" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-19.304" y1="27.305" x2="-19.939" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-19.304" y1="28.575" x2="-18.669" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-18.669" y1="29.21" x2="-17.399" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-17.399" y1="29.21" x2="-16.764" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-16.764" y1="27.305" x2="-17.399" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-17.399" y1="26.67" x2="-18.669" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-18.669" y1="26.67" x2="-19.304" y2="27.305" width="0.2032" layer="21"/>
<wire x1="-21.844" y1="28.575" x2="-21.844" y2="27.305" width="0.2032" layer="21"/>
<wire x1="-21.209" y1="29.21" x2="-21.844" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-21.844" y1="27.305" x2="-21.209" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-19.939" y1="26.67" x2="-21.209" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-3.429" y1="29.21" x2="-2.159" y2="29.21" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="29.21" x2="-1.524" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-1.524" y1="28.575" x2="-1.524" y2="27.305" width="0.2032" layer="21"/>
<wire x1="-1.524" y1="27.305" x2="-2.159" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-3.429" y1="29.21" x2="-4.064" y2="28.575" width="0.2032" layer="21"/>
<wire x1="-4.064" y1="27.305" x2="-3.429" y2="26.67" width="0.2032" layer="21"/>
<wire x1="-2.159" y1="26.67" x2="-3.429" y2="26.67" width="0.2032" layer="21"/>
<wire x1="52.705" y1="6.35" x2="53.34" y2="6.985" width="0.1524" layer="21"/>
<wire x1="53.34" y1="8.255" x2="52.705" y2="8.89" width="0.1524" layer="21"/>
<wire x1="52.705" y1="8.89" x2="53.34" y2="9.525" width="0.1524" layer="21"/>
<wire x1="53.34" y1="10.795" x2="52.705" y2="11.43" width="0.1524" layer="21"/>
<wire x1="52.705" y1="11.43" x2="53.34" y2="12.065" width="0.1524" layer="21"/>
<wire x1="53.34" y1="13.335" x2="52.705" y2="13.97" width="0.1524" layer="21"/>
<wire x1="52.705" y1="13.97" x2="53.34" y2="14.605" width="0.1524" layer="21"/>
<wire x1="53.34" y1="15.875" x2="52.705" y2="16.51" width="0.1524" layer="21"/>
<wire x1="52.705" y1="16.51" x2="53.34" y2="17.145" width="0.1524" layer="21"/>
<wire x1="53.34" y1="18.415" x2="52.705" y2="19.05" width="0.1524" layer="21"/>
<wire x1="52.705" y1="19.05" x2="53.34" y2="19.685" width="0.1524" layer="21"/>
<wire x1="53.34" y1="20.955" x2="52.705" y2="21.59" width="0.1524" layer="21"/>
<wire x1="48.895" y1="6.35" x2="48.26" y2="6.985" width="0.1524" layer="21"/>
<wire x1="48.26" y1="6.985" x2="48.26" y2="8.255" width="0.1524" layer="21"/>
<wire x1="48.26" y1="8.255" x2="48.895" y2="8.89" width="0.1524" layer="21"/>
<wire x1="48.895" y1="8.89" x2="48.26" y2="9.525" width="0.1524" layer="21"/>
<wire x1="48.26" y1="9.525" x2="48.26" y2="10.795" width="0.1524" layer="21"/>
<wire x1="48.26" y1="10.795" x2="48.895" y2="11.43" width="0.1524" layer="21"/>
<wire x1="48.895" y1="11.43" x2="48.26" y2="12.065" width="0.1524" layer="21"/>
<wire x1="48.26" y1="12.065" x2="48.26" y2="13.335" width="0.1524" layer="21"/>
<wire x1="48.26" y1="13.335" x2="48.895" y2="13.97" width="0.1524" layer="21"/>
<wire x1="48.895" y1="13.97" x2="48.26" y2="14.605" width="0.1524" layer="21"/>
<wire x1="48.26" y1="14.605" x2="48.26" y2="15.875" width="0.1524" layer="21"/>
<wire x1="48.26" y1="15.875" x2="48.895" y2="16.51" width="0.1524" layer="21"/>
<wire x1="48.895" y1="16.51" x2="48.26" y2="17.145" width="0.1524" layer="21"/>
<wire x1="48.26" y1="17.145" x2="48.26" y2="18.415" width="0.1524" layer="21"/>
<wire x1="48.26" y1="18.415" x2="48.895" y2="19.05" width="0.1524" layer="21"/>
<wire x1="48.895" y1="19.05" x2="48.26" y2="19.685" width="0.1524" layer="21"/>
<wire x1="48.26" y1="19.685" x2="48.26" y2="20.955" width="0.1524" layer="21"/>
<wire x1="48.26" y1="20.955" x2="48.895" y2="21.59" width="0.1524" layer="21"/>
<wire x1="48.895" y1="21.59" x2="48.26" y2="22.225" width="0.1524" layer="21"/>
<wire x1="48.26" y1="22.225" x2="48.26" y2="23.495" width="0.1524" layer="21"/>
<wire x1="48.26" y1="23.495" x2="48.895" y2="24.13" width="0.1524" layer="21"/>
<wire x1="48.895" y1="24.13" x2="48.26" y2="24.765" width="0.1524" layer="21"/>
<wire x1="48.26" y1="24.765" x2="48.26" y2="26.035" width="0.1524" layer="21"/>
<wire x1="48.26" y1="26.035" x2="48.895" y2="26.67" width="0.1524" layer="21"/>
<wire x1="52.705" y1="26.67" x2="53.34" y2="26.035" width="0.1524" layer="21"/>
<wire x1="52.705" y1="24.13" x2="53.34" y2="24.765" width="0.1524" layer="21"/>
<wire x1="52.705" y1="24.13" x2="53.34" y2="23.495" width="0.1524" layer="21"/>
<wire x1="52.705" y1="21.59" x2="53.34" y2="22.225" width="0.1524" layer="21"/>
<wire x1="48.895" y1="8.89" x2="52.705" y2="8.89" width="0.1524" layer="21"/>
<wire x1="48.895" y1="11.43" x2="52.705" y2="11.43" width="0.1524" layer="21"/>
<wire x1="48.895" y1="13.97" x2="52.705" y2="13.97" width="0.1524" layer="21"/>
<wire x1="48.895" y1="16.51" x2="52.705" y2="16.51" width="0.1524" layer="21"/>
<wire x1="48.895" y1="19.05" x2="52.705" y2="19.05" width="0.1524" layer="21"/>
<wire x1="48.895" y1="21.59" x2="52.705" y2="21.59" width="0.1524" layer="21"/>
<wire x1="48.895" y1="24.13" x2="52.705" y2="24.13" width="0.1524" layer="21"/>
<wire x1="53.34" y1="24.765" x2="53.34" y2="26.035" width="0.1524" layer="21"/>
<wire x1="53.34" y1="22.225" x2="53.34" y2="23.495" width="0.1524" layer="21"/>
<wire x1="53.34" y1="19.685" x2="53.34" y2="20.955" width="0.1524" layer="21"/>
<wire x1="53.34" y1="17.145" x2="53.34" y2="18.415" width="0.1524" layer="21"/>
<wire x1="53.34" y1="14.605" x2="53.34" y2="15.875" width="0.1524" layer="21"/>
<wire x1="53.34" y1="12.065" x2="53.34" y2="13.335" width="0.1524" layer="21"/>
<wire x1="53.34" y1="9.525" x2="53.34" y2="10.795" width="0.1524" layer="21"/>
<wire x1="53.34" y1="6.985" x2="53.34" y2="8.255" width="0.1524" layer="21"/>
<wire x1="52.705" y1="-13.97" x2="53.34" y2="-13.335" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-12.065" x2="52.705" y2="-11.43" width="0.1524" layer="21"/>
<wire x1="52.705" y1="-11.43" x2="53.34" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-9.525" x2="52.705" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="52.705" y1="-8.89" x2="53.34" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-6.985" x2="52.705" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="52.705" y1="-6.35" x2="53.34" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-4.445" x2="52.705" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="52.705" y1="-3.81" x2="53.34" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-1.905" x2="52.705" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="52.705" y1="-1.27" x2="53.34" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="53.34" y1="0.635" x2="52.705" y2="1.27" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-13.97" x2="48.26" y2="-13.335" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-13.335" x2="48.26" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-12.065" x2="48.895" y2="-11.43" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-11.43" x2="48.26" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-10.795" x2="48.26" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-9.525" x2="48.895" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-8.89" x2="48.26" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-8.255" x2="48.26" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-6.985" x2="48.895" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-6.35" x2="48.26" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-5.715" x2="48.26" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-4.445" x2="48.895" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-3.81" x2="48.26" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-3.175" x2="48.26" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-1.905" x2="48.895" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-1.27" x2="48.26" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="48.26" y1="-0.635" x2="48.26" y2="0.635" width="0.1524" layer="21"/>
<wire x1="48.26" y1="0.635" x2="48.895" y2="1.27" width="0.1524" layer="21"/>
<wire x1="48.895" y1="1.27" x2="48.26" y2="1.905" width="0.1524" layer="21"/>
<wire x1="48.26" y1="1.905" x2="48.26" y2="3.175" width="0.1524" layer="21"/>
<wire x1="48.26" y1="3.175" x2="48.895" y2="3.81" width="0.1524" layer="21"/>
<wire x1="48.895" y1="3.81" x2="48.26" y2="4.445" width="0.1524" layer="21"/>
<wire x1="48.26" y1="4.445" x2="48.26" y2="5.715" width="0.1524" layer="21"/>
<wire x1="48.26" y1="5.715" x2="48.895" y2="6.35" width="0.1524" layer="21"/>
<wire x1="52.705" y1="6.35" x2="53.34" y2="5.715" width="0.1524" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.34" y2="4.445" width="0.1524" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.34" y2="3.175" width="0.1524" layer="21"/>
<wire x1="52.705" y1="1.27" x2="53.34" y2="1.905" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-11.43" x2="52.705" y2="-11.43" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-8.89" x2="52.705" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-6.35" x2="52.705" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-3.81" x2="52.705" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="48.895" y1="-1.27" x2="52.705" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="48.895" y1="1.27" x2="52.705" y2="1.27" width="0.1524" layer="21"/>
<wire x1="48.895" y1="3.81" x2="52.705" y2="3.81" width="0.1524" layer="21"/>
<wire x1="48.895" y1="6.35" x2="52.705" y2="6.35" width="0.1524" layer="21"/>
<wire x1="53.34" y1="4.445" x2="53.34" y2="5.715" width="0.1524" layer="21"/>
<wire x1="53.34" y1="1.905" x2="53.34" y2="3.175" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-0.635" x2="53.34" y2="0.635" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-3.175" x2="53.34" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-5.715" x2="53.34" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-8.255" x2="53.34" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-10.795" x2="53.34" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="53.34" y1="-13.335" x2="53.34" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="52.705" y1="-13.97" x2="53.34" y2="-14.605" width="0.2032" layer="21"/>
<wire x1="53.34" y1="-15.875" x2="52.705" y2="-16.51" width="0.2032" layer="21"/>
<wire x1="48.26" y1="-14.605" x2="48.26" y2="-15.875" width="0.2032" layer="21"/>
<wire x1="48.895" y1="-13.97" x2="48.26" y2="-14.605" width="0.2032" layer="21"/>
<wire x1="48.26" y1="-15.875" x2="48.895" y2="-16.51" width="0.2032" layer="21"/>
<wire x1="53.34" y1="-14.605" x2="53.34" y2="-15.875" width="0.2032" layer="21"/>
<wire x1="48.895" y1="-13.97" x2="52.705" y2="-13.97" width="0.2032" layer="21"/>
<wire x1="52.705" y1="-16.51" x2="48.895" y2="-16.51" width="0.2032" layer="21"/>
<wire x1="52.705" y1="29.21" x2="53.34" y2="28.575" width="0.2032" layer="21"/>
<wire x1="53.34" y1="27.305" x2="52.705" y2="26.67" width="0.2032" layer="21"/>
<wire x1="48.26" y1="28.575" x2="48.26" y2="27.305" width="0.2032" layer="21"/>
<wire x1="48.895" y1="29.21" x2="48.26" y2="28.575" width="0.2032" layer="21"/>
<wire x1="48.26" y1="27.305" x2="48.895" y2="26.67" width="0.2032" layer="21"/>
<wire x1="53.34" y1="28.575" x2="53.34" y2="27.305" width="0.2032" layer="21"/>
<wire x1="48.895" y1="29.21" x2="52.705" y2="29.21" width="0.2032" layer="21"/>
<wire x1="52.705" y1="26.67" x2="48.895" y2="26.67" width="0.2032" layer="21"/>
<wire x1="49.53" y1="29.2862" x2="49.53" y2="29.9212" width="0.3048" layer="21"/>
<wire x1="49.53" y1="29.9212" x2="52.07" y2="29.9212" width="0.3048" layer="21"/>
<wire x1="52.07" y1="29.9212" x2="52.07" y2="29.2608" width="0.3048" layer="21"/>
<wire x1="49.53" y1="-16.5862" x2="49.53" y2="-17.3228" width="0.3048" layer="21"/>
<wire x1="49.53" y1="-17.3228" x2="52.07" y2="-17.3228" width="0.3048" layer="21"/>
<wire x1="52.07" y1="-17.3228" x2="52.07" y2="-16.5608" width="0.3048" layer="21"/>
<wire x1="53.34" y1="-16.51" x2="56.3372" y2="-16.51" width="0.3048" layer="21"/>
<wire x1="0" y1="-19.685" x2="0.635" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-19.05" x2="1.905" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-19.05" x2="2.54" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-20.955" x2="1.905" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-21.59" x2="0.635" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-21.59" x2="0" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="-4.445" y1="-19.05" x2="-3.175" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="-3.175" y1="-19.05" x2="-2.54" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-20.955" x2="-3.175" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-19.685" x2="-1.905" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="-19.05" x2="-0.635" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-19.05" x2="0" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="0" y1="-20.955" x2="-0.635" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-21.59" x2="-1.905" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="-21.59" x2="-2.54" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="-7.62" y1="-19.685" x2="-6.985" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="-6.985" y1="-19.05" x2="-5.715" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="-5.715" y1="-19.05" x2="-5.08" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="-20.955" x2="-5.715" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-5.715" y1="-21.59" x2="-6.985" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-6.985" y1="-21.59" x2="-7.62" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="-4.445" y1="-19.05" x2="-5.08" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="-5.08" y1="-20.955" x2="-4.445" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-3.175" y1="-21.59" x2="-4.445" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-12.065" y1="-19.05" x2="-10.795" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="-10.795" y1="-19.05" x2="-10.16" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="-20.955" x2="-10.795" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-10.16" y1="-19.685" x2="-9.525" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="-9.525" y1="-19.05" x2="-8.255" y2="-19.05" width="0.2032" layer="21"/>
<wire x1="-8.255" y1="-19.05" x2="-7.62" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="-7.62" y1="-20.955" x2="-8.255" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-8.255" y1="-21.59" x2="-9.525" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-9.525" y1="-21.59" x2="-10.16" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="-12.7" y1="-19.685" x2="-12.7" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="-12.065" y1="-19.05" x2="-12.7" y2="-19.685" width="0.2032" layer="21"/>
<wire x1="-12.7" y1="-20.955" x2="-12.065" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="-10.795" y1="-21.59" x2="-12.065" y2="-21.59" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-19.685" x2="2.54" y2="-20.955" width="0.2032" layer="21"/>
<wire x1="48.768" y1="29.9212" x2="49.53" y2="29.9212" width="0.3048" layer="21"/>
<pad name="A9" x="31.75" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A10" x="34.29" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A11" x="36.83" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A12" x="39.37" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A13" x="41.91" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A14" x="44.45" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A15" x="46.99" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A8" x="29.21" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="15" x="26.67" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="16" x="29.21" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="17" x="31.75" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="18" x="34.29" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="19" x="36.83" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="20" x="39.37" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="21" x="41.91" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="14" x="24.13" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A1" x="8.89" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="11.43" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="13.97" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="16.51" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="19.05" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A6" x="21.59" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A7" x="24.13" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="6.35" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="6" x="3.81" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="6.35" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="8.89" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="11.43" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="13.97" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="1" x="16.51" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="0" x="19.05" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="7" x="1.27" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@4" x="-18.034" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="13" x="-15.494" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="12" x="-12.954" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="11" x="-10.414" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="10" x="-7.874" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="9" x="-5.334" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="8" x="-2.794" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="-20.574" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="37" x="52.07" y="7.62" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="36" x="49.53" y="7.62" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="35" x="52.07" y="10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="34" x="49.53" y="10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="33" x="52.07" y="12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="32" x="49.53" y="12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="31" x="52.07" y="15.24" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="30" x="49.53" y="15.24" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="29" x="52.07" y="17.78" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="28" x="49.53" y="17.78" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="27" x="52.07" y="20.32" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="26" x="49.53" y="20.32" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="25" x="52.07" y="22.86" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="24" x="49.53" y="22.86" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="23" x="52.07" y="25.4" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="22" x="49.53" y="25.4" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="53" x="52.07" y="-12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="52" x="49.53" y="-12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="51" x="52.07" y="-10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="50" x="49.53" y="-10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="49" x="52.07" y="-7.62" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="48" x="49.53" y="-7.62" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="47" x="52.07" y="-5.08" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="46" x="49.53" y="-5.08" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="45" x="52.07" y="-2.54" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="44" x="49.53" y="-2.54" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="43" x="52.07" y="0" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="42" x="49.53" y="0" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="41" x="52.07" y="2.54" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="40" x="49.53" y="2.54" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="39" x="52.07" y="5.08" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="38" x="49.53" y="5.08" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="GND@2" x="49.53" y="-15.24" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@3" x="52.07" y="-15.24" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@1" x="49.53" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@2" x="52.07" y="27.94" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RESET" x="-11.43" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="-8.89" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@0" x="-6.35" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@0" x="-3.81" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@1" x="-1.27" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="1.27" y="-20.32" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="46.99" y="29.21" size="0.889" layer="21" font="vector" ratio="15">5V</text>
<rectangle x1="44.196" y1="-20.574" x2="44.704" y2="-20.066" layer="51"/>
<rectangle x1="41.656" y1="-20.574" x2="42.164" y2="-20.066" layer="51"/>
<rectangle x1="39.116" y1="-20.574" x2="39.624" y2="-20.066" layer="51"/>
<rectangle x1="36.576" y1="-20.574" x2="37.084" y2="-20.066" layer="51"/>
<rectangle x1="34.036" y1="-20.574" x2="34.544" y2="-20.066" layer="51"/>
<rectangle x1="31.496" y1="-20.574" x2="32.004" y2="-20.066" layer="51"/>
<rectangle x1="28.956" y1="-20.574" x2="29.464" y2="-20.066" layer="51"/>
<rectangle x1="46.736" y1="-20.574" x2="47.244" y2="-20.066" layer="51"/>
<rectangle x1="39.116" y1="27.686" x2="39.624" y2="28.194" layer="51"/>
<rectangle x1="36.576" y1="27.686" x2="37.084" y2="28.194" layer="51"/>
<rectangle x1="34.036" y1="27.686" x2="34.544" y2="28.194" layer="51"/>
<rectangle x1="31.496" y1="27.686" x2="32.004" y2="28.194" layer="51"/>
<rectangle x1="28.956" y1="27.686" x2="29.464" y2="28.194" layer="51"/>
<rectangle x1="26.416" y1="27.686" x2="26.924" y2="28.194" layer="51"/>
<rectangle x1="23.876" y1="27.686" x2="24.384" y2="28.194" layer="51"/>
<rectangle x1="41.656" y1="27.686" x2="42.164" y2="28.194" layer="51"/>
<rectangle x1="21.336" y1="-20.574" x2="21.844" y2="-20.066" layer="51"/>
<rectangle x1="18.796" y1="-20.574" x2="19.304" y2="-20.066" layer="51"/>
<rectangle x1="16.256" y1="-20.574" x2="16.764" y2="-20.066" layer="51"/>
<rectangle x1="13.716" y1="-20.574" x2="14.224" y2="-20.066" layer="51"/>
<rectangle x1="11.176" y1="-20.574" x2="11.684" y2="-20.066" layer="51"/>
<rectangle x1="8.636" y1="-20.574" x2="9.144" y2="-20.066" layer="51"/>
<rectangle x1="6.096" y1="-20.574" x2="6.604" y2="-20.066" layer="51"/>
<rectangle x1="23.876" y1="-20.574" x2="24.384" y2="-20.066" layer="51"/>
<rectangle x1="16.256" y1="27.686" x2="16.764" y2="28.194" layer="51"/>
<rectangle x1="13.716" y1="27.686" x2="14.224" y2="28.194" layer="51"/>
<rectangle x1="11.176" y1="27.686" x2="11.684" y2="28.194" layer="51"/>
<rectangle x1="8.636" y1="27.686" x2="9.144" y2="28.194" layer="51"/>
<rectangle x1="6.096" y1="27.686" x2="6.604" y2="28.194" layer="51"/>
<rectangle x1="3.556" y1="27.686" x2="4.064" y2="28.194" layer="51"/>
<rectangle x1="1.016" y1="27.686" x2="1.524" y2="28.194" layer="51"/>
<rectangle x1="18.796" y1="27.686" x2="19.304" y2="28.194" layer="51"/>
<rectangle x1="-5.588" y1="27.686" x2="-5.08" y2="28.194" layer="51"/>
<rectangle x1="-8.128" y1="27.686" x2="-7.62" y2="28.194" layer="51"/>
<rectangle x1="-10.668" y1="27.686" x2="-10.16" y2="28.194" layer="51"/>
<rectangle x1="-13.208" y1="27.686" x2="-12.7" y2="28.194" layer="51"/>
<rectangle x1="-15.748" y1="27.686" x2="-15.24" y2="28.194" layer="51"/>
<rectangle x1="-18.288" y1="27.686" x2="-17.78" y2="28.194" layer="51"/>
<rectangle x1="-20.828" y1="27.686" x2="-20.32" y2="28.194" layer="51"/>
<rectangle x1="-3.048" y1="27.686" x2="-2.54" y2="28.194" layer="51"/>
<rectangle x1="51.816" y1="7.366" x2="52.324" y2="7.874" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="7.366" x2="49.784" y2="7.874" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="9.906" x2="49.784" y2="10.414" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="9.906" x2="52.324" y2="10.414" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="12.446" x2="49.784" y2="12.954" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="12.446" x2="52.324" y2="12.954" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="14.986" x2="49.784" y2="15.494" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="17.526" x2="49.784" y2="18.034" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="20.066" x2="49.784" y2="20.574" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="14.986" x2="52.324" y2="15.494" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="17.526" x2="52.324" y2="18.034" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="20.066" x2="52.324" y2="20.574" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="22.606" x2="49.784" y2="23.114" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="22.606" x2="52.324" y2="23.114" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="25.146" x2="49.784" y2="25.654" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="25.146" x2="52.324" y2="25.654" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="-12.954" x2="52.324" y2="-12.446" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="-12.954" x2="49.784" y2="-12.446" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="-10.414" x2="49.784" y2="-9.906" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="-10.414" x2="52.324" y2="-9.906" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="-7.874" x2="49.784" y2="-7.366" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="-7.874" x2="52.324" y2="-7.366" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="-5.334" x2="49.784" y2="-4.826" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="-2.794" x2="49.784" y2="-2.286" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="-0.254" x2="49.784" y2="0.254" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="-5.334" x2="52.324" y2="-4.826" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="-2.794" x2="52.324" y2="-2.286" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="-0.254" x2="52.324" y2="0.254" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="2.286" x2="49.784" y2="2.794" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="2.286" x2="52.324" y2="2.794" layer="51" rot="R90"/>
<rectangle x1="49.276" y1="4.826" x2="49.784" y2="5.334" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="4.826" x2="52.324" y2="5.334" layer="51" rot="R90"/>
<rectangle x1="51.816" y1="-15.494" x2="52.324" y2="-14.986" layer="51"/>
<rectangle x1="49.276" y1="-15.494" x2="49.784" y2="-14.986" layer="51"/>
<rectangle x1="51.816" y1="27.686" x2="52.324" y2="28.194" layer="51"/>
<rectangle x1="49.276" y1="27.686" x2="49.784" y2="28.194" layer="51"/>
<rectangle x1="1.016" y1="-20.574" x2="1.524" y2="-20.066" layer="51"/>
<rectangle x1="-1.524" y1="-20.574" x2="-1.016" y2="-20.066" layer="51"/>
<rectangle x1="-4.064" y1="-20.574" x2="-3.556" y2="-20.066" layer="51"/>
<rectangle x1="-6.604" y1="-20.574" x2="-6.096" y2="-20.066" layer="51"/>
<rectangle x1="-9.144" y1="-20.574" x2="-8.636" y2="-20.066" layer="51"/>
<rectangle x1="-11.684" y1="-20.574" x2="-11.176" y2="-20.066" layer="51"/>
<hole x="45.72" y="27.94" drill="3.2"/>
<hole x="52.07" y="-20.32" drill="3.2"/>
</package>
</packages>
<symbols>
<symbol name="ARDUINO-MEGA_SHIELF">
<wire x1="-15.24" y1="-53.34" x2="15.24" y2="-53.34" width="0.254" layer="94"/>
<wire x1="15.24" y1="-53.34" x2="15.24" y2="53.34" width="0.254" layer="94"/>
<wire x1="15.24" y1="53.34" x2="-15.24" y2="53.34" width="0.254" layer="94"/>
<wire x1="-15.24" y1="53.34" x2="-15.24" y2="-53.34" width="0.254" layer="94"/>
<text x="-15.24" y="54.102" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-55.88" size="1.778" layer="96">&gt;VALUE</text>
<pin name="5V@0" x="-20.32" y="48.26" length="middle"/>
<pin name="RESET" x="-20.32" y="35.56" length="middle"/>
<pin name="5V@1" x="-20.32" y="45.72" length="middle"/>
<pin name="A0(RX0)" x="-20.32" y="33.02" length="middle"/>
<pin name="A1(TX0)" x="-20.32" y="30.48" length="middle"/>
<pin name="A2" x="-20.32" y="27.94" length="middle"/>
<pin name="A3" x="-20.32" y="25.4" length="middle"/>
<pin name="A4" x="-20.32" y="22.86" length="middle"/>
<pin name="A5" x="-20.32" y="20.32" length="middle"/>
<pin name="A6" x="-20.32" y="17.78" length="middle"/>
<pin name="A7" x="-20.32" y="15.24" length="middle"/>
<pin name="A8" x="-20.32" y="12.7" length="middle"/>
<pin name="A9" x="-20.32" y="10.16" length="middle"/>
<pin name="A10" x="-20.32" y="7.62" length="middle"/>
<pin name="A11" x="-20.32" y="5.08" length="middle"/>
<pin name="A12" x="-20.32" y="2.54" length="middle"/>
<pin name="A13" x="-20.32" y="0" length="middle"/>
<pin name="A14" x="-20.32" y="-2.54" length="middle"/>
<pin name="A15" x="-20.32" y="-5.08" length="middle"/>
<pin name="1(TX0)" x="-20.32" y="-10.16" length="middle"/>
<pin name="2" x="-20.32" y="-12.7" length="middle"/>
<pin name="3" x="-20.32" y="-15.24" length="middle"/>
<pin name="4" x="-20.32" y="-17.78" length="middle"/>
<pin name="5" x="-20.32" y="-20.32" length="middle"/>
<pin name="6" x="-20.32" y="-22.86" length="middle"/>
<pin name="7" x="-20.32" y="-25.4" length="middle"/>
<pin name="8" x="-20.32" y="-27.94" length="middle"/>
<pin name="9" x="-20.32" y="-30.48" length="middle"/>
<pin name="10" x="-20.32" y="-33.02" length="middle"/>
<pin name="GND@4" x="-20.32" y="-50.8" length="middle"/>
<pin name="16(TX2)" x="20.32" y="43.18" length="middle" rot="R180"/>
<pin name="17(RX2)" x="20.32" y="40.64" length="middle" rot="R180"/>
<pin name="18(TX1)" x="20.32" y="38.1" length="middle" rot="R180"/>
<pin name="22" x="20.32" y="27.94" length="middle" rot="R180"/>
<pin name="23" x="20.32" y="25.4" length="middle" rot="R180"/>
<pin name="24" x="20.32" y="22.86" length="middle" rot="R180"/>
<pin name="25" x="20.32" y="20.32" length="middle" rot="R180"/>
<pin name="26" x="20.32" y="17.78" length="middle" rot="R180"/>
<pin name="27" x="20.32" y="15.24" length="middle" rot="R180"/>
<pin name="28" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="29" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="30" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="31" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="32" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="33" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="34" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="35" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="36" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="37" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="38" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="40" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="39" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="41" x="20.32" y="-20.32" length="middle" rot="R180"/>
<pin name="42" x="20.32" y="-22.86" length="middle" rot="R180"/>
<pin name="43" x="20.32" y="-25.4" length="middle" rot="R180"/>
<pin name="44" x="20.32" y="-27.94" length="middle" rot="R180"/>
<pin name="45" x="20.32" y="-30.48" length="middle" rot="R180"/>
<pin name="46" x="20.32" y="-33.02" length="middle" rot="R180"/>
<pin name="47" x="20.32" y="-35.56" length="middle" rot="R180"/>
<pin name="48" x="20.32" y="-38.1" length="middle" rot="R180"/>
<pin name="11" x="-20.32" y="-35.56" length="middle"/>
<pin name="12" x="-20.32" y="-38.1" length="middle"/>
<pin name="13" x="20.32" y="50.8" length="middle" rot="R180"/>
<pin name="15(RX3)" x="20.32" y="45.72" length="middle" rot="R180"/>
<pin name="14(TX3)" x="20.32" y="48.26" length="middle" rot="R180"/>
<pin name="GND@0" x="-20.32" y="-40.64" length="middle"/>
<pin name="GND@1" x="-20.32" y="-43.18" length="middle"/>
<pin name="GND@2" x="-20.32" y="-45.72" length="middle"/>
<pin name="GND@3" x="-20.32" y="-48.26" length="middle"/>
<pin name="53" x="20.32" y="-50.8" length="middle" rot="R180"/>
<pin name="52" x="20.32" y="-48.26" length="middle" rot="R180"/>
<pin name="51" x="20.32" y="-45.72" length="middle" rot="R180"/>
<pin name="50" x="20.32" y="-43.18" length="middle" rot="R180"/>
<pin name="49" x="20.32" y="-40.64" length="middle" rot="R180"/>
<pin name="5V@2" x="-20.32" y="43.18" length="middle"/>
<pin name="3.3V" x="-20.32" y="40.64" length="middle"/>
<pin name="AREF" x="-20.32" y="38.1" length="middle"/>
<pin name="21(SCL)" x="20.32" y="30.48" length="middle" rot="R180"/>
<pin name="20(SDA)" x="20.32" y="33.02" length="middle" rot="R180"/>
<pin name="19(RX1)" x="20.32" y="35.56" length="middle" rot="R180"/>
<pin name="VIN" x="-20.32" y="50.8" length="middle"/>
<pin name="0(RX0)" x="-20.32" y="-7.62" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO_MEGA_SHIELD" prefix="AMSHD">
<gates>
<gate name="G$1" symbol="ARDUINO-MEGA_SHIELF" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINO_MEGA_SHIELD">
<connects>
<connect gate="G$1" pin="0(RX0)" pad="0"/>
<connect gate="G$1" pin="1(TX0)" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14(TX3)" pad="14"/>
<connect gate="G$1" pin="15(RX3)" pad="15"/>
<connect gate="G$1" pin="16(TX2)" pad="16"/>
<connect gate="G$1" pin="17(RX2)" pad="17"/>
<connect gate="G$1" pin="18(TX1)" pad="18"/>
<connect gate="G$1" pin="19(RX1)" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20(SDA)" pad="20"/>
<connect gate="G$1" pin="21(SCL)" pad="21"/>
<connect gate="G$1" pin="22" pad="22"/>
<connect gate="G$1" pin="23" pad="23"/>
<connect gate="G$1" pin="24" pad="24"/>
<connect gate="G$1" pin="25" pad="25"/>
<connect gate="G$1" pin="26" pad="26"/>
<connect gate="G$1" pin="27" pad="27"/>
<connect gate="G$1" pin="28" pad="28"/>
<connect gate="G$1" pin="29" pad="29"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="31" pad="31"/>
<connect gate="G$1" pin="32" pad="32"/>
<connect gate="G$1" pin="33" pad="33"/>
<connect gate="G$1" pin="34" pad="34"/>
<connect gate="G$1" pin="35" pad="35"/>
<connect gate="G$1" pin="36" pad="36"/>
<connect gate="G$1" pin="37" pad="37"/>
<connect gate="G$1" pin="38" pad="38"/>
<connect gate="G$1" pin="39" pad="39"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="40" pad="40"/>
<connect gate="G$1" pin="41" pad="41"/>
<connect gate="G$1" pin="42" pad="42"/>
<connect gate="G$1" pin="43" pad="43"/>
<connect gate="G$1" pin="44" pad="44"/>
<connect gate="G$1" pin="45" pad="45"/>
<connect gate="G$1" pin="46" pad="46"/>
<connect gate="G$1" pin="47" pad="47"/>
<connect gate="G$1" pin="48" pad="48"/>
<connect gate="G$1" pin="49" pad="49"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="50" pad="50"/>
<connect gate="G$1" pin="51" pad="51"/>
<connect gate="G$1" pin="52" pad="52"/>
<connect gate="G$1" pin="53" pad="53"/>
<connect gate="G$1" pin="5V@0" pad="5V@0"/>
<connect gate="G$1" pin="5V@1" pad="5V@1"/>
<connect gate="G$1" pin="5V@2" pad="5V@2"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A0(RX0)" pad="A0"/>
<connect gate="G$1" pin="A1(TX0)" pad="A1"/>
<connect gate="G$1" pin="A10" pad="A10"/>
<connect gate="G$1" pin="A11" pad="A11"/>
<connect gate="G$1" pin="A12" pad="A12"/>
<connect gate="G$1" pin="A13" pad="A13"/>
<connect gate="G$1" pin="A14" pad="A14"/>
<connect gate="G$1" pin="A15" pad="A15"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="A8" pad="A8"/>
<connect gate="G$1" pin="A9" pad="A9"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="GND@0" pad="GND@0"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="GND@3" pad="GND@3"/>
<connect gate="G$1" pin="GND@4" pad="GND@4"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="crystal">
<description>&lt;b&gt;Crystals and Crystal Resonators&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="UM1">
<description>&lt;b&gt;Crystal Filter&lt;/b&gt;&lt;p&gt;
Source: www.ilsiamerica.com .. C1 IXF Series.pdf</description>
<wire x1="-2.396" y1="-1.411" x2="2.421" y2="-1.411" width="0.4064" layer="21"/>
<wire x1="-2.421" y1="1.361" x2="2.396" y2="1.361" width="0.4064" layer="21"/>
<wire x1="-2.396" y1="-0.903" x2="2.421" y2="-0.903" width="0.1524" layer="21"/>
<wire x1="2.396" y1="0.853" x2="-2.421" y2="0.853" width="0.1524" layer="21"/>
<wire x1="2.396" y1="0.853" x2="2.421" y2="-0.903" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.396" y1="1.361" x2="2.421" y2="-1.411" width="0.4064" layer="21" curve="-180"/>
<wire x1="-2.421" y1="1.361" x2="-2.396" y2="-1.411" width="0.4064" layer="21" curve="180"/>
<wire x1="-2.421" y1="0.853" x2="-2.396" y2="-0.903" width="0.1524" layer="21" curve="180"/>
<pad name="1" x="-1.875" y="0" drill="0.7" diameter="1.2"/>
<pad name="2" x="-0.027" y="0" drill="0.7" diameter="1.2"/>
<pad name="3" x="1.875" y="0" drill="0.7" diameter="1.2"/>
<text x="-3.81" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="UM5">
<description>&lt;b&gt;Crystal Filter&lt;/b&gt;&lt;p&gt;
Source: www.ilsiamerica.com .. C1 IXF Series.pdf</description>
<wire x1="-2.396" y1="-1.411" x2="2.421" y2="-1.411" width="0.4064" layer="21"/>
<wire x1="-2.421" y1="1.361" x2="2.396" y2="1.361" width="0.4064" layer="21"/>
<wire x1="-2.396" y1="-0.903" x2="2.421" y2="-0.903" width="0.1524" layer="21"/>
<wire x1="2.396" y1="0.853" x2="-2.421" y2="0.853" width="0.1524" layer="21"/>
<wire x1="2.396" y1="0.853" x2="2.421" y2="-0.903" width="0.1524" layer="21" curve="-180"/>
<wire x1="2.396" y1="1.361" x2="2.421" y2="-1.411" width="0.4064" layer="21" curve="-180"/>
<wire x1="-2.421" y1="1.361" x2="-2.396" y2="-1.411" width="0.4064" layer="21" curve="180"/>
<wire x1="-2.421" y1="0.853" x2="-2.396" y2="-0.903" width="0.1524" layer="21" curve="180"/>
<pad name="1" x="-1.875" y="0" drill="0.7" diameter="1.2"/>
<pad name="2" x="-0.027" y="0" drill="0.7" diameter="1.2"/>
<pad name="3" x="1.875" y="0" drill="0.7" diameter="1.2"/>
<text x="-3.81" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="CRYSTAL-FILTER-3-POL">
<wire x1="1.016" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.381" y1="1.524" x2="-0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-0.381" y1="-1.524" x2="0.381" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="-1.524" x2="0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="0.381" y1="1.524" x2="-0.381" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.778" x2="1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.778" x2="-1.016" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-1.778" y1="1.905" x2="-1.778" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="2.54" x2="1.778" y2="2.54" width="0.1524" layer="94"/>
<wire x1="1.778" y1="2.54" x2="1.778" y2="1.905" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-1.905" x2="1.778" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="-2.54" x2="1.778" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.778" y1="-2.54" x2="-1.778" y2="-1.905" width="0.1524" layer="94"/>
<text x="2.54" y="1.016" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.159" y="-1.143" size="0.8636" layer="93">1</text>
<text x="-1.016" y="-3.683" size="0.8636" layer="93">2</text>
<text x="1.524" y="-1.143" size="0.8636" layer="93">3</text>
<pin name="3" x="2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1" rot="R270"/>
<pin name="1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="21M*A" prefix="QF">
<description>&lt;b&gt;Monolithic Crystal Filters&lt;/b&gt;&lt;p&gt;
Source: www.vanlong.com</description>
<gates>
<gate name="G$1" symbol="CRYSTAL-FILTER-3-POL" x="0" y="0"/>
</gates>
<devices>
<device name="UM1" package="UM1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="13">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="15">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="20">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="30">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="7">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="UM5" package="UM5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="13">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="15">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="20">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="30">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="7">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Capacitors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="CAP-PTH-SMALL-KIT">
<description>&lt;h3&gt;CAP-PTH-SMALL-KIT&lt;/h3&gt;
Commonly used for small ceramic capacitors. Like our 0.1uF (http://www.sparkfun.com/products/8375) or 22pF caps (http://www.sparkfun.com/products/8571).&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="2.667" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="1.27" x2="2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="-1.27" x2="-2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="2" x="1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<polygon width="0.127" layer="30">
<vertex x="-1.4021" y="-0.9475" curve="-90"/>
<vertex x="-2.357" y="-0.0178" curve="-90.011749"/>
<vertex x="-1.4046" y="0.9576" curve="-90"/>
<vertex x="-0.4546" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1.4046" y="-0.4395" curve="-90.012891"/>
<vertex x="-1.8491" y="-0.0153" curve="-90"/>
<vertex x="-1.4046" y="0.452" curve="-90"/>
<vertex x="-0.9627" y="-0.0051" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.397" y="-0.9475" curve="-90"/>
<vertex x="0.4421" y="-0.0178" curve="-90.011749"/>
<vertex x="1.3945" y="0.9576" curve="-90"/>
<vertex x="2.3445" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1.3945" y="-0.4395" curve="-90.012891"/>
<vertex x="0.95" y="-0.0153" curve="-90"/>
<vertex x="1.3945" y="0.452" curve="-90"/>
<vertex x="1.8364" y="-0.0051" curve="-90.012967"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="0.1UF-50V-20%(PTH)" prefix="C" uservalue="yes">
<description>CAP-08370</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="-2.54"/>
</gates>
<devices>
<device name="KIT-EZ" package="CAP-PTH-SMALL-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-08370" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-DigitalIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of digital ICs- microcontrollers, memory chips, logic chips, FPGAs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SO014">
<wire x1="4.8768" y1="2.1463" x2="-3.6068" y2="2.1463" width="0.1524" layer="21"/>
<wire x1="4.8768" y1="-2.1463" x2="5.2578" y2="-1.7653" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.9878" y1="1.7653" x2="-3.6068" y2="2.1463" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.8768" y1="2.1463" x2="5.2578" y2="1.7653" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.9878" y1="-1.7653" x2="-3.6068" y2="-2.1463" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.6068" y1="-2.1463" x2="4.8768" y2="-2.1463" width="0.1524" layer="21"/>
<wire x1="5.2578" y1="-1.7653" x2="5.2578" y2="1.7653" width="0.1524" layer="21"/>
<wire x1="-3.9878" y1="1.7653" x2="-3.9878" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.9878" y1="1.27" x2="-3.9878" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.9878" y1="-1.27" x2="-3.9878" y2="-1.7653" width="0.1524" layer="21"/>
<wire x1="-3.9878" y1="1.27" x2="-3.9878" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<smd name="1" x="-3.175" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="2" x="-1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="3" x="-0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="4" x="0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="5" x="1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="6" x="3.175" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="7" x="4.445" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="8" x="4.445" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="9" x="3.175" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="10" x="1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="11" x="0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="12" x="-0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="13" x="-1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="14" x="-3.175" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<text x="-4.318" y="-2.6035" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-3.429" y1="-2.2733" x2="-2.921" y2="-2.1463" layer="21"/>
<rectangle x1="-3.429" y1="-2.2733" x2="-2.921" y2="-2.1463" layer="21"/>
<rectangle x1="-3.429" y1="-3.429" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-2.2733" x2="-1.651" y2="-2.1463" layer="21"/>
<rectangle x1="-2.159" y1="-3.429" x2="-1.651" y2="-1.9558" layer="51"/>
<rectangle x1="-0.889" y1="-2.2733" x2="-0.381" y2="-2.1463" layer="21"/>
<rectangle x1="-0.889" y1="-3.429" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="-3.429" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="-2.2733" x2="0.889" y2="-2.1463" layer="21"/>
<rectangle x1="1.651" y1="-2.2733" x2="2.159" y2="-2.1463" layer="21"/>
<rectangle x1="1.651" y1="-3.429" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-2.2733" x2="3.429" y2="-2.1463" layer="21"/>
<rectangle x1="2.921" y1="-3.429" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-2.2733" x2="4.699" y2="-2.1463" layer="21"/>
<rectangle x1="4.191" y1="-3.429" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="2.1463" x2="-2.921" y2="2.2733" layer="21"/>
<rectangle x1="-3.429" y1="2.1463" x2="-2.921" y2="2.2733" layer="21"/>
<rectangle x1="-3.429" y1="2.2733" x2="-2.921" y2="3.7465" layer="51"/>
<rectangle x1="-2.159" y1="2.1463" x2="-1.651" y2="2.2733" layer="21"/>
<rectangle x1="-2.159" y1="2.2733" x2="-1.651" y2="3.7465" layer="51"/>
<rectangle x1="-0.889" y1="2.1463" x2="-0.381" y2="2.2733" layer="21"/>
<rectangle x1="-0.889" y1="2.2733" x2="-0.381" y2="3.7465" layer="51"/>
<rectangle x1="0.381" y1="2.1463" x2="0.889" y2="2.2733" layer="21"/>
<rectangle x1="0.381" y1="2.2733" x2="0.889" y2="3.7465" layer="51"/>
<rectangle x1="1.651" y1="2.1463" x2="2.159" y2="2.2733" layer="21"/>
<rectangle x1="1.651" y1="2.2733" x2="2.159" y2="3.7465" layer="51"/>
<rectangle x1="2.921" y1="2.1463" x2="3.429" y2="2.2733" layer="21"/>
<rectangle x1="2.921" y1="2.2733" x2="3.429" y2="3.7465" layer="51"/>
<rectangle x1="4.191" y1="2.1463" x2="4.699" y2="2.2733" layer="21"/>
<rectangle x1="4.191" y1="2.2733" x2="4.699" y2="3.7465" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="LS7366R">
<wire x1="7.62" y1="12.7" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="12.7" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<pin name="FCKO" x="-15.24" y="10.16" length="middle"/>
<pin name="FCKI" x="-15.24" y="7.62" length="middle"/>
<pin name="VSS" x="-15.24" y="5.08" length="middle"/>
<pin name="SS" x="-15.24" y="2.54" length="middle"/>
<pin name="SCK" x="-15.24" y="0" length="middle"/>
<pin name="MISO" x="-15.24" y="-2.54" length="middle"/>
<pin name="MOSI" x="-15.24" y="-5.08" length="middle"/>
<pin name="VDD" x="12.7" y="10.16" length="middle" rot="R180"/>
<pin name="CNT_EN" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="A" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="B" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="INDEX" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="DFLAG" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="LFLAG" x="12.7" y="-5.08" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LS7366R">
<gates>
<gate name="G$1" symbol="LS7366R" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SO014">
<connects>
<connect gate="G$1" pin="A" pad="12"/>
<connect gate="G$1" pin="B" pad="11"/>
<connect gate="G$1" pin="CNT_EN" pad="13"/>
<connect gate="G$1" pin="DFLAG" pad="9"/>
<connect gate="G$1" pin="FCKI" pad="2"/>
<connect gate="G$1" pin="FCKO" pad="1"/>
<connect gate="G$1" pin="INDEX" pad="10"/>
<connect gate="G$1" pin="LFLAG" pad="8"/>
<connect gate="G$1" pin="MISO" pad="6"/>
<connect gate="G$1" pin="MOSI" pad="7"/>
<connect gate="G$1" pin="SCK" pad="5"/>
<connect gate="G$1" pin="SS" pad="4"/>
<connect gate="G$1" pin="VDD" pad="14"/>
<connect gate="G$1" pin="VSS" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
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
<part name="EASYDRIVER_V44" library="EasyDriver" deviceset="EASYDRIVER_V44" device=""/>
<part name="X1" library="con-shiua-chyuan" deviceset="SCD-014A" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="JP11" library="SparkFun-Connectors" deviceset="M03" device="POLAR"/>
<part name="JP1" library="SparkFun-Connectors" deviceset="M03" device="POLAR"/>
<part name="S1" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="PTH_EZ"/>
<part name="GND-ISO2" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="GND-ISO4" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="GND-ISO6" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="GND-ISO7" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="P+4" library="supply1" deviceset="+5V" device=""/>
<part name="P+5" library="supply1" deviceset="+5V" device=""/>
<part name="JP2" library="SparkFun-Connectors" deviceset="M03" device="POLAR"/>
<part name="P+6" library="supply1" deviceset="+5V" device=""/>
<part name="GND-ISO9" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="JP3" library="SparkFun-Connectors" deviceset="M03" device="POLAR"/>
<part name="P+7" library="supply1" deviceset="+5V" device=""/>
<part name="GND-ISO1" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="GND-ISO5" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="AMSHD1" library="SparkFun-Boards" deviceset="ARDUINO_MEGA_SHIELD" device=""/>
<part name="R3" library="SparkFun-Resistors" deviceset="10OHM-1/4W-5%(PTH)" device="" value="4.7K"/>
<part name="U2" library="SparkFun-AnalogIC" deviceset="MCP41XXX" device="DIL"/>
<part name="GND-ISO3" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="R1" library="SparkFun-Resistors" deviceset="10OHM-1/4W-5%(PTH)" device="" value="100"/>
<part name="R4" library="SparkFun-Resistors" deviceset="10OHM-1/4W-5%(PTH)" device="" value="100"/>
<part name="U1" library="SparkFun-AnalogIC" deviceset="MCP41XXX" device="DIL"/>
<part name="P+8" library="supply1" deviceset="+5V" device=""/>
<part name="GND-ISO10" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="JP7" library="SparkFun-Connectors" deviceset="M03" device="POLAR"/>
<part name="JP4" library="SparkFun-Connectors" deviceset="M04" device="POLAR"/>
<part name="GND-ISO8" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="P+10" library="supply1" deviceset="+5V" device=""/>
<part name="U$1" library="SparkFun-Connectors" deviceset="M08X2" device=""/>
<part name="JP5" library="SparkFun-Connectors" deviceset="M03" device="POLAR"/>
<part name="P+3" library="supply1" deviceset="+5V" device=""/>
<part name="GND-ISO11" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="QF1" library="crystal" deviceset="21M*A" device="UM5" technology="30"/>
<part name="C1" library="SparkFun-Capacitors" deviceset="0.1UF-50V-20%(PTH)" device="KIT-EZ"/>
<part name="C2" library="SparkFun-Capacitors" deviceset="0.1UF-50V-20%(PTH)" device="KIT-EZ"/>
<part name="U$2" library="SparkFun-DigitalIC" deviceset="LS7366R" device=""/>
<part name="R2" library="SparkFun-Resistors" deviceset="10OHM-1/4W-5%(PTH)" device="" value="50"/>
<part name="GND-ISO12" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="P+11" library="supply1" deviceset="+5V" device=""/>
<part name="GND-ISO14" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="62.23" y="76.2" size="1.778" layer="91" rot="R90">Stepper
Motor</text>
<text x="-111.76" y="5.08" size="1.778" layer="91" rot="R180">Temperature Sensor</text>
<text x="-121.92" y="27.94" size="1.778" layer="91">liquid flow</text>
<text x="-121.92" y="53.34" size="1.778" layer="91">PH sensor</text>
<text x="-73.66" y="7.62" size="1.778" layer="91">4.7K R!</text>
<text x="43.18" y="15.24" size="1.778" layer="91">pump flow fontrol</text>
<text x="81.28" y="15.24" size="1.778" layer="91">optics light control</text>
<text x="17.78" y="40.64" size="1.778" layer="91">heater off on</text>
<text x="25.4" y="73.66" size="1.778" layer="91">p.pump </text>
<text x="7.62" y="-17.78" size="1.778" layer="91">pump 
flow
control</text>
<text x="7.62" y="-35.56" size="1.778" layer="91">optics
light 
control</text>
<text x="-124.46" y="91.44" size="1.778" layer="91">P.Pump outlet </text>
</plain>
<instances>
<instance part="EASYDRIVER_V44" gate="G$1" x="78.74" y="78.74" rot="R90"/>
<instance part="X1" gate="G$1" x="35.56" y="96.52" rot="R180"/>
<instance part="P+1" gate="1" x="-55.88" y="111.76"/>
<instance part="JP11" gate="G$1" x="-106.68" y="53.34"/>
<instance part="JP1" gate="G$1" x="-106.68" y="27.94"/>
<instance part="S1" gate="G$1" x="-106.68" y="78.74"/>
<instance part="GND-ISO2" gate="G$1" x="45.72" y="-30.48"/>
<instance part="P+2" gate="1" x="45.72" y="10.16"/>
<instance part="GND-ISO4" gate="G$1" x="-111.76" y="71.12"/>
<instance part="GND-ISO6" gate="G$1" x="-93.98" y="17.78"/>
<instance part="GND-ISO7" gate="G$1" x="-93.98" y="43.18"/>
<instance part="P+4" gate="1" x="-86.36" y="60.96"/>
<instance part="P+5" gate="1" x="-86.36" y="35.56"/>
<instance part="JP2" gate="G$1" x="-104.14" y="5.08"/>
<instance part="P+6" gate="1" x="-76.2" y="17.78"/>
<instance part="GND-ISO9" gate="G$1" x="-91.44" y="-7.62"/>
<instance part="JP3" gate="G$1" x="17.78" y="-15.24"/>
<instance part="P+7" gate="1" x="66.04" y="20.32" rot="R270"/>
<instance part="GND-ISO1" gate="G$1" x="109.22" y="83.82"/>
<instance part="GND-ISO5" gate="G$1" x="-63.5" y="-15.24"/>
<instance part="AMSHD1" gate="G$1" x="-25.4" y="43.18"/>
<instance part="R3" gate="G$1" x="-81.28" y="7.62"/>
<instance part="U2" gate="G$1" x="55.88" y="-17.78"/>
<instance part="GND-ISO3" gate="G$1" x="43.18" y="27.94"/>
<instance part="R1" gate="G$1" x="68.58" y="30.48" rot="R90"/>
<instance part="R4" gate="G$1" x="63.5" y="30.48" rot="R90"/>
<instance part="U1" gate="G$1" x="83.82" y="-17.78"/>
<instance part="P+8" gate="1" x="71.12" y="12.7"/>
<instance part="GND-ISO10" gate="G$1" x="71.12" y="-38.1"/>
<instance part="JP7" gate="G$1" x="17.78" y="-33.02"/>
<instance part="JP4" gate="G$1" x="12.7" y="68.58" rot="R180"/>
<instance part="GND-ISO8" gate="G$1" x="7.62" y="53.34"/>
<instance part="P+10" gate="1" x="7.62" y="81.28"/>
<instance part="U$1" gate="G$1" x="50.8" y="38.1"/>
<instance part="JP5" gate="G$1" x="-106.68" y="93.98"/>
<instance part="P+3" gate="1" x="-96.52" y="104.14"/>
<instance part="GND-ISO11" gate="G$1" x="-96.52" y="81.28"/>
<instance part="QF1" gate="G$1" x="99.06" y="35.56" smashed="yes"/>
<instance part="C1" gate="G$1" x="93.98" y="40.64"/>
<instance part="C2" gate="G$1" x="104.14" y="40.64"/>
<instance part="U$2" gate="G$1" x="119.38" y="-5.08"/>
<instance part="R2" gate="G$1" x="99.06" y="25.4" rot="R180"/>
<instance part="GND-ISO12" gate="G$1" x="116.84" y="38.1"/>
<instance part="P+11" gate="1" x="58.42" y="55.88"/>
<instance part="GND-ISO14" gate="G$1" x="78.74" y="38.1"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="M+"/>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="40.64" y1="93.98" x2="45.72" y2="93.98" width="0.1524" layer="91"/>
<wire x1="45.72" y1="93.98" x2="45.72" y2="96.52" width="0.1524" layer="91"/>
<wire x1="45.72" y1="96.52" x2="63.5" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="GND1"/>
<wire x1="63.5" y1="93.98" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="40.64" y1="99.06" x2="48.26" y2="99.06" width="0.1524" layer="91"/>
<wire x1="48.26" y1="99.06" x2="48.26" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="-55.88" y1="91.44" x2="-55.88" y2="109.22" width="0.1524" layer="91"/>
<wire x1="-45.72" y1="91.44" x2="-55.88" y2="91.44" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="5V@0"/>
</segment>
<segment>
<wire x1="45.72" y1="2.54" x2="45.72" y2="7.62" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<pinref part="U2" gate="G$1" pin="VCC"/>
</segment>
<segment>
<pinref part="JP11" gate="G$1" pin="2"/>
<wire x1="-99.06" y1="53.34" x2="-86.36" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="53.34" x2="-86.36" y2="58.42" width="0.1524" layer="91"/>
<pinref part="P+4" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="JP1" gate="G$1" pin="2"/>
<wire x1="-99.06" y1="27.94" x2="-86.36" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-86.36" y1="27.94" x2="-86.36" y2="33.02" width="0.1524" layer="91"/>
<pinref part="P+5" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="JP2" gate="G$1" pin="2"/>
<wire x1="-96.52" y1="5.08" x2="-76.2" y2="5.08" width="0.1524" layer="91"/>
<pinref part="P+6" gate="1" pin="+5V"/>
<wire x1="-76.2" y1="5.08" x2="-76.2" y2="7.62" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="-76.2" y1="7.62" x2="-76.2" y2="15.24" width="0.1524" layer="91"/>
<junction x="-76.2" y="7.62"/>
</segment>
<segment>
<pinref part="P+7" gate="1" pin="+5V"/>
<wire x1="63.5" y1="25.4" x2="63.5" y2="20.32" width="0.1524" layer="91"/>
<wire x1="58.42" y1="33.02" x2="60.96" y2="33.02" width="0.1524" layer="91"/>
<wire x1="60.96" y1="33.02" x2="60.96" y2="30.48" width="0.1524" layer="91"/>
<wire x1="60.96" y1="30.48" x2="60.96" y2="25.4" width="0.1524" layer="91"/>
<wire x1="60.96" y1="25.4" x2="63.5" y2="25.4" width="0.1524" layer="91"/>
<wire x1="58.42" y1="30.48" x2="60.96" y2="30.48" width="0.1524" layer="91"/>
<junction x="60.96" y="30.48"/>
<pinref part="R4" gate="G$1" pin="1"/>
<junction x="63.5" y="25.4"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="68.58" y1="25.4" x2="63.5" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="14"/>
<pinref part="U$1" gate="G$1" pin="16"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VCC"/>
<pinref part="P+8" gate="1" pin="+5V"/>
<wire x1="73.66" y1="2.54" x2="71.12" y2="2.54" width="0.1524" layer="91"/>
<wire x1="71.12" y1="2.54" x2="71.12" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="A"/>
<wire x1="73.66" y1="-12.7" x2="71.12" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-12.7" x2="71.12" y2="2.54" width="0.1524" layer="91"/>
<junction x="71.12" y="2.54"/>
</segment>
<segment>
<pinref part="JP4" gate="G$1" pin="1"/>
<wire x1="7.62" y1="71.12" x2="7.62" y2="78.74" width="0.1524" layer="91"/>
<pinref part="P+10" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="JP5" gate="G$1" pin="2"/>
<wire x1="-99.06" y1="93.98" x2="-96.52" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="93.98" x2="-96.52" y2="101.6" width="0.1524" layer="91"/>
<pinref part="P+3" gate="1" pin="+5V"/>
</segment>
<segment>
<wire x1="58.42" y1="48.26" x2="58.42" y2="53.34" width="0.1524" layer="91"/>
<pinref part="P+11" gate="1" pin="+5V"/>
</segment>
</net>
<net name="GND-ISO" class="0">
<segment>
<pinref part="GND-ISO2" gate="G$1" pin="GND-ISO"/>
<wire x1="45.72" y1="-22.86" x2="45.72" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="S1" gate="G$1" pin="1"/>
<pinref part="GND-ISO4" gate="G$1" pin="GND-ISO"/>
<wire x1="-111.76" y1="73.66" x2="-111.76" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="-99.06" y1="25.4" x2="-93.98" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="25.4" x2="-93.98" y2="20.32" width="0.1524" layer="91"/>
<pinref part="GND-ISO6" gate="G$1" pin="GND-ISO"/>
</segment>
<segment>
<pinref part="JP11" gate="G$1" pin="1"/>
<wire x1="-99.06" y1="50.8" x2="-93.98" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="50.8" x2="-93.98" y2="45.72" width="0.1524" layer="91"/>
<pinref part="GND-ISO7" gate="G$1" pin="GND-ISO"/>
</segment>
<segment>
<pinref part="JP2" gate="G$1" pin="1"/>
<wire x1="-96.52" y1="2.54" x2="-91.44" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="2.54" x2="-91.44" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="GND-ISO9" gate="G$1" pin="GND-ISO"/>
</segment>
<segment>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="GND2"/>
<wire x1="91.44" y1="91.44" x2="109.22" y2="91.44" width="0.1524" layer="91"/>
<wire x1="109.22" y1="91.44" x2="109.22" y2="86.36" width="0.1524" layer="91"/>
<pinref part="GND-ISO1" gate="G$1" pin="GND-ISO"/>
</segment>
<segment>
<pinref part="GND-ISO5" gate="G$1" pin="GND-ISO"/>
<wire x1="-45.72" y1="0" x2="-63.5" y2="0" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="0" x2="-63.5" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="GND@1"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<pinref part="GND-ISO10" gate="G$1" pin="GND-ISO"/>
<wire x1="73.66" y1="-22.86" x2="71.12" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-22.86" x2="71.12" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="B"/>
<wire x1="73.66" y1="-17.78" x2="71.12" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-17.78" x2="71.12" y2="-22.86" width="0.1524" layer="91"/>
<junction x="71.12" y="-22.86"/>
<junction x="71.12" y="-35.56"/>
<pinref part="JP7" gate="G$1" pin="1"/>
<wire x1="71.12" y1="-35.56" x2="25.4" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VSS"/>
<wire x1="104.14" y1="0" x2="96.52" y2="0" width="0.1524" layer="91"/>
<wire x1="96.52" y1="0" x2="96.52" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-33.02" x2="71.12" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-33.02" x2="71.12" y2="-35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP4" gate="G$1" pin="4"/>
<wire x1="7.62" y1="63.5" x2="7.62" y2="55.88" width="0.1524" layer="91"/>
<pinref part="GND-ISO8" gate="G$1" pin="GND-ISO"/>
</segment>
<segment>
<pinref part="JP5" gate="G$1" pin="1"/>
<wire x1="-99.06" y1="91.44" x2="-96.52" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-96.52" y1="91.44" x2="-96.52" y2="83.82" width="0.1524" layer="91"/>
<pinref part="GND-ISO11" gate="G$1" pin="GND-ISO"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="93.98" y1="45.72" x2="104.14" y2="45.72" width="0.1524" layer="91"/>
<wire x1="104.14" y1="45.72" x2="116.84" y2="45.72" width="0.1524" layer="91"/>
<wire x1="116.84" y1="45.72" x2="116.84" y2="40.64" width="0.1524" layer="91"/>
<junction x="104.14" y="45.72"/>
<pinref part="GND-ISO12" gate="G$1" pin="GND-ISO"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="15"/>
<pinref part="GND-ISO3" gate="G$1" pin="GND-ISO"/>
<pinref part="U$1" gate="G$1" pin="13"/>
<wire x1="43.18" y1="33.02" x2="40.64" y2="33.02" width="0.1524" layer="91"/>
<wire x1="40.64" y1="33.02" x2="40.64" y2="30.48" width="0.1524" layer="91"/>
<wire x1="40.64" y1="30.48" x2="43.18" y2="30.48" width="0.1524" layer="91"/>
<junction x="43.18" y="30.48"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="8"/>
<pinref part="GND-ISO14" gate="G$1" pin="GND-ISO"/>
<wire x1="58.42" y1="40.64" x2="78.74" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="S1" gate="G$1" pin="2"/>
<wire x1="-101.6" y1="78.74" x2="-45.72" y2="78.74" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="RESET"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<wire x1="45.72" y1="-5.08" x2="-5.08" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="52"/>
<pinref part="U2" gate="G$1" pin="SCK"/>
<pinref part="U1" gate="G$1" pin="SCK"/>
<wire x1="73.66" y1="-5.08" x2="45.72" y2="-5.08" width="0.1524" layer="91"/>
<junction x="45.72" y="-5.08"/>
<pinref part="U$2" gate="G$1" pin="SCK"/>
<wire x1="104.14" y1="-5.08" x2="73.66" y2="-5.08" width="0.1524" layer="91"/>
<junction x="73.66" y="-5.08"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<wire x1="45.72" y1="-7.62" x2="40.64" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-7.62" x2="40.64" y2="0" width="0.1524" layer="91"/>
<wire x1="40.64" y1="0" x2="35.56" y2="0" width="0.1524" layer="91"/>
<wire x1="35.56" y1="0" x2="35.56" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="35.56" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="51"/>
<pinref part="U2" gate="G$1" pin="DI"/>
<pinref part="U1" gate="G$1" pin="DI"/>
<wire x1="73.66" y1="-7.62" x2="45.72" y2="-7.62" width="0.1524" layer="91"/>
<junction x="45.72" y="-7.62"/>
<pinref part="U$2" gate="G$1" pin="MOSI"/>
<wire x1="104.14" y1="-10.16" x2="73.66" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-10.16" x2="73.66" y2="-7.62" width="0.1524" layer="91"/>
<junction x="73.66" y="-7.62"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="45.72" y1="-12.7" x2="25.4" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="3"/>
<pinref part="U2" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="101.6" y1="104.14" x2="-66.04" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="104.14" x2="-66.04" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="20.32" x2="-45.72" y2="20.32" width="0.1524" layer="91"/>
<wire x1="101.6" y1="104.14" x2="101.6" y2="96.52" width="0.1524" layer="91"/>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="DIR"/>
<wire x1="101.6" y1="96.52" x2="91.44" y2="96.52" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="6"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<wire x1="104.14" y1="106.68" x2="-68.58" y2="106.68" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="106.68" x2="-68.58" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="17.78" x2="-45.72" y2="17.78" width="0.1524" layer="91"/>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="STEP"/>
<wire x1="91.44" y1="93.98" x2="104.14" y2="93.98" width="0.1524" layer="91"/>
<wire x1="104.14" y1="93.98" x2="104.14" y2="106.68" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="7"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="99.06" y1="101.6" x2="-63.5" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="101.6" x2="-63.5" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="22.86" x2="-45.72" y2="22.86" width="0.1524" layer="91"/>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="MS1"/>
<wire x1="91.44" y1="81.28" x2="99.06" y2="81.28" width="0.1524" layer="91"/>
<wire x1="99.06" y1="81.28" x2="99.06" y2="101.6" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="5"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<wire x1="5.08" y1="99.06" x2="-60.96" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="99.06" x2="-60.96" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="25.4" x2="-45.72" y2="25.4" width="0.1524" layer="91"/>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="MS2"/>
<wire x1="63.5" y1="88.9" x2="5.08" y2="88.9" width="0.1524" layer="91"/>
<wire x1="5.08" y1="88.9" x2="5.08" y2="99.06" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="4"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="1"/>
<wire x1="25.4" y1="-17.78" x2="45.72" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="58.42" y1="38.1" x2="68.58" y2="38.1" width="0.1524" layer="91"/>
<wire x1="68.58" y1="38.1" x2="68.58" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="10"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="JP11" gate="G$1" pin="3"/>
<wire x1="-99.06" y1="55.88" x2="-45.72" y2="55.88" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="A8"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="3"/>
<wire x1="-99.06" y1="30.48" x2="-45.72" y2="30.48" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="W"/>
<pinref part="JP3" gate="G$1" pin="2"/>
<wire x1="45.72" y1="-15.24" x2="25.4" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="3"/>
<wire x1="-86.36" y1="7.62" x2="-88.9" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="7.62" x2="-96.52" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-88.9" y1="7.62" x2="-88.9" y2="10.16" width="0.1524" layer="91"/>
<junction x="-88.9" y="7.62"/>
<wire x1="-88.9" y1="10.16" x2="-45.72" y2="10.16" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="10"/>
<pinref part="R3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="43.18" y1="40.64" x2="38.1" y2="40.64" width="0.1524" layer="91"/>
<wire x1="38.1" y1="40.64" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="A1"/>
<wire x1="38.1" y1="63.5" x2="63.5" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="7"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="A2"/>
<wire x1="63.5" y1="66.04" x2="40.64" y2="66.04" width="0.1524" layer="91"/>
<wire x1="40.64" y1="66.04" x2="40.64" y2="43.18" width="0.1524" layer="91"/>
<wire x1="40.64" y1="43.18" x2="43.18" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="5"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="43.18" y1="45.72" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
<wire x1="35.56" y1="45.72" x2="35.56" y2="68.58" width="0.1524" layer="91"/>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="B2"/>
<wire x1="35.56" y1="68.58" x2="63.5" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="B1"/>
<wire x1="63.5" y1="71.12" x2="33.02" y2="71.12" width="0.1524" layer="91"/>
<wire x1="33.02" y1="71.12" x2="33.02" y2="48.26" width="0.1524" layer="91"/>
<wire x1="33.02" y1="48.26" x2="43.18" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="22.86" y1="30.48" x2="22.86" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="9"/>
<wire x1="22.86" y1="38.1" x2="43.18" y2="38.1" width="0.1524" layer="91"/>
<wire x1="22.86" y1="30.48" x2="2.54" y2="30.48" width="0.1524" layer="91"/>
<wire x1="2.54" y1="30.48" x2="2.54" y2="81.28" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="18(TX1)"/>
<wire x1="2.54" y1="81.28" x2="-5.08" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="27.94" y1="35.56" x2="27.94" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="11"/>
<wire x1="27.94" y1="35.56" x2="43.18" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="63.5" y1="35.56" x2="58.42" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="12"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="W"/>
<wire x1="73.66" y1="-15.24" x2="66.04" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-15.24" x2="66.04" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-33.02" x2="25.4" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="38.1" y1="-7.62" x2="38.1" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-2.54" x2="38.1" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="CS"/>
<wire x1="38.1" y1="-7.62" x2="12.7" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="15.24" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="44"/>
<wire x1="12.7" y1="15.24" x2="-5.08" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="CS"/>
<wire x1="73.66" y1="-2.54" x2="66.04" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-2.54" x2="66.04" y2="12.7" width="0.1524" layer="91"/>
<wire x1="66.04" y1="12.7" x2="38.1" y2="12.7" width="0.1524" layer="91"/>
<wire x1="38.1" y1="12.7" x2="38.1" y2="2.54" width="0.1524" layer="91"/>
<wire x1="38.1" y1="2.54" x2="-2.54" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="12.7" x2="-2.54" y2="2.54" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="45"/>
<wire x1="-2.54" y1="12.7" x2="-5.08" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="2"/>
<wire x1="7.62" y1="68.58" x2="0" y2="68.58" width="0.1524" layer="91"/>
<wire x1="0" y1="68.58" x2="0" y2="71.12" width="0.1524" layer="91"/>
<wire x1="0" y1="71.12" x2="-2.54" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="71.12" x2="-2.54" y2="20.32" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="42"/>
<wire x1="-2.54" y1="20.32" x2="-5.08" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<wire x1="116.84" y1="-22.86" x2="114.3" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="EASYDRIVER_V44" gate="G$1" pin="ENABLE"/>
<wire x1="63.5" y1="86.36" x2="0" y2="86.36" width="0.1524" layer="91"/>
<wire x1="0" y1="86.36" x2="0" y2="116.84" width="0.1524" layer="91"/>
<wire x1="0" y1="116.84" x2="-71.12" y2="116.84" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="116.84" x2="-71.12" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-71.12" y1="5.08" x2="-60.96" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="5.08" x2="-60.96" y2="7.62" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="11"/>
<wire x1="-60.96" y1="7.62" x2="-45.72" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="FCKI"/>
<wire x1="104.14" y1="2.54" x2="99.06" y2="2.54" width="0.1524" layer="91"/>
<wire x1="99.06" y1="2.54" x2="99.06" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="99.06" y1="20.32" x2="93.98" y2="20.32" width="0.1524" layer="91"/>
<wire x1="93.98" y1="20.32" x2="93.98" y2="25.4" width="0.1524" layer="91"/>
<wire x1="93.98" y1="25.4" x2="93.98" y2="35.56" width="0.1524" layer="91"/>
<junction x="93.98" y="25.4"/>
<pinref part="QF1" gate="G$1" pin="1"/>
<wire x1="93.98" y1="35.56" x2="96.52" y2="35.56" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="93.98" y1="35.56" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
<junction x="93.98" y="35.56"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="104.14" y1="38.1" x2="104.14" y2="35.56" width="0.1524" layer="91"/>
<pinref part="QF1" gate="G$1" pin="3"/>
<wire x1="104.14" y1="35.56" x2="101.6" y2="35.56" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="104.14" y1="35.56" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<junction x="104.14" y="35.56"/>
<pinref part="U$2" gate="G$1" pin="FCKO"/>
<wire x1="104.14" y1="5.08" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<junction x="104.14" y="25.4"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="B"/>
<wire x1="139.7" y1="-2.54" x2="137.16" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="4"/>
<wire x1="137.16" y1="-2.54" x2="132.08" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="58.42" y1="45.72" x2="88.9" y2="45.72" width="0.1524" layer="91"/>
<wire x1="88.9" y1="45.72" x2="88.9" y2="48.26" width="0.1524" layer="91"/>
<wire x1="88.9" y1="48.26" x2="137.16" y2="48.26" width="0.1524" layer="91"/>
<wire x1="137.16" y1="48.26" x2="137.16" y2="-2.54" width="0.1524" layer="91"/>
<junction x="137.16" y="-2.54"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="A"/>
<wire x1="139.7" y1="0" x2="134.62" y2="0" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="6"/>
<wire x1="134.62" y1="0" x2="132.08" y2="0" width="0.1524" layer="91"/>
<wire x1="58.42" y1="43.18" x2="83.82" y2="43.18" width="0.1524" layer="91"/>
<wire x1="83.82" y1="43.18" x2="83.82" y2="50.8" width="0.1524" layer="91"/>
<wire x1="83.82" y1="50.8" x2="134.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="134.62" y1="50.8" x2="134.62" y2="0" width="0.1524" layer="91"/>
<junction x="134.62" y="0"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="AMSHD1" gate="G$1" pin="53"/>
<wire x1="-5.08" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="7.62" width="0.1524" layer="91"/>
<wire x1="5.08" y1="7.62" x2="35.56" y2="7.62" width="0.1524" layer="91"/>
<wire x1="35.56" y1="7.62" x2="35.56" y2="17.78" width="0.1524" layer="91"/>
<wire x1="35.56" y1="17.78" x2="93.98" y2="17.78" width="0.1524" layer="91"/>
<wire x1="93.98" y1="17.78" x2="93.98" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="SS"/>
<wire x1="93.98" y1="-2.54" x2="104.14" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="AMSHD1" gate="G$1" pin="50"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="MISO"/>
<wire x1="-2.54" y1="-40.64" x2="104.14" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-40.64" x2="104.14" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="3"/>
<wire x1="7.62" y1="66.04" x2="0" y2="66.04" width="0.1524" layer="91"/>
<wire x1="0" y1="66.04" x2="0" y2="17.78" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="43"/>
<wire x1="0" y1="17.78" x2="-5.08" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<wire x1="30.48" y1="25.4" x2="-2.54" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="25.4" x2="-2.54" y2="76.2" width="0.1524" layer="91"/>
<pinref part="AMSHD1" gate="G$1" pin="20(SDA)"/>
<wire x1="-2.54" y1="76.2" x2="-5.08" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
