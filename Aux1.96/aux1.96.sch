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
<package name="CREATIVE_COMMONS">
<text x="-20.32" y="5.08" size="1.778" layer="51">Released under the Creative Commons Attribution Share-Alike 4.0 License</text>
<text x="0" y="2.54" size="1.778" layer="51"> https://creativecommons.org/licenses/by-sa/4.0/</text>
<text x="11.43" y="0" size="1.778" layer="51">Designed by:</text>
</package>
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
<symbol name="LETTER_L">
<wire x1="0" y1="185.42" x2="248.92" y2="185.42" width="0.4064" layer="94"/>
<wire x1="248.92" y1="185.42" x2="248.92" y2="0" width="0.4064" layer="94"/>
<wire x1="0" y1="185.42" x2="0" y2="0" width="0.4064" layer="94"/>
<wire x1="0" y1="0" x2="248.92" y2="0" width="0.4064" layer="94"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.254" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.254" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.254" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.254" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.254" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.254" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.254" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.254" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.254" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.254" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.254" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.254" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.254" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.254" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.254" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94" font="vector">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94" font="vector">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94" font="vector">REV:</text>
<text x="1.524" y="17.78" size="2.54" layer="94" font="vector">TITLE:</text>
<text x="15.494" y="17.78" size="2.7432" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="2.54" y="31.75" size="1.9304" layer="94">Released under the Creative Commons</text>
<text x="2.54" y="27.94" size="1.9304" layer="94">Attribution Share-Alike 4.0 License</text>
<text x="2.54" y="24.13" size="1.9304" layer="94"> https://creativecommons.org/licenses/by-sa/4.0/</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Design by:</text>
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
<deviceset name="FRAME-LETTER" prefix="FRAME">
<description>&lt;b&gt;Schematic Frame&lt;/b&gt;&lt;p&gt;
Standard 8.5x11 US Letter frame</description>
<gates>
<gate name="G$1" symbol="LETTER_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="147.32" y="0" addlevel="must"/>
</gates>
<devices>
<device name="" package="CREATIVE_COMMONS">
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
<library name="MEGASHIELD2">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find boards and modules: Arduino footprints, breadboards, non-RF modules, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="ARDUINO_MEGA-PRO-5V">
<wire x1="1.27" y1="53.34" x2="85.09" y2="53.34" width="0.2032" layer="51"/>
<wire x1="85.09" y1="53.34" x2="87.63" y2="50.8" width="0.2032" layer="51"/>
<wire x1="87.63" y1="40.64" x2="90.17" y2="38.1" width="0.2032" layer="51"/>
<wire x1="90.17" y1="38.1" x2="90.17" y2="3.81" width="0.2032" layer="51"/>
<wire x1="90.17" y1="3.81" x2="87.63" y2="1.27" width="0.2032" layer="51"/>
<wire x1="87.63" y1="1.27" x2="87.63" y2="0" width="0.2032" layer="51"/>
<wire x1="87.63" y1="0" x2="1.27" y2="0" width="0.2032" layer="51"/>
<wire x1="1.27" y1="0" x2="0" y2="1.27" width="0.2032" layer="51"/>
<wire x1="0" y1="1.27" x2="0" y2="52.07" width="0.2032" layer="51"/>
<wire x1="0" y1="52.07" x2="1.27" y2="53.34" width="0.2032" layer="51"/>
<wire x1="87.63" y1="50.8" x2="87.63" y2="40.64" width="0.2032" layer="51"/>
<wire x1="76.835" y1="3.81" x2="78.105" y2="3.81" width="0.2032" layer="21"/>
<wire x1="78.105" y1="3.81" x2="78.74" y2="3.175" width="0.2032" layer="21"/>
<wire x1="78.74" y1="1.905" x2="78.105" y2="1.27" width="0.2032" layer="21"/>
<wire x1="73.66" y1="3.175" x2="74.295" y2="3.81" width="0.2032" layer="21"/>
<wire x1="74.295" y1="3.81" x2="75.565" y2="3.81" width="0.2032" layer="21"/>
<wire x1="75.565" y1="3.81" x2="76.2" y2="3.175" width="0.2032" layer="21"/>
<wire x1="76.2" y1="1.905" x2="75.565" y2="1.27" width="0.2032" layer="21"/>
<wire x1="75.565" y1="1.27" x2="74.295" y2="1.27" width="0.2032" layer="21"/>
<wire x1="74.295" y1="1.27" x2="73.66" y2="1.905" width="0.2032" layer="21"/>
<wire x1="76.835" y1="3.81" x2="76.2" y2="3.175" width="0.2032" layer="21"/>
<wire x1="76.2" y1="1.905" x2="76.835" y2="1.27" width="0.2032" layer="21"/>
<wire x1="78.105" y1="1.27" x2="76.835" y2="1.27" width="0.2032" layer="21"/>
<wire x1="69.215" y1="3.81" x2="70.485" y2="3.81" width="0.2032" layer="21"/>
<wire x1="70.485" y1="3.81" x2="71.12" y2="3.175" width="0.2032" layer="21"/>
<wire x1="71.12" y1="1.905" x2="70.485" y2="1.27" width="0.2032" layer="21"/>
<wire x1="71.12" y1="3.175" x2="71.755" y2="3.81" width="0.2032" layer="21"/>
<wire x1="71.755" y1="3.81" x2="73.025" y2="3.81" width="0.2032" layer="21"/>
<wire x1="73.025" y1="3.81" x2="73.66" y2="3.175" width="0.2032" layer="21"/>
<wire x1="73.66" y1="1.905" x2="73.025" y2="1.27" width="0.2032" layer="21"/>
<wire x1="73.025" y1="1.27" x2="71.755" y2="1.27" width="0.2032" layer="21"/>
<wire x1="71.755" y1="1.27" x2="71.12" y2="1.905" width="0.2032" layer="21"/>
<wire x1="66.04" y1="3.175" x2="66.675" y2="3.81" width="0.2032" layer="21"/>
<wire x1="66.675" y1="3.81" x2="67.945" y2="3.81" width="0.2032" layer="21"/>
<wire x1="67.945" y1="3.81" x2="68.58" y2="3.175" width="0.2032" layer="21"/>
<wire x1="68.58" y1="1.905" x2="67.945" y2="1.27" width="0.2032" layer="21"/>
<wire x1="67.945" y1="1.27" x2="66.675" y2="1.27" width="0.2032" layer="21"/>
<wire x1="66.675" y1="1.27" x2="66.04" y2="1.905" width="0.2032" layer="21"/>
<wire x1="69.215" y1="3.81" x2="68.58" y2="3.175" width="0.2032" layer="21"/>
<wire x1="68.58" y1="1.905" x2="69.215" y2="1.27" width="0.2032" layer="21"/>
<wire x1="70.485" y1="1.27" x2="69.215" y2="1.27" width="0.2032" layer="21"/>
<wire x1="61.595" y1="3.81" x2="62.865" y2="3.81" width="0.2032" layer="21"/>
<wire x1="62.865" y1="3.81" x2="63.5" y2="3.175" width="0.2032" layer="21"/>
<wire x1="63.5" y1="1.905" x2="62.865" y2="1.27" width="0.2032" layer="21"/>
<wire x1="63.5" y1="3.175" x2="64.135" y2="3.81" width="0.2032" layer="21"/>
<wire x1="64.135" y1="3.81" x2="65.405" y2="3.81" width="0.2032" layer="21"/>
<wire x1="65.405" y1="3.81" x2="66.04" y2="3.175" width="0.2032" layer="21"/>
<wire x1="66.04" y1="1.905" x2="65.405" y2="1.27" width="0.2032" layer="21"/>
<wire x1="65.405" y1="1.27" x2="64.135" y2="1.27" width="0.2032" layer="21"/>
<wire x1="64.135" y1="1.27" x2="63.5" y2="1.905" width="0.2032" layer="21"/>
<wire x1="60.96" y1="3.175" x2="60.96" y2="1.905" width="0.2032" layer="21"/>
<wire x1="61.595" y1="3.81" x2="60.96" y2="3.175" width="0.2032" layer="21"/>
<wire x1="60.96" y1="1.905" x2="61.595" y2="1.27" width="0.2032" layer="21"/>
<wire x1="62.865" y1="1.27" x2="61.595" y2="1.27" width="0.2032" layer="21"/>
<wire x1="79.375" y1="3.81" x2="80.645" y2="3.81" width="0.2032" layer="21"/>
<wire x1="80.645" y1="3.81" x2="81.28" y2="3.175" width="0.2032" layer="21"/>
<wire x1="81.28" y1="3.175" x2="81.28" y2="1.905" width="0.2032" layer="21"/>
<wire x1="81.28" y1="1.905" x2="80.645" y2="1.27" width="0.2032" layer="21"/>
<wire x1="79.375" y1="3.81" x2="78.74" y2="3.175" width="0.2032" layer="21"/>
<wire x1="78.74" y1="1.905" x2="79.375" y2="1.27" width="0.2032" layer="21"/>
<wire x1="80.645" y1="1.27" x2="79.375" y2="1.27" width="0.2032" layer="21"/>
<wire x1="71.755" y1="52.07" x2="73.025" y2="52.07" width="0.2032" layer="21"/>
<wire x1="73.025" y1="52.07" x2="73.66" y2="51.435" width="0.2032" layer="21"/>
<wire x1="73.66" y1="50.165" x2="73.025" y2="49.53" width="0.2032" layer="21"/>
<wire x1="68.58" y1="51.435" x2="69.215" y2="52.07" width="0.2032" layer="21"/>
<wire x1="69.215" y1="52.07" x2="70.485" y2="52.07" width="0.2032" layer="21"/>
<wire x1="70.485" y1="52.07" x2="71.12" y2="51.435" width="0.2032" layer="21"/>
<wire x1="71.12" y1="50.165" x2="70.485" y2="49.53" width="0.2032" layer="21"/>
<wire x1="70.485" y1="49.53" x2="69.215" y2="49.53" width="0.2032" layer="21"/>
<wire x1="69.215" y1="49.53" x2="68.58" y2="50.165" width="0.2032" layer="21"/>
<wire x1="71.755" y1="52.07" x2="71.12" y2="51.435" width="0.2032" layer="21"/>
<wire x1="71.12" y1="50.165" x2="71.755" y2="49.53" width="0.2032" layer="21"/>
<wire x1="73.025" y1="49.53" x2="71.755" y2="49.53" width="0.2032" layer="21"/>
<wire x1="64.135" y1="52.07" x2="65.405" y2="52.07" width="0.2032" layer="21"/>
<wire x1="65.405" y1="52.07" x2="66.04" y2="51.435" width="0.2032" layer="21"/>
<wire x1="66.04" y1="50.165" x2="65.405" y2="49.53" width="0.2032" layer="21"/>
<wire x1="66.04" y1="51.435" x2="66.675" y2="52.07" width="0.2032" layer="21"/>
<wire x1="66.675" y1="52.07" x2="67.945" y2="52.07" width="0.2032" layer="21"/>
<wire x1="67.945" y1="52.07" x2="68.58" y2="51.435" width="0.2032" layer="21"/>
<wire x1="68.58" y1="50.165" x2="67.945" y2="49.53" width="0.2032" layer="21"/>
<wire x1="67.945" y1="49.53" x2="66.675" y2="49.53" width="0.2032" layer="21"/>
<wire x1="66.675" y1="49.53" x2="66.04" y2="50.165" width="0.2032" layer="21"/>
<wire x1="60.96" y1="51.435" x2="61.595" y2="52.07" width="0.2032" layer="21"/>
<wire x1="61.595" y1="52.07" x2="62.865" y2="52.07" width="0.2032" layer="21"/>
<wire x1="62.865" y1="52.07" x2="63.5" y2="51.435" width="0.2032" layer="21"/>
<wire x1="63.5" y1="50.165" x2="62.865" y2="49.53" width="0.2032" layer="21"/>
<wire x1="62.865" y1="49.53" x2="61.595" y2="49.53" width="0.2032" layer="21"/>
<wire x1="61.595" y1="49.53" x2="60.96" y2="50.165" width="0.2032" layer="21"/>
<wire x1="64.135" y1="52.07" x2="63.5" y2="51.435" width="0.2032" layer="21"/>
<wire x1="63.5" y1="50.165" x2="64.135" y2="49.53" width="0.2032" layer="21"/>
<wire x1="65.405" y1="49.53" x2="64.135" y2="49.53" width="0.2032" layer="21"/>
<wire x1="56.515" y1="52.07" x2="57.785" y2="52.07" width="0.2032" layer="21"/>
<wire x1="57.785" y1="52.07" x2="58.42" y2="51.435" width="0.2032" layer="21"/>
<wire x1="58.42" y1="50.165" x2="57.785" y2="49.53" width="0.2032" layer="21"/>
<wire x1="58.42" y1="51.435" x2="59.055" y2="52.07" width="0.2032" layer="21"/>
<wire x1="59.055" y1="52.07" x2="60.325" y2="52.07" width="0.2032" layer="21"/>
<wire x1="60.325" y1="52.07" x2="60.96" y2="51.435" width="0.2032" layer="21"/>
<wire x1="60.96" y1="50.165" x2="60.325" y2="49.53" width="0.2032" layer="21"/>
<wire x1="60.325" y1="49.53" x2="59.055" y2="49.53" width="0.2032" layer="21"/>
<wire x1="59.055" y1="49.53" x2="58.42" y2="50.165" width="0.2032" layer="21"/>
<wire x1="55.88" y1="51.435" x2="55.88" y2="50.165" width="0.2032" layer="21"/>
<wire x1="56.515" y1="52.07" x2="55.88" y2="51.435" width="0.2032" layer="21"/>
<wire x1="55.88" y1="50.165" x2="56.515" y2="49.53" width="0.2032" layer="21"/>
<wire x1="57.785" y1="49.53" x2="56.515" y2="49.53" width="0.2032" layer="21"/>
<wire x1="74.295" y1="52.07" x2="75.565" y2="52.07" width="0.2032" layer="21"/>
<wire x1="75.565" y1="52.07" x2="76.2" y2="51.435" width="0.2032" layer="21"/>
<wire x1="76.2" y1="51.435" x2="76.2" y2="50.165" width="0.2032" layer="21"/>
<wire x1="76.2" y1="50.165" x2="75.565" y2="49.53" width="0.2032" layer="21"/>
<wire x1="74.295" y1="52.07" x2="73.66" y2="51.435" width="0.2032" layer="21"/>
<wire x1="73.66" y1="50.165" x2="74.295" y2="49.53" width="0.2032" layer="21"/>
<wire x1="75.565" y1="49.53" x2="74.295" y2="49.53" width="0.2032" layer="21"/>
<wire x1="53.975" y1="3.81" x2="55.245" y2="3.81" width="0.2032" layer="21"/>
<wire x1="55.245" y1="3.81" x2="55.88" y2="3.175" width="0.2032" layer="21"/>
<wire x1="55.88" y1="1.905" x2="55.245" y2="1.27" width="0.2032" layer="21"/>
<wire x1="50.8" y1="3.175" x2="51.435" y2="3.81" width="0.2032" layer="21"/>
<wire x1="51.435" y1="3.81" x2="52.705" y2="3.81" width="0.2032" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.34" y2="3.175" width="0.2032" layer="21"/>
<wire x1="53.34" y1="1.905" x2="52.705" y2="1.27" width="0.2032" layer="21"/>
<wire x1="52.705" y1="1.27" x2="51.435" y2="1.27" width="0.2032" layer="21"/>
<wire x1="51.435" y1="1.27" x2="50.8" y2="1.905" width="0.2032" layer="21"/>
<wire x1="53.975" y1="3.81" x2="53.34" y2="3.175" width="0.2032" layer="21"/>
<wire x1="53.34" y1="1.905" x2="53.975" y2="1.27" width="0.2032" layer="21"/>
<wire x1="55.245" y1="1.27" x2="53.975" y2="1.27" width="0.2032" layer="21"/>
<wire x1="46.355" y1="3.81" x2="47.625" y2="3.81" width="0.2032" layer="21"/>
<wire x1="47.625" y1="3.81" x2="48.26" y2="3.175" width="0.2032" layer="21"/>
<wire x1="48.26" y1="1.905" x2="47.625" y2="1.27" width="0.2032" layer="21"/>
<wire x1="48.26" y1="3.175" x2="48.895" y2="3.81" width="0.2032" layer="21"/>
<wire x1="48.895" y1="3.81" x2="50.165" y2="3.81" width="0.2032" layer="21"/>
<wire x1="50.165" y1="3.81" x2="50.8" y2="3.175" width="0.2032" layer="21"/>
<wire x1="50.8" y1="1.905" x2="50.165" y2="1.27" width="0.2032" layer="21"/>
<wire x1="50.165" y1="1.27" x2="48.895" y2="1.27" width="0.2032" layer="21"/>
<wire x1="48.895" y1="1.27" x2="48.26" y2="1.905" width="0.2032" layer="21"/>
<wire x1="43.18" y1="3.175" x2="43.815" y2="3.81" width="0.2032" layer="21"/>
<wire x1="43.815" y1="3.81" x2="45.085" y2="3.81" width="0.2032" layer="21"/>
<wire x1="45.085" y1="3.81" x2="45.72" y2="3.175" width="0.2032" layer="21"/>
<wire x1="45.72" y1="1.905" x2="45.085" y2="1.27" width="0.2032" layer="21"/>
<wire x1="45.085" y1="1.27" x2="43.815" y2="1.27" width="0.2032" layer="21"/>
<wire x1="43.815" y1="1.27" x2="43.18" y2="1.905" width="0.2032" layer="21"/>
<wire x1="46.355" y1="3.81" x2="45.72" y2="3.175" width="0.2032" layer="21"/>
<wire x1="45.72" y1="1.905" x2="46.355" y2="1.27" width="0.2032" layer="21"/>
<wire x1="47.625" y1="1.27" x2="46.355" y2="1.27" width="0.2032" layer="21"/>
<wire x1="38.735" y1="3.81" x2="40.005" y2="3.81" width="0.2032" layer="21"/>
<wire x1="40.005" y1="3.81" x2="40.64" y2="3.175" width="0.2032" layer="21"/>
<wire x1="40.64" y1="1.905" x2="40.005" y2="1.27" width="0.2032" layer="21"/>
<wire x1="40.64" y1="3.175" x2="41.275" y2="3.81" width="0.2032" layer="21"/>
<wire x1="41.275" y1="3.81" x2="42.545" y2="3.81" width="0.2032" layer="21"/>
<wire x1="42.545" y1="3.81" x2="43.18" y2="3.175" width="0.2032" layer="21"/>
<wire x1="43.18" y1="1.905" x2="42.545" y2="1.27" width="0.2032" layer="21"/>
<wire x1="42.545" y1="1.27" x2="41.275" y2="1.27" width="0.2032" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.64" y2="1.905" width="0.2032" layer="21"/>
<wire x1="38.1" y1="3.175" x2="38.1" y2="1.905" width="0.2032" layer="21"/>
<wire x1="38.735" y1="3.81" x2="38.1" y2="3.175" width="0.2032" layer="21"/>
<wire x1="38.1" y1="1.905" x2="38.735" y2="1.27" width="0.2032" layer="21"/>
<wire x1="40.005" y1="1.27" x2="38.735" y2="1.27" width="0.2032" layer="21"/>
<wire x1="56.515" y1="3.81" x2="57.785" y2="3.81" width="0.2032" layer="21"/>
<wire x1="57.785" y1="3.81" x2="58.42" y2="3.175" width="0.2032" layer="21"/>
<wire x1="58.42" y1="3.175" x2="58.42" y2="1.905" width="0.2032" layer="21"/>
<wire x1="58.42" y1="1.905" x2="57.785" y2="1.27" width="0.2032" layer="21"/>
<wire x1="56.515" y1="3.81" x2="55.88" y2="3.175" width="0.2032" layer="21"/>
<wire x1="55.88" y1="1.905" x2="56.515" y2="1.27" width="0.2032" layer="21"/>
<wire x1="57.785" y1="1.27" x2="56.515" y2="1.27" width="0.2032" layer="21"/>
<wire x1="48.895" y1="52.07" x2="50.165" y2="52.07" width="0.2032" layer="21"/>
<wire x1="50.165" y1="52.07" x2="50.8" y2="51.435" width="0.2032" layer="21"/>
<wire x1="50.8" y1="50.165" x2="50.165" y2="49.53" width="0.2032" layer="21"/>
<wire x1="45.72" y1="51.435" x2="46.355" y2="52.07" width="0.2032" layer="21"/>
<wire x1="46.355" y1="52.07" x2="47.625" y2="52.07" width="0.2032" layer="21"/>
<wire x1="47.625" y1="52.07" x2="48.26" y2="51.435" width="0.2032" layer="21"/>
<wire x1="48.26" y1="50.165" x2="47.625" y2="49.53" width="0.2032" layer="21"/>
<wire x1="47.625" y1="49.53" x2="46.355" y2="49.53" width="0.2032" layer="21"/>
<wire x1="46.355" y1="49.53" x2="45.72" y2="50.165" width="0.2032" layer="21"/>
<wire x1="48.895" y1="52.07" x2="48.26" y2="51.435" width="0.2032" layer="21"/>
<wire x1="48.26" y1="50.165" x2="48.895" y2="49.53" width="0.2032" layer="21"/>
<wire x1="50.165" y1="49.53" x2="48.895" y2="49.53" width="0.2032" layer="21"/>
<wire x1="41.275" y1="52.07" x2="42.545" y2="52.07" width="0.2032" layer="21"/>
<wire x1="42.545" y1="52.07" x2="43.18" y2="51.435" width="0.2032" layer="21"/>
<wire x1="43.18" y1="50.165" x2="42.545" y2="49.53" width="0.2032" layer="21"/>
<wire x1="43.18" y1="51.435" x2="43.815" y2="52.07" width="0.2032" layer="21"/>
<wire x1="43.815" y1="52.07" x2="45.085" y2="52.07" width="0.2032" layer="21"/>
<wire x1="45.085" y1="52.07" x2="45.72" y2="51.435" width="0.2032" layer="21"/>
<wire x1="45.72" y1="50.165" x2="45.085" y2="49.53" width="0.2032" layer="21"/>
<wire x1="45.085" y1="49.53" x2="43.815" y2="49.53" width="0.2032" layer="21"/>
<wire x1="43.815" y1="49.53" x2="43.18" y2="50.165" width="0.2032" layer="21"/>
<wire x1="38.1" y1="51.435" x2="38.735" y2="52.07" width="0.2032" layer="21"/>
<wire x1="38.735" y1="52.07" x2="40.005" y2="52.07" width="0.2032" layer="21"/>
<wire x1="40.005" y1="52.07" x2="40.64" y2="51.435" width="0.2032" layer="21"/>
<wire x1="40.64" y1="50.165" x2="40.005" y2="49.53" width="0.2032" layer="21"/>
<wire x1="40.005" y1="49.53" x2="38.735" y2="49.53" width="0.2032" layer="21"/>
<wire x1="38.735" y1="49.53" x2="38.1" y2="50.165" width="0.2032" layer="21"/>
<wire x1="41.275" y1="52.07" x2="40.64" y2="51.435" width="0.2032" layer="21"/>
<wire x1="40.64" y1="50.165" x2="41.275" y2="49.53" width="0.2032" layer="21"/>
<wire x1="42.545" y1="49.53" x2="41.275" y2="49.53" width="0.2032" layer="21"/>
<wire x1="33.655" y1="52.07" x2="34.925" y2="52.07" width="0.2032" layer="21"/>
<wire x1="34.925" y1="52.07" x2="35.56" y2="51.435" width="0.2032" layer="21"/>
<wire x1="35.56" y1="50.165" x2="34.925" y2="49.53" width="0.2032" layer="21"/>
<wire x1="35.56" y1="51.435" x2="36.195" y2="52.07" width="0.2032" layer="21"/>
<wire x1="36.195" y1="52.07" x2="37.465" y2="52.07" width="0.2032" layer="21"/>
<wire x1="37.465" y1="52.07" x2="38.1" y2="51.435" width="0.2032" layer="21"/>
<wire x1="38.1" y1="50.165" x2="37.465" y2="49.53" width="0.2032" layer="21"/>
<wire x1="37.465" y1="49.53" x2="36.195" y2="49.53" width="0.2032" layer="21"/>
<wire x1="36.195" y1="49.53" x2="35.56" y2="50.165" width="0.2032" layer="21"/>
<wire x1="33.02" y1="51.435" x2="33.02" y2="50.165" width="0.2032" layer="21"/>
<wire x1="33.655" y1="52.07" x2="33.02" y2="51.435" width="0.2032" layer="21"/>
<wire x1="33.02" y1="50.165" x2="33.655" y2="49.53" width="0.2032" layer="21"/>
<wire x1="34.925" y1="49.53" x2="33.655" y2="49.53" width="0.2032" layer="21"/>
<wire x1="51.435" y1="52.07" x2="52.705" y2="52.07" width="0.2032" layer="21"/>
<wire x1="52.705" y1="52.07" x2="53.34" y2="51.435" width="0.2032" layer="21"/>
<wire x1="53.34" y1="51.435" x2="53.34" y2="50.165" width="0.2032" layer="21"/>
<wire x1="53.34" y1="50.165" x2="52.705" y2="49.53" width="0.2032" layer="21"/>
<wire x1="51.435" y1="52.07" x2="50.8" y2="51.435" width="0.2032" layer="21"/>
<wire x1="50.8" y1="50.165" x2="51.435" y2="49.53" width="0.2032" layer="21"/>
<wire x1="52.705" y1="49.53" x2="51.435" y2="49.53" width="0.2032" layer="21"/>
<wire x1="27.051" y1="52.07" x2="28.321" y2="52.07" width="0.2032" layer="21"/>
<wire x1="28.321" y1="52.07" x2="28.956" y2="51.435" width="0.2032" layer="21"/>
<wire x1="28.956" y1="50.165" x2="28.321" y2="49.53" width="0.2032" layer="21"/>
<wire x1="23.876" y1="51.435" x2="24.511" y2="52.07" width="0.2032" layer="21"/>
<wire x1="24.511" y1="52.07" x2="25.781" y2="52.07" width="0.2032" layer="21"/>
<wire x1="25.781" y1="52.07" x2="26.416" y2="51.435" width="0.2032" layer="21"/>
<wire x1="26.416" y1="50.165" x2="25.781" y2="49.53" width="0.2032" layer="21"/>
<wire x1="25.781" y1="49.53" x2="24.511" y2="49.53" width="0.2032" layer="21"/>
<wire x1="24.511" y1="49.53" x2="23.876" y2="50.165" width="0.2032" layer="21"/>
<wire x1="27.051" y1="52.07" x2="26.416" y2="51.435" width="0.2032" layer="21"/>
<wire x1="26.416" y1="50.165" x2="27.051" y2="49.53" width="0.2032" layer="21"/>
<wire x1="28.321" y1="49.53" x2="27.051" y2="49.53" width="0.2032" layer="21"/>
<wire x1="19.431" y1="52.07" x2="20.701" y2="52.07" width="0.2032" layer="21"/>
<wire x1="20.701" y1="52.07" x2="21.336" y2="51.435" width="0.2032" layer="21"/>
<wire x1="21.336" y1="50.165" x2="20.701" y2="49.53" width="0.2032" layer="21"/>
<wire x1="21.336" y1="51.435" x2="21.971" y2="52.07" width="0.2032" layer="21"/>
<wire x1="21.971" y1="52.07" x2="23.241" y2="52.07" width="0.2032" layer="21"/>
<wire x1="23.241" y1="52.07" x2="23.876" y2="51.435" width="0.2032" layer="21"/>
<wire x1="23.876" y1="50.165" x2="23.241" y2="49.53" width="0.2032" layer="21"/>
<wire x1="23.241" y1="49.53" x2="21.971" y2="49.53" width="0.2032" layer="21"/>
<wire x1="21.971" y1="49.53" x2="21.336" y2="50.165" width="0.2032" layer="21"/>
<wire x1="16.256" y1="51.435" x2="16.891" y2="52.07" width="0.2032" layer="21"/>
<wire x1="16.891" y1="52.07" x2="18.161" y2="52.07" width="0.2032" layer="21"/>
<wire x1="18.161" y1="52.07" x2="18.796" y2="51.435" width="0.2032" layer="21"/>
<wire x1="18.796" y1="50.165" x2="18.161" y2="49.53" width="0.2032" layer="21"/>
<wire x1="18.161" y1="49.53" x2="16.891" y2="49.53" width="0.2032" layer="21"/>
<wire x1="16.891" y1="49.53" x2="16.256" y2="50.165" width="0.2032" layer="21"/>
<wire x1="19.431" y1="52.07" x2="18.796" y2="51.435" width="0.2032" layer="21"/>
<wire x1="18.796" y1="50.165" x2="19.431" y2="49.53" width="0.2032" layer="21"/>
<wire x1="20.701" y1="49.53" x2="19.431" y2="49.53" width="0.2032" layer="21"/>
<wire x1="11.811" y1="52.07" x2="13.081" y2="52.07" width="0.2032" layer="21"/>
<wire x1="13.081" y1="52.07" x2="13.716" y2="51.435" width="0.2032" layer="21"/>
<wire x1="13.716" y1="50.165" x2="13.081" y2="49.53" width="0.2032" layer="21"/>
<wire x1="13.716" y1="51.435" x2="14.351" y2="52.07" width="0.2032" layer="21"/>
<wire x1="14.351" y1="52.07" x2="15.621" y2="52.07" width="0.2032" layer="21"/>
<wire x1="15.621" y1="52.07" x2="16.256" y2="51.435" width="0.2032" layer="21"/>
<wire x1="16.256" y1="50.165" x2="15.621" y2="49.53" width="0.2032" layer="21"/>
<wire x1="15.621" y1="49.53" x2="14.351" y2="49.53" width="0.2032" layer="21"/>
<wire x1="14.351" y1="49.53" x2="13.716" y2="50.165" width="0.2032" layer="21"/>
<wire x1="11.176" y1="51.435" x2="11.176" y2="50.165" width="0.2032" layer="21"/>
<wire x1="11.811" y1="52.07" x2="11.176" y2="51.435" width="0.2032" layer="21"/>
<wire x1="11.176" y1="50.165" x2="11.811" y2="49.53" width="0.2032" layer="21"/>
<wire x1="13.081" y1="49.53" x2="11.811" y2="49.53" width="0.2032" layer="21"/>
<wire x1="29.591" y1="52.07" x2="30.861" y2="52.07" width="0.2032" layer="21"/>
<wire x1="30.861" y1="52.07" x2="31.496" y2="51.435" width="0.2032" layer="21"/>
<wire x1="31.496" y1="51.435" x2="31.496" y2="50.165" width="0.2032" layer="21"/>
<wire x1="31.496" y1="50.165" x2="30.861" y2="49.53" width="0.2032" layer="21"/>
<wire x1="29.591" y1="52.07" x2="28.956" y2="51.435" width="0.2032" layer="21"/>
<wire x1="28.956" y1="50.165" x2="29.591" y2="49.53" width="0.2032" layer="21"/>
<wire x1="30.861" y1="49.53" x2="29.591" y2="49.53" width="0.2032" layer="21"/>
<wire x1="51.562" y1="31.75" x2="50.927" y2="31.115" width="0.2032" layer="51"/>
<wire x1="50.927" y1="29.845" x2="51.562" y2="29.21" width="0.2032" layer="51"/>
<wire x1="51.562" y1="29.21" x2="50.927" y2="28.575" width="0.2032" layer="51"/>
<wire x1="50.927" y1="27.305" x2="51.562" y2="26.67" width="0.2032" layer="51"/>
<wire x1="51.562" y1="26.67" x2="50.927" y2="26.035" width="0.2032" layer="51"/>
<wire x1="50.927" y1="24.765" x2="51.562" y2="24.13" width="0.2032" layer="51"/>
<wire x1="51.562" y1="31.75" x2="55.372" y2="31.75" width="0.2032" layer="51"/>
<wire x1="55.372" y1="31.75" x2="56.007" y2="31.115" width="0.2032" layer="51"/>
<wire x1="56.007" y1="31.115" x2="56.007" y2="29.845" width="0.2032" layer="51"/>
<wire x1="56.007" y1="29.845" x2="55.372" y2="29.21" width="0.2032" layer="51"/>
<wire x1="55.372" y1="29.21" x2="56.007" y2="28.575" width="0.2032" layer="51"/>
<wire x1="56.007" y1="28.575" x2="56.007" y2="27.305" width="0.2032" layer="51"/>
<wire x1="56.007" y1="27.305" x2="55.372" y2="26.67" width="0.2032" layer="51"/>
<wire x1="55.372" y1="26.67" x2="56.007" y2="26.035" width="0.2032" layer="51"/>
<wire x1="56.007" y1="26.035" x2="56.007" y2="24.765" width="0.2032" layer="51"/>
<wire x1="56.007" y1="24.765" x2="55.372" y2="24.13" width="0.2032" layer="51"/>
<wire x1="55.372" y1="29.21" x2="51.562" y2="29.21" width="0.2032" layer="51"/>
<wire x1="55.372" y1="26.67" x2="51.562" y2="26.67" width="0.2032" layer="51"/>
<wire x1="55.372" y1="24.13" x2="51.562" y2="24.13" width="0.2032" layer="51"/>
<wire x1="50.927" y1="26.035" x2="50.927" y2="24.765" width="0.2032" layer="51"/>
<wire x1="50.927" y1="28.575" x2="50.927" y2="27.305" width="0.2032" layer="51"/>
<wire x1="50.927" y1="31.115" x2="50.927" y2="29.845" width="0.2032" layer="51"/>
<wire x1="50.592" y1="29.845" x2="50.592" y2="31.115" width="0.2032" layer="51"/>
<wire x1="85.725" y1="29.21" x2="86.36" y2="29.845" width="0.1524" layer="21"/>
<wire x1="86.36" y1="31.115" x2="85.725" y2="31.75" width="0.1524" layer="21"/>
<wire x1="85.725" y1="31.75" x2="86.36" y2="32.385" width="0.1524" layer="21"/>
<wire x1="86.36" y1="33.655" x2="85.725" y2="34.29" width="0.1524" layer="21"/>
<wire x1="85.725" y1="34.29" x2="86.36" y2="34.925" width="0.1524" layer="21"/>
<wire x1="86.36" y1="36.195" x2="85.725" y2="36.83" width="0.1524" layer="21"/>
<wire x1="85.725" y1="36.83" x2="86.36" y2="37.465" width="0.1524" layer="21"/>
<wire x1="86.36" y1="38.735" x2="85.725" y2="39.37" width="0.1524" layer="21"/>
<wire x1="85.725" y1="39.37" x2="86.36" y2="40.005" width="0.1524" layer="21"/>
<wire x1="86.36" y1="41.275" x2="85.725" y2="41.91" width="0.1524" layer="21"/>
<wire x1="85.725" y1="41.91" x2="86.36" y2="42.545" width="0.1524" layer="21"/>
<wire x1="86.36" y1="43.815" x2="85.725" y2="44.45" width="0.1524" layer="21"/>
<wire x1="81.915" y1="29.21" x2="81.28" y2="29.845" width="0.1524" layer="21"/>
<wire x1="81.28" y1="29.845" x2="81.28" y2="31.115" width="0.1524" layer="21"/>
<wire x1="81.28" y1="31.115" x2="81.915" y2="31.75" width="0.1524" layer="21"/>
<wire x1="81.915" y1="31.75" x2="81.28" y2="32.385" width="0.1524" layer="21"/>
<wire x1="81.28" y1="32.385" x2="81.28" y2="33.655" width="0.1524" layer="21"/>
<wire x1="81.28" y1="33.655" x2="81.915" y2="34.29" width="0.1524" layer="21"/>
<wire x1="81.915" y1="34.29" x2="81.28" y2="34.925" width="0.1524" layer="21"/>
<wire x1="81.28" y1="34.925" x2="81.28" y2="36.195" width="0.1524" layer="21"/>
<wire x1="81.28" y1="36.195" x2="81.915" y2="36.83" width="0.1524" layer="21"/>
<wire x1="81.915" y1="36.83" x2="81.28" y2="37.465" width="0.1524" layer="21"/>
<wire x1="81.28" y1="37.465" x2="81.28" y2="38.735" width="0.1524" layer="21"/>
<wire x1="81.28" y1="38.735" x2="81.915" y2="39.37" width="0.1524" layer="21"/>
<wire x1="81.915" y1="39.37" x2="81.28" y2="40.005" width="0.1524" layer="21"/>
<wire x1="81.28" y1="40.005" x2="81.28" y2="41.275" width="0.1524" layer="21"/>
<wire x1="81.28" y1="41.275" x2="81.915" y2="41.91" width="0.1524" layer="21"/>
<wire x1="81.915" y1="41.91" x2="81.28" y2="42.545" width="0.1524" layer="21"/>
<wire x1="81.28" y1="42.545" x2="81.28" y2="43.815" width="0.1524" layer="21"/>
<wire x1="81.28" y1="43.815" x2="81.915" y2="44.45" width="0.1524" layer="21"/>
<wire x1="81.915" y1="44.45" x2="81.28" y2="45.085" width="0.1524" layer="21"/>
<wire x1="81.28" y1="45.085" x2="81.28" y2="46.355" width="0.1524" layer="21"/>
<wire x1="81.28" y1="46.355" x2="81.915" y2="46.99" width="0.1524" layer="21"/>
<wire x1="81.915" y1="46.99" x2="81.28" y2="47.625" width="0.1524" layer="21"/>
<wire x1="81.28" y1="47.625" x2="81.28" y2="48.895" width="0.1524" layer="21"/>
<wire x1="81.28" y1="48.895" x2="81.915" y2="49.53" width="0.1524" layer="21"/>
<wire x1="85.725" y1="49.53" x2="86.36" y2="48.895" width="0.1524" layer="21"/>
<wire x1="85.725" y1="46.99" x2="86.36" y2="47.625" width="0.1524" layer="21"/>
<wire x1="85.725" y1="46.99" x2="86.36" y2="46.355" width="0.1524" layer="21"/>
<wire x1="85.725" y1="44.45" x2="86.36" y2="45.085" width="0.1524" layer="21"/>
<wire x1="81.915" y1="31.75" x2="85.725" y2="31.75" width="0.1524" layer="21"/>
<wire x1="81.915" y1="34.29" x2="85.725" y2="34.29" width="0.1524" layer="21"/>
<wire x1="81.915" y1="36.83" x2="85.725" y2="36.83" width="0.1524" layer="21"/>
<wire x1="81.915" y1="39.37" x2="85.725" y2="39.37" width="0.1524" layer="21"/>
<wire x1="81.915" y1="41.91" x2="85.725" y2="41.91" width="0.1524" layer="21"/>
<wire x1="81.915" y1="44.45" x2="85.725" y2="44.45" width="0.1524" layer="21"/>
<wire x1="81.915" y1="46.99" x2="85.725" y2="46.99" width="0.1524" layer="21"/>
<wire x1="86.36" y1="47.625" x2="86.36" y2="48.895" width="0.1524" layer="21"/>
<wire x1="86.36" y1="45.085" x2="86.36" y2="46.355" width="0.1524" layer="21"/>
<wire x1="86.36" y1="42.545" x2="86.36" y2="43.815" width="0.1524" layer="21"/>
<wire x1="86.36" y1="40.005" x2="86.36" y2="41.275" width="0.1524" layer="21"/>
<wire x1="86.36" y1="37.465" x2="86.36" y2="38.735" width="0.1524" layer="21"/>
<wire x1="86.36" y1="34.925" x2="86.36" y2="36.195" width="0.1524" layer="21"/>
<wire x1="86.36" y1="32.385" x2="86.36" y2="33.655" width="0.1524" layer="21"/>
<wire x1="86.36" y1="29.845" x2="86.36" y2="31.115" width="0.1524" layer="21"/>
<wire x1="85.725" y1="8.89" x2="86.36" y2="9.525" width="0.1524" layer="21"/>
<wire x1="86.36" y1="10.795" x2="85.725" y2="11.43" width="0.1524" layer="21"/>
<wire x1="85.725" y1="11.43" x2="86.36" y2="12.065" width="0.1524" layer="21"/>
<wire x1="86.36" y1="13.335" x2="85.725" y2="13.97" width="0.1524" layer="21"/>
<wire x1="85.725" y1="13.97" x2="86.36" y2="14.605" width="0.1524" layer="21"/>
<wire x1="86.36" y1="15.875" x2="85.725" y2="16.51" width="0.1524" layer="21"/>
<wire x1="85.725" y1="16.51" x2="86.36" y2="17.145" width="0.1524" layer="21"/>
<wire x1="86.36" y1="18.415" x2="85.725" y2="19.05" width="0.1524" layer="21"/>
<wire x1="85.725" y1="19.05" x2="86.36" y2="19.685" width="0.1524" layer="21"/>
<wire x1="86.36" y1="20.955" x2="85.725" y2="21.59" width="0.1524" layer="21"/>
<wire x1="85.725" y1="21.59" x2="86.36" y2="22.225" width="0.1524" layer="21"/>
<wire x1="86.36" y1="23.495" x2="85.725" y2="24.13" width="0.1524" layer="21"/>
<wire x1="81.915" y1="8.89" x2="81.28" y2="9.525" width="0.1524" layer="21"/>
<wire x1="81.28" y1="9.525" x2="81.28" y2="10.795" width="0.1524" layer="21"/>
<wire x1="81.28" y1="10.795" x2="81.915" y2="11.43" width="0.1524" layer="21"/>
<wire x1="81.915" y1="11.43" x2="81.28" y2="12.065" width="0.1524" layer="21"/>
<wire x1="81.28" y1="12.065" x2="81.28" y2="13.335" width="0.1524" layer="21"/>
<wire x1="81.28" y1="13.335" x2="81.915" y2="13.97" width="0.1524" layer="21"/>
<wire x1="81.915" y1="13.97" x2="81.28" y2="14.605" width="0.1524" layer="21"/>
<wire x1="81.28" y1="14.605" x2="81.28" y2="15.875" width="0.1524" layer="21"/>
<wire x1="81.28" y1="15.875" x2="81.915" y2="16.51" width="0.1524" layer="21"/>
<wire x1="81.915" y1="16.51" x2="81.28" y2="17.145" width="0.1524" layer="21"/>
<wire x1="81.28" y1="17.145" x2="81.28" y2="18.415" width="0.1524" layer="21"/>
<wire x1="81.28" y1="18.415" x2="81.915" y2="19.05" width="0.1524" layer="21"/>
<wire x1="81.915" y1="19.05" x2="81.28" y2="19.685" width="0.1524" layer="21"/>
<wire x1="81.28" y1="19.685" x2="81.28" y2="20.955" width="0.1524" layer="21"/>
<wire x1="81.28" y1="20.955" x2="81.915" y2="21.59" width="0.1524" layer="21"/>
<wire x1="81.915" y1="21.59" x2="81.28" y2="22.225" width="0.1524" layer="21"/>
<wire x1="81.28" y1="22.225" x2="81.28" y2="23.495" width="0.1524" layer="21"/>
<wire x1="81.28" y1="23.495" x2="81.915" y2="24.13" width="0.1524" layer="21"/>
<wire x1="81.915" y1="24.13" x2="81.28" y2="24.765" width="0.1524" layer="21"/>
<wire x1="81.28" y1="24.765" x2="81.28" y2="26.035" width="0.1524" layer="21"/>
<wire x1="81.28" y1="26.035" x2="81.915" y2="26.67" width="0.1524" layer="21"/>
<wire x1="81.915" y1="26.67" x2="81.28" y2="27.305" width="0.1524" layer="21"/>
<wire x1="81.28" y1="27.305" x2="81.28" y2="28.575" width="0.1524" layer="21"/>
<wire x1="81.28" y1="28.575" x2="81.915" y2="29.21" width="0.1524" layer="21"/>
<wire x1="85.725" y1="29.21" x2="86.36" y2="28.575" width="0.1524" layer="21"/>
<wire x1="85.725" y1="26.67" x2="86.36" y2="27.305" width="0.1524" layer="21"/>
<wire x1="85.725" y1="26.67" x2="86.36" y2="26.035" width="0.1524" layer="21"/>
<wire x1="85.725" y1="24.13" x2="86.36" y2="24.765" width="0.1524" layer="21"/>
<wire x1="81.915" y1="11.43" x2="85.725" y2="11.43" width="0.1524" layer="21"/>
<wire x1="81.915" y1="13.97" x2="85.725" y2="13.97" width="0.1524" layer="21"/>
<wire x1="81.915" y1="16.51" x2="85.725" y2="16.51" width="0.1524" layer="21"/>
<wire x1="81.915" y1="19.05" x2="85.725" y2="19.05" width="0.1524" layer="21"/>
<wire x1="81.915" y1="21.59" x2="85.725" y2="21.59" width="0.1524" layer="21"/>
<wire x1="81.915" y1="24.13" x2="85.725" y2="24.13" width="0.1524" layer="21"/>
<wire x1="81.915" y1="26.67" x2="85.725" y2="26.67" width="0.1524" layer="21"/>
<wire x1="81.915" y1="29.21" x2="85.725" y2="29.21" width="0.1524" layer="21"/>
<wire x1="86.36" y1="27.305" x2="86.36" y2="28.575" width="0.1524" layer="21"/>
<wire x1="86.36" y1="24.765" x2="86.36" y2="26.035" width="0.1524" layer="21"/>
<wire x1="86.36" y1="22.225" x2="86.36" y2="23.495" width="0.1524" layer="21"/>
<wire x1="86.36" y1="19.685" x2="86.36" y2="20.955" width="0.1524" layer="21"/>
<wire x1="86.36" y1="17.145" x2="86.36" y2="18.415" width="0.1524" layer="21"/>
<wire x1="86.36" y1="14.605" x2="86.36" y2="15.875" width="0.1524" layer="21"/>
<wire x1="86.36" y1="12.065" x2="86.36" y2="13.335" width="0.1524" layer="21"/>
<wire x1="86.36" y1="9.525" x2="86.36" y2="10.795" width="0.1524" layer="21"/>
<wire x1="85.725" y1="8.89" x2="86.36" y2="8.255" width="0.2032" layer="21"/>
<wire x1="86.36" y1="6.985" x2="85.725" y2="6.35" width="0.2032" layer="21"/>
<wire x1="81.28" y1="8.255" x2="81.28" y2="6.985" width="0.2032" layer="21"/>
<wire x1="81.915" y1="8.89" x2="81.28" y2="8.255" width="0.2032" layer="21"/>
<wire x1="81.28" y1="6.985" x2="81.915" y2="6.35" width="0.2032" layer="21"/>
<wire x1="86.36" y1="8.255" x2="86.36" y2="6.985" width="0.2032" layer="21"/>
<wire x1="81.915" y1="8.89" x2="85.725" y2="8.89" width="0.2032" layer="21"/>
<wire x1="85.725" y1="6.35" x2="81.915" y2="6.35" width="0.2032" layer="21"/>
<wire x1="85.725" y1="52.07" x2="86.36" y2="51.435" width="0.2032" layer="21"/>
<wire x1="86.36" y1="50.165" x2="85.725" y2="49.53" width="0.2032" layer="21"/>
<wire x1="81.28" y1="51.435" x2="81.28" y2="50.165" width="0.2032" layer="21"/>
<wire x1="81.915" y1="52.07" x2="81.28" y2="51.435" width="0.2032" layer="21"/>
<wire x1="81.28" y1="50.165" x2="81.915" y2="49.53" width="0.2032" layer="21"/>
<wire x1="86.36" y1="51.435" x2="86.36" y2="50.165" width="0.2032" layer="21"/>
<wire x1="81.915" y1="52.07" x2="85.725" y2="52.07" width="0.2032" layer="21"/>
<wire x1="85.725" y1="49.53" x2="81.915" y2="49.53" width="0.2032" layer="21"/>
<wire x1="82.55" y1="6.2738" x2="82.55" y2="5.5372" width="0.3048" layer="21"/>
<wire x1="82.55" y1="5.5372" x2="85.09" y2="5.5372" width="0.3048" layer="21"/>
<wire x1="85.09" y1="5.5372" x2="85.09" y2="6.2992" width="0.3048" layer="21"/>
<wire x1="33.02" y1="3.175" x2="33.655" y2="3.81" width="0.2032" layer="21"/>
<wire x1="33.655" y1="3.81" x2="34.925" y2="3.81" width="0.2032" layer="21"/>
<wire x1="34.925" y1="3.81" x2="35.56" y2="3.175" width="0.2032" layer="21"/>
<wire x1="35.56" y1="1.905" x2="34.925" y2="1.27" width="0.2032" layer="21"/>
<wire x1="34.925" y1="1.27" x2="33.655" y2="1.27" width="0.2032" layer="21"/>
<wire x1="33.655" y1="1.27" x2="33.02" y2="1.905" width="0.2032" layer="21"/>
<wire x1="28.575" y1="3.81" x2="29.845" y2="3.81" width="0.2032" layer="21"/>
<wire x1="29.845" y1="3.81" x2="30.48" y2="3.175" width="0.2032" layer="21"/>
<wire x1="30.48" y1="1.905" x2="29.845" y2="1.27" width="0.2032" layer="21"/>
<wire x1="30.48" y1="3.175" x2="31.115" y2="3.81" width="0.2032" layer="21"/>
<wire x1="31.115" y1="3.81" x2="32.385" y2="3.81" width="0.2032" layer="21"/>
<wire x1="32.385" y1="3.81" x2="33.02" y2="3.175" width="0.2032" layer="21"/>
<wire x1="33.02" y1="1.905" x2="32.385" y2="1.27" width="0.2032" layer="21"/>
<wire x1="32.385" y1="1.27" x2="31.115" y2="1.27" width="0.2032" layer="21"/>
<wire x1="31.115" y1="1.27" x2="30.48" y2="1.905" width="0.2032" layer="21"/>
<wire x1="25.4" y1="3.175" x2="26.035" y2="3.81" width="0.2032" layer="21"/>
<wire x1="26.035" y1="3.81" x2="27.305" y2="3.81" width="0.2032" layer="21"/>
<wire x1="27.305" y1="3.81" x2="27.94" y2="3.175" width="0.2032" layer="21"/>
<wire x1="27.94" y1="1.905" x2="27.305" y2="1.27" width="0.2032" layer="21"/>
<wire x1="27.305" y1="1.27" x2="26.035" y2="1.27" width="0.2032" layer="21"/>
<wire x1="26.035" y1="1.27" x2="25.4" y2="1.905" width="0.2032" layer="21"/>
<wire x1="28.575" y1="3.81" x2="27.94" y2="3.175" width="0.2032" layer="21"/>
<wire x1="27.94" y1="1.905" x2="28.575" y2="1.27" width="0.2032" layer="21"/>
<wire x1="29.845" y1="1.27" x2="28.575" y2="1.27" width="0.2032" layer="21"/>
<wire x1="20.955" y1="3.81" x2="22.225" y2="3.81" width="0.2032" layer="21"/>
<wire x1="22.225" y1="3.81" x2="22.86" y2="3.175" width="0.2032" layer="21"/>
<wire x1="22.86" y1="1.905" x2="22.225" y2="1.27" width="0.2032" layer="21"/>
<wire x1="22.86" y1="3.175" x2="23.495" y2="3.81" width="0.2032" layer="21"/>
<wire x1="23.495" y1="3.81" x2="24.765" y2="3.81" width="0.2032" layer="21"/>
<wire x1="24.765" y1="3.81" x2="25.4" y2="3.175" width="0.2032" layer="21"/>
<wire x1="25.4" y1="1.905" x2="24.765" y2="1.27" width="0.2032" layer="21"/>
<wire x1="24.765" y1="1.27" x2="23.495" y2="1.27" width="0.2032" layer="21"/>
<wire x1="23.495" y1="1.27" x2="22.86" y2="1.905" width="0.2032" layer="21"/>
<wire x1="20.32" y1="3.175" x2="20.32" y2="1.905" width="0.2032" layer="21"/>
<wire x1="20.955" y1="3.81" x2="20.32" y2="3.175" width="0.2032" layer="21"/>
<wire x1="20.32" y1="1.905" x2="20.955" y2="1.27" width="0.2032" layer="21"/>
<wire x1="22.225" y1="1.27" x2="20.955" y2="1.27" width="0.2032" layer="21"/>
<wire x1="35.56" y1="3.175" x2="35.56" y2="1.905" width="0.2032" layer="21"/>
<pad name="A9" x="64.77" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A10" x="67.31" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A11" x="69.85" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A12" x="72.39" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A13" x="74.93" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A14" x="77.47" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A15" x="80.01" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A8" x="62.23" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="15" x="59.69" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="16" x="62.23" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="17" x="64.77" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="18" x="67.31" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="19" x="69.85" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="20" x="72.39" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="21" x="74.93" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="14" x="57.15" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A1" x="41.91" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A2" x="44.45" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A3" x="46.99" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A4" x="49.53" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A5" x="52.07" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A6" x="54.61" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A7" x="57.15" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="A0" x="39.37" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="6" x="36.83" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5" x="39.37" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="41.91" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="44.45" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="46.99" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="1" x="49.53" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="0" x="52.07" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="7" x="34.29" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@4" x="14.986" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="13" x="17.526" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="12" x="20.066" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="11" x="22.606" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="10" x="25.146" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="9" x="27.686" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="8" x="30.226" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="AREF" x="12.446" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="37" x="85.09" y="30.48" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="36" x="82.55" y="30.48" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="35" x="85.09" y="33.02" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="34" x="82.55" y="33.02" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="33" x="85.09" y="35.56" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="32" x="82.55" y="35.56" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="31" x="85.09" y="38.1" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="30" x="82.55" y="38.1" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="29" x="85.09" y="40.64" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="28" x="82.55" y="40.64" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="27" x="85.09" y="43.18" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="26" x="82.55" y="43.18" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="25" x="85.09" y="45.72" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="24" x="82.55" y="45.72" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="23" x="85.09" y="48.26" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="22" x="82.55" y="48.26" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="53" x="85.09" y="10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="52" x="82.55" y="10.16" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="51" x="85.09" y="12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="50" x="82.55" y="12.7" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="49" x="85.09" y="15.24" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="48" x="82.55" y="15.24" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="47" x="85.09" y="17.78" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="46" x="82.55" y="17.78" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="45" x="85.09" y="20.32" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="44" x="82.55" y="20.32" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="43" x="85.09" y="22.86" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="42" x="82.55" y="22.86" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="41" x="85.09" y="25.4" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="40" x="82.55" y="25.4" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="39" x="85.09" y="27.94" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="38" x="82.55" y="27.94" drill="1.016" diameter="1.8796" shape="octagon" rot="R90"/>
<pad name="GND@2" x="82.55" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@3" x="85.09" y="7.62" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@1" x="82.55" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@2" x="85.09" y="50.8" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="RESET" x="21.59" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3.3V" x="24.13" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="5V@0" x="26.67" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@0" x="29.21" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="GND@1" x="31.75" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="VIN" x="34.29" y="2.54" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="52.451" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">0</text>
<text x="49.911" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">1</text>
<text x="47.371" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">2</text>
<text x="44.831" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">3</text>
<text x="42.291" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">4</text>
<text x="39.751" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">5</text>
<text x="37.211" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">6</text>
<text x="34.671" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">7</text>
<text x="30.861" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">8</text>
<text x="28.321" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">9</text>
<text x="25.781" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">10</text>
<text x="23.241" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">11</text>
<text x="20.701" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">12</text>
<text x="18.161" y="47.752" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">13</text>
<text x="57.531" y="46.863" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">14</text>
<text x="60.071" y="46.863" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">15</text>
<text x="62.611" y="46.863" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">16</text>
<text x="65.151" y="46.863" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">17</text>
<text x="67.691" y="46.863" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">18</text>
<text x="70.231" y="46.863" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">19</text>
<text x="72.771" y="46.863" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">20</text>
<text x="75.311" y="46.863" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">21</text>
<text x="78.2574" y="47.498" size="0.6096" layer="21" font="vector" ratio="15">22</text>
<text x="78.2574" y="44.958" size="0.6096" layer="21" font="vector" ratio="15">24</text>
<text x="78.2574" y="42.418" size="0.6096" layer="21" font="vector" ratio="15">26</text>
<text x="78.2574" y="39.878" size="0.6096" layer="21" font="vector" ratio="15">28</text>
<text x="78.2574" y="37.338" size="0.6096" layer="21" font="vector" ratio="15">30</text>
<text x="78.2574" y="34.798" size="0.6096" layer="21" font="vector" ratio="15">32</text>
<text x="78.2574" y="32.258" size="0.6096" layer="21" font="vector" ratio="15">34</text>
<text x="78.2574" y="29.718" size="0.6096" layer="21" font="vector" ratio="15">36</text>
<text x="78.2574" y="27.178" size="0.6096" layer="21" font="vector" ratio="15">38</text>
<text x="78.2574" y="24.638" size="0.6096" layer="21" font="vector" ratio="15">40</text>
<text x="78.2574" y="22.098" size="0.6096" layer="21" font="vector" ratio="15">42</text>
<text x="78.2574" y="19.558" size="0.6096" layer="21" font="vector" ratio="15">44</text>
<text x="78.2574" y="17.018" size="0.6096" layer="21" font="vector" ratio="15">46</text>
<text x="78.2574" y="11.938" size="0.6096" layer="21" font="vector" ratio="15">50</text>
<text x="78.2574" y="14.478" size="0.6096" layer="21" font="vector" ratio="15">48</text>
<text x="78.2574" y="9.398" size="0.6096" layer="21" font="vector" ratio="15">52</text>
<text x="86.995" y="37.3634" size="0.6096" layer="21" font="vector" ratio="15">31</text>
<text x="86.995" y="34.8234" size="0.6096" layer="21" font="vector" ratio="15">33</text>
<text x="86.995" y="32.2834" size="0.6096" layer="21" font="vector" ratio="15">35</text>
<text x="86.995" y="29.7434" size="0.6096" layer="21" font="vector" ratio="15">37</text>
<text x="86.995" y="27.2034" size="0.6096" layer="21" font="vector" ratio="15">39</text>
<text x="86.995" y="24.6634" size="0.6096" layer="21" font="vector" ratio="15">41</text>
<text x="86.995" y="22.1234" size="0.6096" layer="21" font="vector" ratio="15">43</text>
<text x="86.995" y="19.5834" size="0.6096" layer="21" font="vector" ratio="15">45</text>
<text x="86.995" y="17.0434" size="0.6096" layer="21" font="vector" ratio="15">47</text>
<text x="86.995" y="14.5034" size="0.6096" layer="21" font="vector" ratio="15">49</text>
<text x="86.995" y="11.9634" size="0.6096" layer="21" font="vector" ratio="15">51</text>
<text x="86.995" y="9.4234" size="0.6096" layer="21" font="vector" ratio="15">53</text>
<text x="40.132" y="4.5974" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">A0</text>
<text x="86.995" y="6.8834" size="1.016" layer="21" font="vector" ratio="15">GND</text>
<text x="22.098" y="4.5974" size="0.3048" layer="21" font="vector" ratio="15" rot="R90">RESET</text>
<text x="24.638" y="4.5974" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">3.3V</text>
<text x="27.178" y="4.5974" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">5V</text>
<text x="29.718" y="4.5974" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="32.258" y="4.5974" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">GND</text>
<text x="34.798" y="4.5974" size="0.6096" layer="21" font="vector" ratio="15" rot="R90">Vin</text>
<text x="14.224" y="49.022" size="0.6096" layer="21" font="vector" ratio="15" rot="R270">GND</text>
<text x="11.811" y="49.022" size="0.6096" layer="21" font="vector" ratio="15" rot="R270">AREF</text>
<text x="80.01" y="52.07" size="0.889" layer="21" font="vector" ratio="15">5V</text>
<rectangle x1="77.216" y1="2.286" x2="77.724" y2="2.794" layer="51"/>
<rectangle x1="74.676" y1="2.286" x2="75.184" y2="2.794" layer="51"/>
<rectangle x1="72.136" y1="2.286" x2="72.644" y2="2.794" layer="51"/>
<rectangle x1="69.596" y1="2.286" x2="70.104" y2="2.794" layer="51"/>
<rectangle x1="67.056" y1="2.286" x2="67.564" y2="2.794" layer="51"/>
<rectangle x1="64.516" y1="2.286" x2="65.024" y2="2.794" layer="51"/>
<rectangle x1="61.976" y1="2.286" x2="62.484" y2="2.794" layer="51"/>
<rectangle x1="79.756" y1="2.286" x2="80.264" y2="2.794" layer="51"/>
<rectangle x1="72.136" y1="50.546" x2="72.644" y2="51.054" layer="51"/>
<rectangle x1="69.596" y1="50.546" x2="70.104" y2="51.054" layer="51"/>
<rectangle x1="67.056" y1="50.546" x2="67.564" y2="51.054" layer="51"/>
<rectangle x1="64.516" y1="50.546" x2="65.024" y2="51.054" layer="51"/>
<rectangle x1="61.976" y1="50.546" x2="62.484" y2="51.054" layer="51"/>
<rectangle x1="59.436" y1="50.546" x2="59.944" y2="51.054" layer="51"/>
<rectangle x1="56.896" y1="50.546" x2="57.404" y2="51.054" layer="51"/>
<rectangle x1="74.676" y1="50.546" x2="75.184" y2="51.054" layer="51"/>
<rectangle x1="54.356" y1="2.286" x2="54.864" y2="2.794" layer="51"/>
<rectangle x1="51.816" y1="2.286" x2="52.324" y2="2.794" layer="51"/>
<rectangle x1="49.276" y1="2.286" x2="49.784" y2="2.794" layer="51"/>
<rectangle x1="46.736" y1="2.286" x2="47.244" y2="2.794" layer="51"/>
<rectangle x1="44.196" y1="2.286" x2="44.704" y2="2.794" layer="51"/>
<rectangle x1="41.656" y1="2.286" x2="42.164" y2="2.794" layer="51"/>
<rectangle x1="39.116" y1="2.286" x2="39.624" y2="2.794" layer="51"/>
<rectangle x1="56.896" y1="2.286" x2="57.404" y2="2.794" layer="51"/>
<rectangle x1="49.276" y1="50.546" x2="49.784" y2="51.054" layer="51"/>
<rectangle x1="46.736" y1="50.546" x2="47.244" y2="51.054" layer="51"/>
<rectangle x1="44.196" y1="50.546" x2="44.704" y2="51.054" layer="51"/>
<rectangle x1="41.656" y1="50.546" x2="42.164" y2="51.054" layer="51"/>
<rectangle x1="39.116" y1="50.546" x2="39.624" y2="51.054" layer="51"/>
<rectangle x1="36.576" y1="50.546" x2="37.084" y2="51.054" layer="51"/>
<rectangle x1="34.036" y1="50.546" x2="34.544" y2="51.054" layer="51"/>
<rectangle x1="51.816" y1="50.546" x2="52.324" y2="51.054" layer="51"/>
<rectangle x1="27.432" y1="50.546" x2="27.94" y2="51.054" layer="51"/>
<rectangle x1="24.892" y1="50.546" x2="25.4" y2="51.054" layer="51"/>
<rectangle x1="22.352" y1="50.546" x2="22.86" y2="51.054" layer="51"/>
<rectangle x1="19.812" y1="50.546" x2="20.32" y2="51.054" layer="51"/>
<rectangle x1="17.272" y1="50.546" x2="17.78" y2="51.054" layer="51"/>
<rectangle x1="14.732" y1="50.546" x2="15.24" y2="51.054" layer="51"/>
<rectangle x1="12.192" y1="50.546" x2="12.7" y2="51.054" layer="51"/>
<rectangle x1="29.972" y1="50.546" x2="30.48" y2="51.054" layer="51"/>
<rectangle x1="84.836" y1="30.226" x2="85.344" y2="30.734" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="30.226" x2="82.804" y2="30.734" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="32.766" x2="82.804" y2="33.274" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="32.766" x2="85.344" y2="33.274" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="35.306" x2="82.804" y2="35.814" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="35.306" x2="85.344" y2="35.814" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="37.846" x2="82.804" y2="38.354" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="40.386" x2="82.804" y2="40.894" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="42.926" x2="82.804" y2="43.434" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="37.846" x2="85.344" y2="38.354" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="40.386" x2="85.344" y2="40.894" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="42.926" x2="85.344" y2="43.434" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="45.466" x2="82.804" y2="45.974" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="45.466" x2="85.344" y2="45.974" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="48.006" x2="82.804" y2="48.514" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="48.006" x2="85.344" y2="48.514" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="9.906" x2="85.344" y2="10.414" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="9.906" x2="82.804" y2="10.414" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="12.446" x2="82.804" y2="12.954" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="12.446" x2="85.344" y2="12.954" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="14.986" x2="82.804" y2="15.494" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="14.986" x2="85.344" y2="15.494" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="17.526" x2="82.804" y2="18.034" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="20.066" x2="82.804" y2="20.574" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="22.606" x2="82.804" y2="23.114" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="17.526" x2="85.344" y2="18.034" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="20.066" x2="85.344" y2="20.574" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="22.606" x2="85.344" y2="23.114" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="25.146" x2="82.804" y2="25.654" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="25.146" x2="85.344" y2="25.654" layer="51" rot="R90"/>
<rectangle x1="82.296" y1="27.686" x2="82.804" y2="28.194" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="27.686" x2="85.344" y2="28.194" layer="51" rot="R90"/>
<rectangle x1="84.836" y1="7.366" x2="85.344" y2="7.874" layer="51"/>
<rectangle x1="82.296" y1="7.366" x2="82.804" y2="7.874" layer="51"/>
<rectangle x1="84.836" y1="50.546" x2="85.344" y2="51.054" layer="51"/>
<rectangle x1="82.296" y1="50.546" x2="82.804" y2="51.054" layer="51"/>
<rectangle x1="34.036" y1="2.286" x2="34.544" y2="2.794" layer="51"/>
<rectangle x1="31.496" y1="2.286" x2="32.004" y2="2.794" layer="51"/>
<rectangle x1="28.956" y1="2.286" x2="29.464" y2="2.794" layer="51"/>
<rectangle x1="26.416" y1="2.286" x2="26.924" y2="2.794" layer="51"/>
<rectangle x1="23.876" y1="2.286" x2="24.384" y2="2.794" layer="51"/>
<rectangle x1="21.336" y1="2.286" x2="21.844" y2="2.794" layer="51"/>
<hole x="3.81" y="50.8" drill="3.2"/>
<hole x="2.54" y="2.54" drill="3.2"/>
<hole x="78.74" y="50.8" drill="3.2"/>
<hole x="85.09" y="2.54" drill="3.2"/>
<pad name="VCC@5" x="54.61" y="30.48" drill="0.8"/>
<pad name="MOSI" x="54.61" y="27.94" drill="0.8"/>
<pad name="GND@5" x="54.61" y="25.4" drill="0.8"/>
<pad name="RESET@1" x="52.07" y="25.4" drill="0.8"/>
<pad name="SCK" x="52.07" y="27.94" drill="0.8"/>
<text x="48.26" y="24.765" size="0.6096" layer="21" font="vector" ratio="15">RESET</text>
<text x="48.26" y="27.305" size="0.6096" layer="21" font="vector" ratio="15">SCK</text>
<text x="48.26" y="29.845" size="0.6096" layer="21" font="vector" ratio="15">MISO</text>
<text x="57.15" y="29.845" size="0.6096" layer="21" font="vector" ratio="15">VCC</text>
<text x="57.15" y="27.305" size="0.6096" layer="21" font="vector" ratio="15">MOSI</text>
<text x="57.15" y="24.765" size="0.6096" layer="21" font="vector" ratio="15">GND</text>
<pad name="MISO" x="52.07" y="30.48" drill="0.8"/>
</package>
</packages>
<symbols>
<symbol name="ARDUINO-MEGA">
<wire x1="-15.24" y1="-60.96" x2="15.24" y2="-60.96" width="0.254" layer="94"/>
<wire x1="15.24" y1="-60.96" x2="15.24" y2="53.34" width="0.254" layer="94"/>
<wire x1="15.24" y1="53.34" x2="-15.24" y2="53.34" width="0.254" layer="94"/>
<wire x1="-15.24" y1="53.34" x2="-15.24" y2="-60.96" width="0.254" layer="94"/>
<text x="-15.24" y="54.102" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
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
<pin name="SCK" x="20.32" y="-53.34" length="middle" rot="R180"/>
<pin name="MISO" x="20.32" y="-55.88" length="middle" rot="R180"/>
<pin name="MOSI" x="20.32" y="-58.42" length="middle" rot="R180"/>
<pin name="GND@5" x="-20.32" y="-53.34" length="middle"/>
<pin name="5V@3" x="-20.32" y="-55.88" length="middle"/>
<pin name="RESET@1" x="-20.32" y="-58.42" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO-MEGA-V2">
<gates>
<gate name="G$1" symbol="ARDUINO-MEGA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINO_MEGA-PRO-5V">
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
<connect gate="G$1" pin="5V@3" pad="VCC@5"/>
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
<connect gate="G$1" pin="GND@5" pad="GND@5"/>
<connect gate="G$1" pin="MISO" pad="MISO"/>
<connect gate="G$1" pin="MOSI" pad="MOSI"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="RESET@1" pad="RESET@1"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
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
<library name="SparkFun-Boards">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find boards and modules: Arduino footprints, breadboards, non-RF modules, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="BIG_EASY_DRIVER_PACK">
<text x="-11.43" y="-7.62" size="0.8128" layer="21">EN</text>
<text x="-8.89" y="-7.62" size="0.8128" layer="21">M1</text>
<text x="-6.35" y="-7.62" size="0.8128" layer="21">M2</text>
<text x="-3.81" y="-7.62" size="0.8128" layer="21">M3</text>
<text x="-1.27" y="-7.62" size="0.8128" layer="21">RST</text>
<text x="1.27" y="-7.62" size="0.8128" layer="21">SLP</text>
<text x="3.81" y="-7.62" size="0.8128" layer="21">VCC</text>
<text x="6.35" y="-7.62" size="0.8128" layer="21">GND</text>
<text x="8.89" y="-7.62" size="0.8128" layer="21">STP</text>
<text x="11.43" y="-7.62" size="0.8128" layer="21">DIR</text>
<text x="-6.35" y="12.7" size="1.016" layer="21">A1</text>
<text x="-3.81" y="12.7" size="1.016" layer="21">A2</text>
<text x="-1.27" y="12.7" size="1.016" layer="21">B1</text>
<text x="1.27" y="12.7" size="1.016" layer="21">B2</text>
<text x="6.35" y="12.7" size="1.016" layer="21">GND</text>
<text x="10.16" y="12.7" size="1.016" layer="21">M+</text>
<wire x1="-17.78" y1="20.32" x2="19.05" y2="20.32" width="0.127" layer="21"/>
<wire x1="19.05" y1="20.32" x2="19.05" y2="-10.16" width="0.127" layer="21"/>
<wire x1="19.05" y1="-10.16" x2="-17.78" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-17.78" y1="-10.16" x2="-17.78" y2="20.32" width="0.127" layer="21"/>
<pad name="A1" x="-5.08" y="15.24" drill="1.2" shape="octagon"/>
<pad name="A2" x="-2.54" y="15.24" drill="1.2" shape="octagon"/>
<pad name="B1" x="0" y="15.24" drill="1.2" shape="octagon"/>
<pad name="B2" x="2.54" y="15.24" drill="1.2" shape="octagon"/>
<pad name="GND+" x="7.62" y="15.24" drill="1.2" shape="octagon"/>
<pad name="M+" x="10.16" y="15.24" drill="1.2" shape="octagon"/>
<pad name="EN" x="-10.16" y="-5.08" drill="1.2" shape="octagon"/>
<pad name="M1" x="-7.62" y="-5.08" drill="1.2" shape="octagon"/>
<pad name="M2" x="-5.08" y="-5.08" drill="1.2" shape="octagon"/>
<pad name="M3" x="-2.54" y="-5.08" drill="1.2" shape="octagon"/>
<pad name="RST" x="0" y="-5.08" drill="1.2" shape="octagon"/>
<pad name="SLP" x="2.54" y="-5.08" drill="1.2" shape="octagon"/>
<pad name="VCC" x="5.08" y="-5.08" drill="1.2" shape="octagon"/>
<pad name="GND" x="7.62" y="-5.08" drill="1.2" shape="octagon"/>
<pad name="STP" x="10.16" y="-5.08" drill="1.2" shape="octagon"/>
<pad name="DIR" x="12.7" y="-5.08" drill="1.2" shape="octagon"/>
</package>
</packages>
<symbols>
<symbol name="BIG_EASY_DRIVER_SYB">
<wire x1="-17.78" y1="-17.78" x2="-17.78" y2="15.24" width="0.254" layer="121"/>
<wire x1="-17.78" y1="15.24" x2="15.24" y2="15.24" width="0.254" layer="121"/>
<wire x1="15.24" y1="15.24" x2="15.24" y2="-17.78" width="0.254" layer="121"/>
<wire x1="15.24" y1="-17.78" x2="-17.78" y2="-17.78" width="0.254" layer="121"/>
<pin name="A1" x="-10.16" y="20.32" length="middle" rot="R270"/>
<pin name="A2" x="-5.08" y="20.32" length="middle" rot="R270"/>
<pin name="B1" x="0" y="20.32" length="middle" rot="R270"/>
<pin name="B2" x="5.08" y="20.32" length="middle" rot="R270"/>
<pin name="EN" x="-12.7" y="-22.86" length="middle" rot="R90"/>
<pin name="M1" x="-10.16" y="-22.86" length="middle" rot="R90"/>
<pin name="M2" x="-7.62" y="-22.86" length="middle" rot="R90"/>
<pin name="M3" x="-5.08" y="-22.86" length="middle" rot="R90"/>
<pin name="RS" x="-2.54" y="-22.86" length="middle" rot="R90"/>
<pin name="SLP" x="0" y="-22.86" length="middle" rot="R90"/>
<pin name="VCC" x="2.54" y="-22.86" length="middle" rot="R90"/>
<pin name="GND" x="5.08" y="-22.86" length="middle" rot="R90"/>
<pin name="STEP" x="7.62" y="-22.86" length="middle" rot="R90"/>
<pin name="DIR" x="10.16" y="-22.86" length="middle" rot="R90"/>
<pin name="VCC+" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="GND+" x="20.32" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BIG_EASY_DRIVER">
<gates>
<gate name="G$1" symbol="BIG_EASY_DRIVER_SYB" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="BIG_EASY_DRIVER_PACK">
<connects>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="B1" pad="B1"/>
<connect gate="G$1" pin="B2" pad="B2"/>
<connect gate="G$1" pin="DIR" pad="DIR"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND+" pad="GND+"/>
<connect gate="G$1" pin="M1" pad="M1"/>
<connect gate="G$1" pin="M2" pad="M2"/>
<connect gate="G$1" pin="M3" pad="M3"/>
<connect gate="G$1" pin="RS" pad="RST"/>
<connect gate="G$1" pin="SLP" pad="SLP"/>
<connect gate="G$1" pin="STEP" pad="STP"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VCC+" pad="M+"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-molex-micro-fit-3_0">
<description>&lt;b&gt;Molex  Micro-Fit 3.0TM Interconnect System&lt;/b&gt;
&lt;p&gt;The Micro-Fit 3.0 is a unique interconnect system designed to meet the need for a high contact density signal or power connector and incorporates many of the features previously found on larger power connectors. These 3.00mm (.118") pitch connectors are the perfect choice when you need compact connectors that carry up to 5 amperes of current. Micro-Fit products are available in circuit sizes 2 to 24 for single and dual row, wire-to-board and wire-to-wire applications. The product family has over 500 part numbers, with many retention choices including fitting nails, solderable clips, and offset terminal retention.

&lt;p&gt;The Micro-Fit 3.0 CPI? and Micro-Fit 3.0 BMI? CPI are compliant pin interface vertical header product extensions to this well known Micro-Fit family. These products are designed for high-density applications which require press-fit headers. The CPI products are appropriate for both power and signal uses as they can carry up to 5 amperes per circuit.

&lt;p&gt;Micro-Fit 3.0 Overmolded Cable Assemblies are available in multiple circuit sizes and cable lengths, featuring a rugged strain relief for signal and power applications. For other cable assembly options, contact harness@molex.com.
&lt;p&gt;Available configurations:
&lt;ul&gt;
&lt;li&gt;Wire to Wire
&lt;li&gt;Wire to Board
&lt;li&gt;BMI (blind mating interface) Wire to Wire Configuration
&lt;li&gt;BMI (blind mating interface) Wire to Board Configuration
&lt;li&gt;BMI (blind mating interface) Board to Board Configuration
&lt;/ul&gt;

&lt;author&gt;Created by divashin@gmail.com&lt;/author&gt;&lt;p&gt;
&lt;p&gt;

&lt;p&gt;Documentation: &lt;u&gt;http://www.molex.com/molex/common/staticLoader.jsp?fileName=/cmc_upload/0/000/0-8/368/full-matrix.html&amp;pageTitle=Micro-Fit,%203.0&amp;chanName=family&amp;frellink=Introduction&amp;familyOID=-8368&amp;channel=Products&amp;oid=-8368&lt;/u&gt;&lt;p&gt;</description>
<packages>
<package name="43650-0315">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, with Pegs;  P/N: SD-43650-0315, SD-43650-0316, SD-43650-0317

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500215_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500215_sd.pdf&lt;/a&gt;</description>
<wire x1="-6.575" y1="1.9" x2="-6.3" y2="1.9" width="0.254" layer="21"/>
<wire x1="-6.3" y1="1.9" x2="-4.57" y2="1.9" width="0.254" layer="21"/>
<wire x1="-4.57" y1="1.9" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="1.9" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.4" y1="1.9" x2="4.57" y2="1.9" width="0.254" layer="21"/>
<wire x1="4.57" y1="1.9" x2="6.3" y2="1.9" width="0.254" layer="21"/>
<wire x1="6.3" y1="1.9" x2="6.575" y2="1.9" width="0.254" layer="21"/>
<wire x1="6.575" y1="1.9" x2="6.575" y2="-2.47" width="0.254" layer="21"/>
<wire x1="5.5" y1="-2.47" x2="5.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="5.5" y1="-1.9" x2="4.57" y2="-1.9" width="0.254" layer="21"/>
<wire x1="4.57" y1="-1.9" x2="2.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="2.5" y1="-1.9" x2="1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="1.5" y1="-1.9" x2="-1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-1.9" x2="-2.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-1.9" x2="-4.57" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4.57" y1="-1.9" x2="-5.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-5.5" y1="-1.9" x2="-5.5" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-5.5" y1="-2.47" x2="-6.3" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-6.3" y1="-2.47" x2="-6.575" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-6.575" y1="-2.47" x2="-6.575" y2="1.9" width="0.254" layer="21"/>
<wire x1="5.5" y1="-2.47" x2="6.3" y2="-2.47" width="0.254" layer="21"/>
<wire x1="6.3" y1="-2.47" x2="6.575" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="1.4" y2="3.1" width="0.254" layer="21"/>
<wire x1="1.4" y1="3.1" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.5" y1="-1.9" x2="1.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="1.5" y1="-2.5" x2="2.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="2.5" y1="-2.5" x2="2.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-1.9" x2="-2.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-2.5" x2="-1.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-2.5" x2="-1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-6.3" y1="-2.47" x2="-6.3" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.3" y1="-1" x2="-6.3" y2="1" width="0.2" layer="21"/>
<wire x1="-6.3" y1="1" x2="-6.3" y2="1.9" width="0.2" layer="21"/>
<wire x1="6.3" y1="-2.47" x2="6.3" y2="-1" width="0.2" layer="21"/>
<wire x1="6.3" y1="-1" x2="6.3" y2="1" width="0.2" layer="21"/>
<wire x1="6.3" y1="1" x2="6.3" y2="1.9" width="0.2" layer="21"/>
<wire x1="-4.57" y1="-1.9" x2="-4.57" y2="-1" width="0.2" layer="21"/>
<wire x1="-4.57" y1="-1" x2="-4.57" y2="1" width="0.2" layer="21"/>
<wire x1="-4.57" y1="1" x2="-4.57" y2="1.9" width="0.2" layer="21"/>
<wire x1="4.57" y1="1.9" x2="4.57" y2="1" width="0.2" layer="21"/>
<wire x1="4.57" y1="1" x2="4.57" y2="-1" width="0.2" layer="21"/>
<wire x1="4.57" y1="-1" x2="4.57" y2="-1.9" width="0.2" layer="21"/>
<wire x1="-4.57" y1="1" x2="-5.2" y2="1" width="0.2" layer="21"/>
<wire x1="-5.2" y1="1" x2="-6.3" y2="1" width="0.2" layer="21"/>
<wire x1="-4.57" y1="-1" x2="-5.2" y2="-1" width="0.2" layer="21"/>
<wire x1="-5.2" y1="-1" x2="-6.3" y2="-1" width="0.2" layer="21"/>
<wire x1="4.57" y1="1" x2="5.2" y2="1" width="0.2" layer="21"/>
<wire x1="5.2" y1="1" x2="6.3" y2="1" width="0.2" layer="21"/>
<wire x1="4.57" y1="-1" x2="5.2" y2="-1" width="0.2" layer="21"/>
<wire x1="5.2" y1="-1" x2="6.3" y2="-1" width="0.2" layer="21"/>
<wire x1="-5.2" y1="1" x2="-5.2" y2="0.5" width="0.2" layer="21"/>
<wire x1="-5.2" y1="0.5" x2="-5.5" y2="0.5" width="0.2" layer="21"/>
<wire x1="-5.5" y1="0.5" x2="-5.5" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-5.5" y1="-0.5" x2="-5.2" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-5.2" y1="-0.5" x2="-5.2" y2="-1" width="0.2" layer="21"/>
<wire x1="5.2" y1="1" x2="5.2" y2="0.5" width="0.2" layer="21"/>
<wire x1="5.2" y1="0.5" x2="5.5" y2="0.5" width="0.2" layer="21"/>
<wire x1="5.5" y1="0.5" x2="5.5" y2="-0.5" width="0.2" layer="21"/>
<wire x1="5.5" y1="-0.5" x2="5.2" y2="-0.5" width="0.2" layer="21"/>
<wire x1="5.2" y1="-0.5" x2="5.2" y2="-1" width="0.2" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="-0.762" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-0.762" x2="-1.27" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.762" y1="-1.27" x2="-1.27" y2="-0.762" width="0.254" layer="21"/>
<wire x1="1.73" y1="1.27" x2="4.27" y2="1.27" width="0.254" layer="21"/>
<wire x1="4.27" y1="1.27" x2="4.27" y2="-1.27" width="0.254" layer="21"/>
<wire x1="4.27" y1="-1.27" x2="2.238" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.73" y1="-0.762" x2="1.73" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.238" y1="-1.27" x2="1.73" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-4.27" y1="1.27" x2="-1.73" y2="1.27" width="0.254" layer="21"/>
<wire x1="-1.73" y1="1.27" x2="-1.73" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-1.73" y1="-1.27" x2="-3.762" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-4.27" y1="-0.762" x2="-4.27" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.762" y1="-1.27" x2="-4.27" y2="-0.762" width="0.254" layer="21"/>
<pad name="P$1" x="3" y="0" drill="1.02" shape="square"/>
<pad name="P$2" x="0" y="0" drill="1.02"/>
<pad name="P$3" x="-3" y="0" drill="1.02"/>
<hole x="6" y="-1.96" drill="1.27"/>
<hole x="-6" y="-1.96" drill="1.27"/>
</package>
<package name="43650-0321">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, with Solderable Retention Clips;  P/N: SD-43650-0321, SD-43650-0322, SD-43650-0323

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500221_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500221_sd.pdf&lt;/a&gt;</description>
<wire x1="-6.575" y1="1.9" x2="-6.3" y2="1.9" width="0.254" layer="21"/>
<wire x1="-6.3" y1="1.9" x2="-4.57" y2="1.9" width="0.254" layer="21"/>
<wire x1="-4.57" y1="1.9" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="1.9" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.4" y1="1.9" x2="4.57" y2="1.9" width="0.254" layer="21"/>
<wire x1="4.57" y1="1.9" x2="6.3" y2="1.9" width="0.254" layer="21"/>
<wire x1="6.3" y1="1.9" x2="6.575" y2="1.9" width="0.254" layer="21"/>
<wire x1="6.575" y1="1.9" x2="6.575" y2="-2.47" width="0.254" layer="21"/>
<wire x1="5.5" y1="-2.47" x2="5.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="5.5" y1="-1.9" x2="4.57" y2="-1.9" width="0.254" layer="21"/>
<wire x1="4.57" y1="-1.9" x2="2.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="2.5" y1="-1.9" x2="1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="1.5" y1="-1.9" x2="-1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-1.9" x2="-2.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-1.9" x2="-4.57" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4.57" y1="-1.9" x2="-5.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-5.5" y1="-1.9" x2="-5.5" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-5.5" y1="-2.47" x2="-6.3" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-6.3" y1="-2.47" x2="-6.575" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-6.575" y1="-2.47" x2="-6.575" y2="1.9" width="0.254" layer="21"/>
<wire x1="5.5" y1="-2.47" x2="6.3" y2="-2.47" width="0.254" layer="21"/>
<wire x1="6.3" y1="-2.47" x2="6.575" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="1.4" y2="3.1" width="0.254" layer="21"/>
<wire x1="1.4" y1="3.1" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.5" y1="-1.9" x2="1.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="1.5" y1="-2.5" x2="2.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="2.5" y1="-2.5" x2="2.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-1.9" x2="-2.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-2.5" y1="-2.5" x2="-1.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-2.5" x2="-1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-6.3" y1="-2.47" x2="-6.3" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.3" y1="-1" x2="-6.3" y2="1" width="0.2" layer="21"/>
<wire x1="-6.3" y1="1" x2="-6.3" y2="1.9" width="0.2" layer="21"/>
<wire x1="6.3" y1="-2.47" x2="6.3" y2="-1" width="0.2" layer="21"/>
<wire x1="6.3" y1="-1" x2="6.3" y2="1" width="0.2" layer="21"/>
<wire x1="6.3" y1="1" x2="6.3" y2="1.9" width="0.2" layer="21"/>
<wire x1="-4.57" y1="-1.9" x2="-4.57" y2="-1" width="0.2" layer="21"/>
<wire x1="-4.57" y1="-1" x2="-4.57" y2="1" width="0.2" layer="21"/>
<wire x1="-4.57" y1="1" x2="-4.57" y2="1.9" width="0.2" layer="21"/>
<wire x1="4.57" y1="1.9" x2="4.57" y2="1" width="0.2" layer="21"/>
<wire x1="4.57" y1="1" x2="4.57" y2="-1" width="0.2" layer="21"/>
<wire x1="4.57" y1="-1" x2="4.57" y2="-1.9" width="0.2" layer="21"/>
<wire x1="-4.57" y1="1" x2="-5.2" y2="1" width="0.2" layer="21"/>
<wire x1="-5.2" y1="1" x2="-6.3" y2="1" width="0.2" layer="21"/>
<wire x1="-4.57" y1="-1" x2="-5.2" y2="-1" width="0.2" layer="21"/>
<wire x1="-5.2" y1="-1" x2="-6.3" y2="-1" width="0.2" layer="21"/>
<wire x1="4.57" y1="1" x2="5.2" y2="1" width="0.2" layer="21"/>
<wire x1="5.2" y1="1" x2="6.3" y2="1" width="0.2" layer="21"/>
<wire x1="4.57" y1="-1" x2="5.2" y2="-1" width="0.2" layer="21"/>
<wire x1="5.2" y1="-1" x2="6.3" y2="-1" width="0.2" layer="21"/>
<wire x1="-5.2" y1="1" x2="-5.2" y2="0.5" width="0.2" layer="21"/>
<wire x1="-5.2" y1="0.5" x2="-5.5" y2="0.5" width="0.2" layer="21"/>
<wire x1="-5.5" y1="0.5" x2="-5.5" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-5.5" y1="-0.5" x2="-5.2" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-5.2" y1="-0.5" x2="-5.2" y2="-1" width="0.2" layer="21"/>
<wire x1="5.2" y1="1" x2="5.2" y2="0.5" width="0.2" layer="21"/>
<wire x1="5.2" y1="0.5" x2="5.5" y2="0.5" width="0.2" layer="21"/>
<wire x1="5.5" y1="0.5" x2="5.5" y2="-0.5" width="0.2" layer="21"/>
<wire x1="5.5" y1="-0.5" x2="5.2" y2="-0.5" width="0.2" layer="21"/>
<wire x1="5.2" y1="-0.5" x2="5.2" y2="-1" width="0.2" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.73" y1="1.27" x2="4.27" y2="1.27" width="0.254" layer="21"/>
<wire x1="4.27" y1="1.27" x2="4.27" y2="-1.27" width="0.254" layer="21"/>
<wire x1="4.27" y1="-1.27" x2="2.238" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.73" y1="-0.762" x2="1.73" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.238" y1="-1.27" x2="1.73" y2="-0.762" width="0.254" layer="21"/>
<wire x1="1.27" y1="-1.27" x2="-1.27" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.254" layer="21"/>
<wire x1="-4.27" y1="1.27" x2="-1.73" y2="1.27" width="0.254" layer="21"/>
<wire x1="-1.73" y1="1.27" x2="-1.73" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-1.73" y1="-1.27" x2="-4.27" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-4.27" y1="-1.27" x2="-4.27" y2="1.27" width="0.254" layer="21"/>
<smd name="P$1" x="3" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<smd name="P$2" x="0" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<smd name="P$3" x="-3" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<hole x="5.15" y="0" drill="2.41"/>
<hole x="-5.15" y="0" drill="2.41"/>
</package>
<package name="43650-0324">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, with Solder Tabs;  P/N: SD-43650-0324, SD-43650-0325, SD-43650-0326

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500224_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500224_sd.pdf&lt;/a&gt;</description>
<wire x1="-6.5386" y1="1.973" x2="-6.2636" y2="1.973" width="0.254" layer="21"/>
<wire x1="-6.2636" y1="1.973" x2="-4.5336" y2="1.973" width="0.254" layer="21"/>
<wire x1="-4.5336" y1="1.973" x2="-1.3636" y2="1.973" width="0.254" layer="21"/>
<wire x1="-1.3636" y1="1.973" x2="1.4364" y2="1.973" width="0.254" layer="21"/>
<wire x1="1.4364" y1="1.973" x2="4.6064" y2="1.973" width="0.254" layer="21"/>
<wire x1="4.6064" y1="1.973" x2="6.3364" y2="1.973" width="0.254" layer="21"/>
<wire x1="6.3364" y1="1.973" x2="6.6114" y2="1.973" width="0.254" layer="21"/>
<wire x1="6.6114" y1="1.973" x2="6.6114" y2="-2.397" width="0.254" layer="21"/>
<wire x1="5.5364" y1="-2.397" x2="5.5364" y2="-1.827" width="0.254" layer="21"/>
<wire x1="5.5364" y1="-1.827" x2="4.6064" y2="-1.827" width="0.254" layer="21"/>
<wire x1="4.6064" y1="-1.827" x2="1.5364" y2="-1.827" width="0.254" layer="21"/>
<wire x1="1.5364" y1="-1.827" x2="0.5364" y2="-1.827" width="0.254" layer="21"/>
<wire x1="0.5364" y1="-1.827" x2="-0.4636" y2="-1.827" width="0.254" layer="21"/>
<wire x1="-0.4636" y1="-1.827" x2="-1.4636" y2="-1.827" width="0.254" layer="21"/>
<wire x1="-1.4636" y1="-1.827" x2="-4.5336" y2="-1.827" width="0.254" layer="21"/>
<wire x1="-4.5336" y1="-1.827" x2="-5.4636" y2="-1.827" width="0.254" layer="21"/>
<wire x1="-5.4636" y1="-1.827" x2="-5.4636" y2="-2.397" width="0.254" layer="21"/>
<wire x1="-5.4636" y1="-2.397" x2="-6.2636" y2="-2.397" width="0.254" layer="21"/>
<wire x1="-6.2636" y1="-2.397" x2="-6.5386" y2="-2.397" width="0.254" layer="21"/>
<wire x1="-6.5386" y1="-2.397" x2="-6.5386" y2="1.973" width="0.254" layer="21"/>
<wire x1="5.5364" y1="-2.397" x2="6.3364" y2="-2.397" width="0.254" layer="21"/>
<wire x1="6.3364" y1="-2.397" x2="6.6114" y2="-2.397" width="0.254" layer="21"/>
<wire x1="-1.3636" y1="3.173" x2="1.4364" y2="3.173" width="0.254" layer="21"/>
<wire x1="1.4364" y1="3.173" x2="1.4364" y2="1.973" width="0.254" layer="21"/>
<wire x1="-1.3636" y1="3.173" x2="-1.3636" y2="1.973" width="0.254" layer="21"/>
<wire x1="0.5364" y1="-1.827" x2="0.5364" y2="-2.427" width="0.254" layer="21"/>
<wire x1="0.5364" y1="-2.427" x2="1.5364" y2="-2.427" width="0.254" layer="21"/>
<wire x1="1.5364" y1="-2.427" x2="1.5364" y2="-1.827" width="0.254" layer="21"/>
<wire x1="-1.4636" y1="-1.827" x2="-1.4636" y2="-2.427" width="0.254" layer="21"/>
<wire x1="-1.4636" y1="-2.427" x2="-0.4636" y2="-2.427" width="0.254" layer="21"/>
<wire x1="-0.4636" y1="-2.427" x2="-0.4636" y2="-1.827" width="0.254" layer="21"/>
<wire x1="-6.2636" y1="-2.397" x2="-6.2636" y2="-0.927" width="0.2" layer="21"/>
<wire x1="-6.2636" y1="-0.927" x2="-6.2636" y2="1.073" width="0.2" layer="21"/>
<wire x1="-6.2636" y1="1.073" x2="-6.2636" y2="1.973" width="0.2" layer="21"/>
<wire x1="6.3364" y1="-2.397" x2="6.3364" y2="-0.927" width="0.2" layer="21"/>
<wire x1="6.3364" y1="-0.927" x2="6.3364" y2="1.073" width="0.2" layer="21"/>
<wire x1="6.3364" y1="1.073" x2="6.3364" y2="1.973" width="0.2" layer="21"/>
<wire x1="-4.5336" y1="-1.827" x2="-4.5336" y2="-0.927" width="0.2" layer="21"/>
<wire x1="-4.5336" y1="-0.927" x2="-4.5336" y2="1.073" width="0.2" layer="21"/>
<wire x1="-4.5336" y1="1.073" x2="-4.5336" y2="1.973" width="0.2" layer="21"/>
<wire x1="4.6064" y1="1.973" x2="4.6064" y2="1.073" width="0.2" layer="21"/>
<wire x1="4.6064" y1="1.073" x2="4.6064" y2="-0.927" width="0.2" layer="21"/>
<wire x1="4.6064" y1="-0.927" x2="4.6064" y2="-1.827" width="0.2" layer="21"/>
<wire x1="-4.5336" y1="1.073" x2="-5.1636" y2="1.073" width="0.2" layer="21"/>
<wire x1="-5.1636" y1="1.073" x2="-6.2636" y2="1.073" width="0.2" layer="21"/>
<wire x1="-4.5336" y1="-0.927" x2="-5.1636" y2="-0.927" width="0.2" layer="21"/>
<wire x1="-5.1636" y1="-0.927" x2="-6.2636" y2="-0.927" width="0.2" layer="21"/>
<wire x1="4.6064" y1="1.073" x2="5.2364" y2="1.073" width="0.2" layer="21"/>
<wire x1="5.2364" y1="1.073" x2="6.3364" y2="1.073" width="0.2" layer="21"/>
<wire x1="4.6064" y1="-0.927" x2="5.2364" y2="-0.927" width="0.2" layer="21"/>
<wire x1="5.2364" y1="-0.927" x2="6.3364" y2="-0.927" width="0.2" layer="21"/>
<wire x1="-5.1636" y1="1.073" x2="-5.1636" y2="0.573" width="0.2" layer="21"/>
<wire x1="-5.1636" y1="0.573" x2="-5.4636" y2="0.573" width="0.2" layer="21"/>
<wire x1="-5.4636" y1="0.573" x2="-5.4636" y2="-0.427" width="0.2" layer="21"/>
<wire x1="-5.4636" y1="-0.427" x2="-5.1636" y2="-0.427" width="0.2" layer="21"/>
<wire x1="-5.1636" y1="-0.427" x2="-5.1636" y2="-0.927" width="0.2" layer="21"/>
<wire x1="5.2364" y1="1.073" x2="5.2364" y2="0.573" width="0.2" layer="21"/>
<wire x1="5.2364" y1="0.573" x2="5.5364" y2="0.573" width="0.2" layer="21"/>
<wire x1="5.5364" y1="0.573" x2="5.5364" y2="-0.427" width="0.2" layer="21"/>
<wire x1="5.5364" y1="-0.427" x2="5.2364" y2="-0.427" width="0.2" layer="21"/>
<wire x1="5.2364" y1="-0.427" x2="5.2364" y2="-0.927" width="0.2" layer="21"/>
<wire x1="-1.2336" y1="1.343" x2="1.3064" y2="1.343" width="0.254" layer="21"/>
<wire x1="1.3064" y1="1.343" x2="1.3064" y2="-1.197" width="0.254" layer="21"/>
<wire x1="1.7664" y1="1.343" x2="4.3064" y2="1.343" width="0.254" layer="21"/>
<wire x1="4.3064" y1="1.343" x2="4.3064" y2="-1.197" width="0.254" layer="21"/>
<wire x1="4.3064" y1="-1.197" x2="2.2744" y2="-1.197" width="0.254" layer="21"/>
<wire x1="1.7664" y1="-0.689" x2="1.7664" y2="1.343" width="0.254" layer="21"/>
<wire x1="2.2744" y1="-1.197" x2="1.7664" y2="-0.689" width="0.254" layer="21"/>
<wire x1="1.3064" y1="-1.197" x2="-1.2336" y2="-1.197" width="0.254" layer="21"/>
<wire x1="-1.2336" y1="-1.197" x2="-1.2336" y2="1.343" width="0.254" layer="21"/>
<wire x1="-4.2336" y1="1.343" x2="-1.6936" y2="1.343" width="0.254" layer="21"/>
<wire x1="-1.6936" y1="1.343" x2="-1.6936" y2="-1.197" width="0.254" layer="21"/>
<wire x1="-1.6936" y1="-1.197" x2="-3.7256" y2="-1.197" width="0.254" layer="21"/>
<wire x1="-4.2336" y1="-0.689" x2="-4.2336" y2="1.343" width="0.254" layer="21"/>
<wire x1="-3.7256" y1="-1.197" x2="-4.2336" y2="-0.689" width="0.254" layer="21"/>
<smd name="P$1" x="3.0364" y="3.503" dx="1.27" dy="2.54" layer="1"/>
<smd name="P$2" x="0.0364" y="3.503" dx="1.27" dy="2.54" layer="1"/>
<smd name="TAB2" x="-6.8536" y="0.073" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="TAB1" x="6.9264" y="0.073" dx="1.65" dy="3.43" layer="1" rot="R270"/>
<smd name="P$3" x="-2.9636" y="3.503" dx="1.27" dy="2.54" layer="1"/>
</package>
<package name="43650-0300">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Right Angle, with Pegs;  P/N: SD-43650-0300, SD-43650-0301, SD-43650-0302

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500200_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500200_sd.pdf&lt;/a&gt;</description>
<wire x1="6.32" y1="5.3" x2="6.32" y2="-3.5" width="0.254" layer="21"/>
<wire x1="5" y1="-4.6" x2="-5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-6.32" y1="-3.5" x2="-6.32" y2="5.3" width="0.254" layer="21"/>
<wire x1="-6.32" y1="5.3" x2="-5.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="1" y1="5.3" x2="2" y2="5.3" width="0.254" layer="21"/>
<wire x1="4" y1="5.3" x2="5" y2="5.3" width="0.254" layer="21"/>
<wire x1="5.5" y1="5.3" x2="6.32" y2="5.3" width="0.254" layer="21"/>
<wire x1="-6.32" y1="-3.5" x2="-5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="6.32" y1="-3.5" x2="5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-1" y1="-2.4" x2="1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="1" y1="-2.4" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="1" y1="-3" x2="1" y2="-4" width="0.254" layer="21"/>
<wire x1="1" y1="-4" x2="-1" y2="-4" width="0.254" layer="21"/>
<wire x1="-1" y1="-4" x2="-1" y2="-3" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="-1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="-5.5" y1="5.3" x2="-5.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-5.5" y1="3.5" x2="-5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-5" y1="3.5" x2="-5" y2="5.3" width="0.254" layer="21"/>
<wire x1="5.5" y1="5.3" x2="5.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="5.5" y1="3.5" x2="5" y2="3.5" width="0.254" layer="21"/>
<wire x1="5" y1="3.5" x2="5" y2="5.3" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.7" x2="0.7" y2="3.7" width="0.254" layer="21"/>
<wire x1="0.7" y1="3.7" x2="0.7" y2="5" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.7" x2="-0.7" y2="5" width="0.254" layer="21"/>
<wire x1="-1" y1="5.3" x2="-0.7" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="1" y1="5.3" x2="0.7" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="2.3" y1="5" x2="2.3" y2="3.7" width="0.254" layer="21"/>
<wire x1="2.3" y1="3.7" x2="3.7" y2="3.7" width="0.254" layer="21"/>
<wire x1="3.7" y1="3.7" x2="3.7" y2="5" width="0.254" layer="21"/>
<wire x1="2" y1="5.3" x2="2.3" y2="5" width="0.254" layer="21" curve="-73.739795"/>
<wire x1="4" y1="5.3" x2="3.7" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-2" y1="5.3" x2="-1" y2="5.3" width="0.254" layer="21"/>
<wire x1="-3.7" y1="3.7" x2="-2.3" y2="3.7" width="0.254" layer="21"/>
<wire x1="-2.3" y1="3.7" x2="-2.3" y2="5" width="0.254" layer="21"/>
<wire x1="-3.7" y1="3.7" x2="-3.7" y2="5" width="0.254" layer="21"/>
<wire x1="-4" y1="5.3" x2="-3.7" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="-2" y1="5.3" x2="-2.3" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-5" y1="5.3" x2="-4" y2="5.3" width="0.254" layer="21"/>
<pad name="P$1" x="3" y="4.32" drill="1.02" shape="square"/>
<pad name="P$2" x="0" y="4.32" drill="1.02"/>
<pad name="P$3" x="-3" y="4.32" drill="1.02"/>
<hole x="0" y="0" drill="3"/>
</package>
<package name="43650-0309">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Right Angle, with Solderable Retention Clips;  P/N: SD-43650-0309, SD-43650-0310, SD-43650-0311

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500209_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500209_sd.pdf&lt;/a&gt;</description>
<wire x1="6.32" y1="5.3" x2="6.32" y2="-3.5" width="0.254" layer="21"/>
<wire x1="5" y1="-4.6" x2="-5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-6.32" y1="-3.5" x2="-6.32" y2="5.3" width="0.254" layer="21"/>
<wire x1="-6.32" y1="5.3" x2="-5.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="1" y1="5.3" x2="2" y2="5.3" width="0.254" layer="21"/>
<wire x1="4" y1="5.3" x2="5" y2="5.3" width="0.254" layer="21"/>
<wire x1="5.5" y1="5.3" x2="6.32" y2="5.3" width="0.254" layer="21"/>
<wire x1="-6.32" y1="-3.5" x2="-5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="6.32" y1="-3.5" x2="5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-1" y1="-2.4" x2="1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="1" y1="-2.4" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="1" y1="-3" x2="1" y2="-4" width="0.254" layer="21"/>
<wire x1="1" y1="-4" x2="-1" y2="-4" width="0.254" layer="21"/>
<wire x1="-1" y1="-4" x2="-1" y2="-3" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="-1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="-5.5" y1="5.3" x2="-5.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-5.5" y1="3.5" x2="-5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-5" y1="3.5" x2="-5" y2="5.3" width="0.254" layer="21"/>
<wire x1="5.5" y1="5.3" x2="5.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="5.5" y1="3.5" x2="5" y2="3.5" width="0.254" layer="21"/>
<wire x1="5" y1="3.5" x2="5" y2="5.3" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.7" x2="0.7" y2="3.7" width="0.254" layer="21"/>
<wire x1="0.7" y1="3.7" x2="0.7" y2="5" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.7" x2="-0.7" y2="5" width="0.254" layer="21"/>
<wire x1="-1" y1="5.3" x2="-0.7" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="1" y1="5.3" x2="0.7" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="2.3" y1="5" x2="2.3" y2="3.7" width="0.254" layer="21"/>
<wire x1="2.3" y1="3.7" x2="3.7" y2="3.7" width="0.254" layer="21"/>
<wire x1="3.7" y1="3.7" x2="3.7" y2="5" width="0.254" layer="21"/>
<wire x1="2" y1="5.3" x2="2.3" y2="5" width="0.254" layer="21" curve="-73.739795"/>
<wire x1="4" y1="5.3" x2="3.7" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-2" y1="5.3" x2="-1" y2="5.3" width="0.254" layer="21"/>
<wire x1="-3.7" y1="3.7" x2="-2.3" y2="3.7" width="0.254" layer="21"/>
<wire x1="-2.3" y1="3.7" x2="-2.3" y2="5" width="0.254" layer="21"/>
<wire x1="-3.7" y1="3.7" x2="-3.7" y2="5" width="0.254" layer="21"/>
<wire x1="-4" y1="5.3" x2="-3.7" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="-2" y1="5.3" x2="-2.3" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-5" y1="5.3" x2="-4" y2="5.3" width="0.254" layer="21"/>
<smd name="P$2" x="0" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="P$1" x="3" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="P$3" x="-3" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<hole x="5.15" y="0" drill="2.41"/>
<hole x="-5.15" y="0" drill="2.41"/>
</package>
<package name="43650-0312">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Right Angle, with Solderable tabs;   P/N: SD-43650-0312, SD-43650-0313, SD-43650-0314

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/436500212_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500212_sd.pdf&lt;/a&gt;</description>
<wire x1="6.32" y1="5.3" x2="6.32" y2="-3.5" width="0.254" layer="21"/>
<wire x1="5" y1="-4.6" x2="-5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-6.32" y1="-3.5" x2="-6.32" y2="5.3" width="0.254" layer="21"/>
<wire x1="-6.32" y1="5.3" x2="-5.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="1" y1="5.3" x2="2" y2="5.3" width="0.254" layer="21"/>
<wire x1="4" y1="5.3" x2="5" y2="5.3" width="0.254" layer="21"/>
<wire x1="5.5" y1="5.3" x2="6.32" y2="5.3" width="0.254" layer="21"/>
<wire x1="-6.32" y1="-3.5" x2="-5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="6.32" y1="-3.5" x2="5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-1" y1="-2.4" x2="1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="1" y1="-2.4" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="1" y1="-3" x2="1" y2="-4" width="0.254" layer="21"/>
<wire x1="1" y1="-4" x2="-1" y2="-4" width="0.254" layer="21"/>
<wire x1="-1" y1="-4" x2="-1" y2="-3" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="-1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="-5.5" y1="5.3" x2="-5.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-5.5" y1="3.5" x2="-5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-5" y1="3.5" x2="-5" y2="5.3" width="0.254" layer="21"/>
<wire x1="5.5" y1="5.3" x2="5.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="5.5" y1="3.5" x2="5" y2="3.5" width="0.254" layer="21"/>
<wire x1="5" y1="3.5" x2="5" y2="5.3" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.7" x2="0.7" y2="3.7" width="0.254" layer="21"/>
<wire x1="0.7" y1="3.7" x2="0.7" y2="5" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.7" x2="-0.7" y2="5" width="0.254" layer="21"/>
<wire x1="-1" y1="5.3" x2="-0.7" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="1" y1="5.3" x2="0.7" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="2.3" y1="5" x2="2.3" y2="3.7" width="0.254" layer="21"/>
<wire x1="2.3" y1="3.7" x2="3.7" y2="3.7" width="0.254" layer="21"/>
<wire x1="3.7" y1="3.7" x2="3.7" y2="5" width="0.254" layer="21"/>
<wire x1="2" y1="5.3" x2="2.3" y2="5" width="0.254" layer="21" curve="-73.739795"/>
<wire x1="4" y1="5.3" x2="3.7" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-2" y1="5.3" x2="-1" y2="5.3" width="0.254" layer="21"/>
<wire x1="-3.7" y1="3.7" x2="-2.3" y2="3.7" width="0.254" layer="21"/>
<wire x1="-2.3" y1="3.7" x2="-2.3" y2="5" width="0.254" layer="21"/>
<wire x1="-3.7" y1="3.7" x2="-3.7" y2="5" width="0.254" layer="21"/>
<wire x1="-4" y1="5.3" x2="-3.7" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="-2" y1="5.3" x2="-2.3" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-5" y1="5.3" x2="-4" y2="5.3" width="0.254" layer="21"/>
<smd name="P$2" x="0" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="P$1" x="3" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="TAB2" x="-6.88" y="0" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="TAB1" x="6.88" y="0" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="P$3" x="-3" y="5.48" dx="1.27" dy="2.92" layer="1"/>
</package>
<package name="44914-0401">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, Press-fit, with Pegs;  P/N: SD-44914-0401, SD-44914-0402, SD-44914-0403

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/449140201_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/449140201_sd.pdf&lt;/a&gt;</description>
<wire x1="-5.075" y1="4.9" x2="-4.8" y2="4.9" width="0.254" layer="21"/>
<wire x1="-4.8" y1="4.9" x2="-3.07" y2="4.9" width="0.254" layer="21"/>
<wire x1="-3.07" y1="4.9" x2="-0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.9" x2="0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="0.7" y1="4.9" x2="3.07" y2="4.9" width="0.254" layer="21"/>
<wire x1="3.07" y1="4.9" x2="4.8" y2="4.9" width="0.254" layer="21"/>
<wire x1="4.8" y1="4.9" x2="5.075" y2="4.9" width="0.254" layer="21"/>
<wire x1="5.075" y1="4.9" x2="5.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="4" y1="-2.47" x2="4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="4" y1="-1.9" x2="3.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="3.07" y1="-1.9" x2="1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="1.5" y1="-1.9" x2="0.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="0.5" y1="-1.9" x2="-0.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-1.9" x2="-1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-1.9" x2="-3.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-3.07" y1="-1.9" x2="-4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4" y1="-1.9" x2="-4" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-4" y1="-2.47" x2="-4.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-2.47" x2="-5.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-5.075" y1="-2.47" x2="-5.075" y2="4.9" width="0.254" layer="21"/>
<wire x1="4" y1="-2.47" x2="4.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="4.8" y1="-2.47" x2="5.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-0.7" y1="6.3" x2="0.7" y2="6.3" width="0.254" layer="21"/>
<wire x1="0.7" y1="6.3" x2="0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="-0.7" y1="6.3" x2="-0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="0.5" y1="-1.9" x2="0.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="0.5" y1="-2.5" x2="1.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="1.5" y1="-2.5" x2="1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-1.9" x2="-1.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-2.5" x2="-0.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-2.5" x2="-0.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-2.47" x2="-4.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="-4.8" y1="0.5" x2="-4.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="-4.8" y1="2.5" x2="-4.8" y2="4.9" width="0.2" layer="21"/>
<wire x1="4.8" y1="-2.47" x2="4.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="4.8" y1="0.5" x2="4.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="4.8" y1="2.5" x2="4.8" y2="4.9" width="0.2" layer="21"/>
<wire x1="-3.07" y1="-1.9" x2="-3.07" y2="0.5" width="0.2" layer="21"/>
<wire x1="-3.07" y1="0.5" x2="-3.07" y2="2.5" width="0.2" layer="21"/>
<wire x1="-3.07" y1="2.5" x2="-3.07" y2="4.9" width="0.2" layer="21"/>
<wire x1="3.07" y1="4.9" x2="3.07" y2="2.5" width="0.2" layer="21"/>
<wire x1="3.07" y1="2.5" x2="3.07" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.07" y1="0.5" x2="3.07" y2="-1.9" width="0.2" layer="21"/>
<wire x1="-3.07" y1="2.5" x2="-3.7" y2="2.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="2.5" x2="-4.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="-3.07" y1="0.5" x2="-3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="0.5" x2="-4.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.07" y1="2.5" x2="3.7" y2="2.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="2.5" x2="4.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="3.07" y1="0.5" x2="3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="0.5" x2="4.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="2.5" x2="-3.7" y2="2" width="0.2" layer="21"/>
<wire x1="-3.7" y1="2" x2="-4" y2="2" width="0.2" layer="21"/>
<wire x1="-4" y1="2" x2="-4" y2="1" width="0.2" layer="21"/>
<wire x1="-4" y1="1" x2="-3.7" y2="1" width="0.2" layer="21"/>
<wire x1="-3.7" y1="1" x2="-3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="2.5" x2="3.7" y2="2" width="0.2" layer="21"/>
<wire x1="3.7" y1="2" x2="4" y2="2" width="0.2" layer="21"/>
<wire x1="4" y1="2" x2="4" y2="1" width="0.2" layer="21"/>
<wire x1="4" y1="1" x2="3.7" y2="1" width="0.2" layer="21"/>
<wire x1="3.7" y1="1" x2="3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.27" x2="-2.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-0.762" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-1.27" x2="-2.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.762" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="-1.27" x2="0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-2.77" y1="4.27" x2="-0.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="4.27" x2="-0.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.73" x2="-2.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-2.77" y1="2.238" x2="-2.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="1.73" x2="-2.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="2.77" y1="4.27" x2="0.23" y2="4.27" width="0.254" layer="22"/>
<wire x1="0.23" y1="4.27" x2="0.23" y2="1.73" width="0.254" layer="22"/>
<wire x1="0.23" y1="1.73" x2="2.262" y2="1.73" width="0.254" layer="22"/>
<wire x1="2.77" y1="2.238" x2="2.77" y2="4.27" width="0.254" layer="22"/>
<wire x1="2.262" y1="1.73" x2="2.77" y2="2.238" width="0.254" layer="22"/>
<pad name="P$1" x="1.5" y="0" drill="1.09" shape="square"/>
<pad name="P$2" x="-1.5" y="0" drill="1.09"/>
<pad name="P$3" x="1.5" y="3" drill="1.09"/>
<pad name="P$4" x="-1.5" y="3" drill="1.09"/>
<hole x="4.5" y="3.94" drill="1.02"/>
<hole x="-4.5" y="3.94" drill="1.02"/>
</package>
<package name="43045-0400">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Right Angle;  P/N: SD-43045-0400, SD-43045-0401, SD-43045-0402

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/430450200_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450200_sd.pdf&lt;/a&gt;</description>
<wire x1="4.825" y1="3.71" x2="4.825" y2="-2.4" width="0.254" layer="21"/>
<wire x1="3" y1="-4.6" x2="-3" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-4.825" y1="-2.5" x2="-4.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-5.08" y1="5.31" x2="-5.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="-5.08" y1="3.71" x2="-4.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-5.08" y1="5.31" x2="-3.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="-3.5" y1="5.31" x2="3.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="3.5" y1="5.31" x2="5.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="5.08" y1="5.31" x2="5.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="5.08" y1="3.71" x2="4.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-3.5" y1="5.31" x2="-3.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-3.5" y1="3.5" x2="3.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="3.5" y1="3.5" x2="3.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="-4.825" y1="-2.5" x2="-3" y2="-4.6" width="0.254" layer="21"/>
<wire x1="4.825" y1="-2.4" x2="3" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-2.4" x2="0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-2.4" x2="0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="0.6" y1="-3" x2="0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-4" x2="-0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-4" x2="-0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="-0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="0.6" y2="-3" width="0.254" layer="21"/>
<pad name="P$1" x="1.5" y="4.32" drill="1.02" shape="square"/>
<pad name="P$3" x="1.5" y="7.32" drill="1.02"/>
<pad name="P$2" x="-1.5" y="4.32" drill="1.02"/>
<pad name="P$4" x="-1.5" y="7.32" drill="1.02"/>
<hole x="0" y="0" drill="3"/>
</package>
<package name="43045-0409">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Right Angle, Solderable tabs;   P/N: SD-43045-0409, SD-43045-0410, SD-43045-0411

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/430450209_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450209_sd.pdf&lt;/a&gt;</description>
<wire x1="4.825" y1="3.71" x2="4.825" y2="-2.4" width="0.254" layer="21"/>
<wire x1="3" y1="-4.6" x2="-3" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-4.825" y1="-2.5" x2="-4.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.83" y1="5.31" x2="-5.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="-5.08" y1="5.31" x2="-5.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="-5.08" y1="3.71" x2="-4.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.825" y1="5.31" x2="-3.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="-3.5" y1="5.31" x2="3.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="3.5" y1="5.31" x2="5.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="5.08" y1="5.31" x2="5.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="5.08" y1="3.71" x2="4.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-3.5" y1="5.31" x2="-3.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-3.5" y1="3.5" x2="3.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="3.5" y1="3.5" x2="3.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="-4.825" y1="-2.5" x2="-3" y2="-4.6" width="0.254" layer="21"/>
<wire x1="4.825" y1="-2.4" x2="3" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-2.4" x2="0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-2.4" x2="0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="0.6" y1="-3" x2="0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-4" x2="-0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-4" x2="-0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="-0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="0.6" y2="-3" width="0.254" layer="21"/>
<smd name="TAB1" x="-5.38" y="0" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="TAB2" x="5.38" y="0" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="P$4" x="-1.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$2" x="-1.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$3" x="1.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$1" x="1.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
</package>
<package name="43045-0406">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Right Angle, Solderable retention clips;   P/N: SD-43045-0406, SD-43045-0407, SD-43045-0408

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/430450206_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450206_sd.pdf&lt;/a&gt;</description>
<wire x1="4.825" y1="3.71" x2="4.825" y2="-2.4" width="0.254" layer="21"/>
<wire x1="3" y1="-4.6" x2="-3" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-4.825" y1="-2.5" x2="-4.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.83" y1="5.31" x2="-5.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="-5.08" y1="5.31" x2="-5.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="-5.08" y1="3.71" x2="-4.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.825" y1="5.31" x2="-3.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="-3.5" y1="5.31" x2="3.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="3.5" y1="5.31" x2="5.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="5.08" y1="5.31" x2="5.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="5.08" y1="3.71" x2="4.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-3.5" y1="5.31" x2="-3.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-3.5" y1="3.5" x2="3.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="3.5" y1="3.5" x2="3.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="-4.825" y1="-2.5" x2="-3" y2="-4.6" width="0.254" layer="21"/>
<wire x1="4.825" y1="-2.4" x2="3" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-2.4" x2="0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-2.4" x2="0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="0.6" y1="-3" x2="0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-4" x2="-0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-4" x2="-0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="-0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="0.6" y2="-3" width="0.254" layer="21"/>
<smd name="P$4" x="-1.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$2" x="-1.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$3" x="1.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$1" x="1.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<hole x="-3.65" y="0" drill="2.41"/>
<hole x="3.65" y="0" drill="2.41"/>
</package>
<package name="43045-0412">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, with Pegs;  P/N: SD-43045-0412, SD-43045-0413, SD-43045-0414

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/430450212_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450212_sd.pdf&lt;/a&gt;</description>
<wire x1="-5.075" y1="4.9" x2="-4.8" y2="4.9" width="0.254" layer="21"/>
<wire x1="-4.8" y1="4.9" x2="-3.07" y2="4.9" width="0.254" layer="21"/>
<wire x1="-3.07" y1="4.9" x2="-0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.9" x2="0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="0.7" y1="4.9" x2="3.07" y2="4.9" width="0.254" layer="21"/>
<wire x1="3.07" y1="4.9" x2="4.8" y2="4.9" width="0.254" layer="21"/>
<wire x1="4.8" y1="4.9" x2="5.075" y2="4.9" width="0.254" layer="21"/>
<wire x1="5.075" y1="4.9" x2="5.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="4" y1="-2.47" x2="4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="4" y1="-1.9" x2="3.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="3.07" y1="-1.9" x2="1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="1.5" y1="-1.9" x2="0.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="0.5" y1="-1.9" x2="-0.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-1.9" x2="-1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-1.9" x2="-3.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-3.07" y1="-1.9" x2="-4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4" y1="-1.9" x2="-4" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-4" y1="-2.47" x2="-4.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-2.47" x2="-5.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-5.075" y1="-2.47" x2="-5.075" y2="4.9" width="0.254" layer="21"/>
<wire x1="4" y1="-2.47" x2="4.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="4.8" y1="-2.47" x2="5.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-0.7" y1="6.3" x2="0.7" y2="6.3" width="0.254" layer="21"/>
<wire x1="0.7" y1="6.3" x2="0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="-0.7" y1="6.3" x2="-0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="0.5" y1="-1.9" x2="0.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="0.5" y1="-2.5" x2="1.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="1.5" y1="-2.5" x2="1.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-1.9" x2="-1.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-2.5" x2="-0.5" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-2.5" x2="-0.5" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-2.47" x2="-4.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="-4.8" y1="0.5" x2="-4.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="-4.8" y1="2.5" x2="-4.8" y2="4.9" width="0.2" layer="21"/>
<wire x1="4.8" y1="-2.47" x2="4.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="4.8" y1="0.5" x2="4.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="4.8" y1="2.5" x2="4.8" y2="4.9" width="0.2" layer="21"/>
<wire x1="-3.07" y1="-1.9" x2="-3.07" y2="0.5" width="0.2" layer="21"/>
<wire x1="-3.07" y1="0.5" x2="-3.07" y2="2.5" width="0.2" layer="21"/>
<wire x1="-3.07" y1="2.5" x2="-3.07" y2="4.9" width="0.2" layer="21"/>
<wire x1="3.07" y1="4.9" x2="3.07" y2="2.5" width="0.2" layer="21"/>
<wire x1="3.07" y1="2.5" x2="3.07" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.07" y1="0.5" x2="3.07" y2="-1.9" width="0.2" layer="21"/>
<wire x1="-3.07" y1="2.5" x2="-3.7" y2="2.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="2.5" x2="-4.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="-3.07" y1="0.5" x2="-3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="0.5" x2="-4.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.07" y1="2.5" x2="3.7" y2="2.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="2.5" x2="4.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="3.07" y1="0.5" x2="3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="0.5" x2="4.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="2.5" x2="-3.7" y2="2" width="0.2" layer="21"/>
<wire x1="-3.7" y1="2" x2="-4" y2="2" width="0.2" layer="21"/>
<wire x1="-4" y1="2" x2="-4" y2="1" width="0.2" layer="21"/>
<wire x1="-4" y1="1" x2="-3.7" y2="1" width="0.2" layer="21"/>
<wire x1="-3.7" y1="1" x2="-3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="2.5" x2="3.7" y2="2" width="0.2" layer="21"/>
<wire x1="3.7" y1="2" x2="4" y2="2" width="0.2" layer="21"/>
<wire x1="4" y1="2" x2="4" y2="1" width="0.2" layer="21"/>
<wire x1="4" y1="1" x2="3.7" y2="1" width="0.2" layer="21"/>
<wire x1="3.7" y1="1" x2="3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.27" x2="-2.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-0.762" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-1.27" x2="-2.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.762" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="-1.27" x2="0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-2.77" y1="4.27" x2="-0.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="4.27" x2="-0.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.73" x2="-2.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-2.77" y1="2.238" x2="-2.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="1.73" x2="-2.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="2.77" y1="4.27" x2="0.23" y2="4.27" width="0.254" layer="22"/>
<wire x1="0.23" y1="4.27" x2="0.23" y2="1.73" width="0.254" layer="22"/>
<wire x1="0.23" y1="1.73" x2="2.262" y2="1.73" width="0.254" layer="22"/>
<wire x1="2.77" y1="2.238" x2="2.77" y2="4.27" width="0.254" layer="22"/>
<wire x1="2.262" y1="1.73" x2="2.77" y2="2.238" width="0.254" layer="22"/>
<pad name="P$1" x="1.5" y="0" drill="1.02" shape="square"/>
<pad name="P$2" x="-1.5" y="0" drill="1.02"/>
<pad name="P$3" x="1.5" y="3" drill="1.02"/>
<pad name="P$4" x="-1.5" y="3" drill="1.02"/>
<hole x="4.5" y="3.94" drill="1.02"/>
<hole x="-4.5" y="3.94" drill="1.02"/>
</package>
<package name="43045-0415">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Vertical, with Solderable Retention Clips;  P/N: SD-43045-0415, SD-43045-0416, SD-43045-0417

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/430450215_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450215_sd.pdf&lt;/a&gt;</description>
<wire x1="-5.075" y1="3.4" x2="-4.8" y2="3.4" width="0.254" layer="21"/>
<wire x1="-4.8" y1="3.4" x2="-3.07" y2="3.4" width="0.254" layer="21"/>
<wire x1="-3.07" y1="3.4" x2="-0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.4" x2="0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="0.7" y1="3.4" x2="3.07" y2="3.4" width="0.254" layer="21"/>
<wire x1="3.07" y1="3.4" x2="4.8" y2="3.4" width="0.254" layer="21"/>
<wire x1="4.8" y1="3.4" x2="5.075" y2="3.4" width="0.254" layer="21"/>
<wire x1="5.075" y1="3.4" x2="5.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="4" y1="-3.97" x2="4" y2="-3.4" width="0.254" layer="21"/>
<wire x1="4" y1="-3.4" x2="3.07" y2="-3.4" width="0.254" layer="21"/>
<wire x1="3.07" y1="-3.4" x2="1.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="1.5" y1="-3.4" x2="0.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="0.5" y1="-3.4" x2="-0.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-3.4" x2="-1.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-3.4" x2="-3.07" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-3.07" y1="-3.4" x2="-4" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-4" y1="-3.4" x2="-4" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-4" y1="-3.97" x2="-4.8" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-3.97" x2="-5.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-5.075" y1="-3.97" x2="-5.075" y2="3.4" width="0.254" layer="21"/>
<wire x1="4" y1="-3.97" x2="4.8" y2="-3.97" width="0.254" layer="21"/>
<wire x1="4.8" y1="-3.97" x2="5.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.8" x2="0.7" y2="4.8" width="0.254" layer="21"/>
<wire x1="0.7" y1="4.8" x2="0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.8" x2="-0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="0.5" y1="-3.4" x2="0.5" y2="-4" width="0.254" layer="21"/>
<wire x1="0.5" y1="-4" x2="1.5" y2="-4" width="0.254" layer="21"/>
<wire x1="1.5" y1="-4" x2="1.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-3.4" x2="-1.5" y2="-4" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-4" x2="-0.5" y2="-4" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-4" x2="-0.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-3.97" x2="-4.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-4.8" y1="-1" x2="-4.8" y2="1" width="0.2" layer="21"/>
<wire x1="-4.8" y1="1" x2="-4.8" y2="3.4" width="0.2" layer="21"/>
<wire x1="4.8" y1="-3.97" x2="4.8" y2="-1" width="0.2" layer="21"/>
<wire x1="4.8" y1="-1" x2="4.8" y2="1" width="0.2" layer="21"/>
<wire x1="4.8" y1="1" x2="4.8" y2="3.4" width="0.2" layer="21"/>
<wire x1="-3.07" y1="-3.4" x2="-3.07" y2="-1" width="0.2" layer="21"/>
<wire x1="-3.07" y1="-1" x2="-3.07" y2="1" width="0.2" layer="21"/>
<wire x1="-3.07" y1="1" x2="-3.07" y2="3.4" width="0.2" layer="21"/>
<wire x1="3.07" y1="3.4" x2="3.07" y2="1" width="0.2" layer="21"/>
<wire x1="3.07" y1="1" x2="3.07" y2="-1" width="0.2" layer="21"/>
<wire x1="3.07" y1="-1" x2="3.07" y2="-3.4" width="0.2" layer="21"/>
<wire x1="-3.07" y1="1" x2="-3.7" y2="1" width="0.2" layer="21"/>
<wire x1="-3.7" y1="1" x2="-4.8" y2="1" width="0.2" layer="21"/>
<wire x1="-3.07" y1="-1" x2="-3.7" y2="-1" width="0.2" layer="21"/>
<wire x1="-3.7" y1="-1" x2="-4.8" y2="-1" width="0.2" layer="21"/>
<wire x1="3.07" y1="1" x2="3.7" y2="1" width="0.2" layer="21"/>
<wire x1="3.7" y1="1" x2="4.8" y2="1" width="0.2" layer="21"/>
<wire x1="3.07" y1="-1" x2="3.7" y2="-1" width="0.2" layer="21"/>
<wire x1="3.7" y1="-1" x2="4.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-3.7" y1="1" x2="-3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="0.5" x2="-4" y2="0.5" width="0.2" layer="21"/>
<wire x1="-4" y1="0.5" x2="-4" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-4" y1="-0.5" x2="-3.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="-0.5" x2="-3.7" y2="-1" width="0.2" layer="21"/>
<wire x1="3.7" y1="1" x2="3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="0.5" x2="4" y2="0.5" width="0.2" layer="21"/>
<wire x1="4" y1="0.5" x2="4" y2="-0.5" width="0.2" layer="21"/>
<wire x1="4" y1="-0.5" x2="3.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="-0.5" x2="3.7" y2="-1" width="0.2" layer="21"/>
<wire x1="-2.77" y1="-0.23" x2="-0.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-0.23" x2="-0.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-2.77" x2="-2.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-2.262" x2="-2.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-2.77" x2="-2.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.23" x2="2.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="2.77" y1="-0.23" x2="2.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="2.77" y1="-2.77" x2="0.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="0.23" y1="-2.262" x2="0.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="0.738" y1="-2.77" x2="0.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-2.77" y1="2.77" x2="-0.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="-0.23" y1="2.77" x2="-0.23" y2="0.23" width="0.254" layer="21"/>
<wire x1="-0.23" y1="0.23" x2="-2.262" y2="0.23" width="0.254" layer="21"/>
<wire x1="-2.77" y1="0.738" x2="-2.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="-2.262" y1="0.23" x2="-2.77" y2="0.738" width="0.254" layer="21"/>
<wire x1="2.77" y1="2.77" x2="0.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="0.23" y1="2.77" x2="0.23" y2="0.23" width="0.254" layer="22"/>
<wire x1="0.23" y1="0.23" x2="2.262" y2="0.23" width="0.254" layer="22"/>
<wire x1="2.77" y1="0.738" x2="2.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="2.262" y1="0.23" x2="2.77" y2="0.738" width="0.254" layer="22"/>
<smd name="P$1" x="1.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$3" x="1.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$2" x="-1.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$4" x="-1.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<hole x="-3.65" y="0" drill="2.41"/>
<hole x="3.65" y="0" drill="2.41"/>
</package>
<package name="43045-0418">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Vertical, with Solder Tabs;  P/N: SD-43045-0418, SD-43045-0419, SD-43045-0420

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/430450218_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450218_sd.pdf&lt;/a&gt;</description>
<wire x1="-5.075" y1="3.4" x2="-4.8" y2="3.4" width="0.254" layer="21"/>
<wire x1="-4.8" y1="3.4" x2="-3.07" y2="3.4" width="0.254" layer="21"/>
<wire x1="-3.07" y1="3.4" x2="-0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.4" x2="0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="0.7" y1="3.4" x2="3.07" y2="3.4" width="0.254" layer="21"/>
<wire x1="3.07" y1="3.4" x2="4.8" y2="3.4" width="0.254" layer="21"/>
<wire x1="4.8" y1="3.4" x2="5.075" y2="3.4" width="0.254" layer="21"/>
<wire x1="5.075" y1="3.4" x2="5.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="4" y1="-3.97" x2="4" y2="-3.4" width="0.254" layer="21"/>
<wire x1="4" y1="-3.4" x2="3.07" y2="-3.4" width="0.254" layer="21"/>
<wire x1="3.07" y1="-3.4" x2="1.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="1.5" y1="-3.4" x2="0.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="0.5" y1="-3.4" x2="-0.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-3.4" x2="-1.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-3.4" x2="-3.07" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-3.07" y1="-3.4" x2="-4" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-4" y1="-3.4" x2="-4" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-4" y1="-3.97" x2="-4.8" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-3.97" x2="-5.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-5.075" y1="-3.97" x2="-5.075" y2="3.4" width="0.254" layer="21"/>
<wire x1="4" y1="-3.97" x2="4.8" y2="-3.97" width="0.254" layer="21"/>
<wire x1="4.8" y1="-3.97" x2="5.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.8" x2="0.7" y2="4.8" width="0.254" layer="21"/>
<wire x1="0.7" y1="4.8" x2="0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.8" x2="-0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="0.5" y1="-3.4" x2="0.5" y2="-4" width="0.254" layer="21"/>
<wire x1="0.5" y1="-4" x2="1.5" y2="-4" width="0.254" layer="21"/>
<wire x1="1.5" y1="-4" x2="1.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-3.4" x2="-1.5" y2="-4" width="0.254" layer="21"/>
<wire x1="-1.5" y1="-4" x2="-0.5" y2="-4" width="0.254" layer="21"/>
<wire x1="-0.5" y1="-4" x2="-0.5" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-4.8" y1="-3.97" x2="-4.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-4.8" y1="-1" x2="-4.8" y2="1" width="0.2" layer="21"/>
<wire x1="-4.8" y1="1" x2="-4.8" y2="3.4" width="0.2" layer="21"/>
<wire x1="4.8" y1="-3.97" x2="4.8" y2="-1" width="0.2" layer="21"/>
<wire x1="4.8" y1="-1" x2="4.8" y2="1" width="0.2" layer="21"/>
<wire x1="4.8" y1="1" x2="4.8" y2="3.4" width="0.2" layer="21"/>
<wire x1="-3.07" y1="-3.4" x2="-3.07" y2="-1" width="0.2" layer="21"/>
<wire x1="-3.07" y1="-1" x2="-3.07" y2="1" width="0.2" layer="21"/>
<wire x1="-3.07" y1="1" x2="-3.07" y2="3.4" width="0.2" layer="21"/>
<wire x1="3.07" y1="3.4" x2="3.07" y2="1" width="0.2" layer="21"/>
<wire x1="3.07" y1="1" x2="3.07" y2="-1" width="0.2" layer="21"/>
<wire x1="3.07" y1="-1" x2="3.07" y2="-3.4" width="0.2" layer="21"/>
<wire x1="-3.07" y1="1" x2="-3.7" y2="1" width="0.2" layer="21"/>
<wire x1="-3.7" y1="1" x2="-4.8" y2="1" width="0.2" layer="21"/>
<wire x1="-3.07" y1="-1" x2="-3.7" y2="-1" width="0.2" layer="21"/>
<wire x1="-3.7" y1="-1" x2="-4.8" y2="-1" width="0.2" layer="21"/>
<wire x1="3.07" y1="1" x2="3.7" y2="1" width="0.2" layer="21"/>
<wire x1="3.7" y1="1" x2="4.8" y2="1" width="0.2" layer="21"/>
<wire x1="3.07" y1="-1" x2="3.7" y2="-1" width="0.2" layer="21"/>
<wire x1="3.7" y1="-1" x2="4.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-3.7" y1="1" x2="-3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="0.5" x2="-4" y2="0.5" width="0.2" layer="21"/>
<wire x1="-4" y1="0.5" x2="-4" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-4" y1="-0.5" x2="-3.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-3.7" y1="-0.5" x2="-3.7" y2="-1" width="0.2" layer="21"/>
<wire x1="3.7" y1="1" x2="3.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="0.5" x2="4" y2="0.5" width="0.2" layer="21"/>
<wire x1="4" y1="0.5" x2="4" y2="-0.5" width="0.2" layer="21"/>
<wire x1="4" y1="-0.5" x2="3.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="3.7" y1="-0.5" x2="3.7" y2="-1" width="0.2" layer="21"/>
<wire x1="-2.77" y1="-0.23" x2="-0.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-0.23" x2="-0.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-2.77" x2="-2.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-2.262" x2="-2.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-2.77" x2="-2.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.23" x2="2.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="2.77" y1="-0.23" x2="2.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="2.77" y1="-2.77" x2="0.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="0.23" y1="-2.262" x2="0.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="0.738" y1="-2.77" x2="0.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-2.77" y1="2.77" x2="-0.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="-0.23" y1="2.77" x2="-0.23" y2="0.23" width="0.254" layer="21"/>
<wire x1="-0.23" y1="0.23" x2="-2.262" y2="0.23" width="0.254" layer="21"/>
<wire x1="-2.77" y1="0.738" x2="-2.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="-2.262" y1="0.23" x2="-2.77" y2="0.738" width="0.254" layer="21"/>
<wire x1="2.77" y1="2.77" x2="0.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="0.23" y1="2.77" x2="0.23" y2="0.23" width="0.254" layer="22"/>
<wire x1="0.23" y1="0.23" x2="2.262" y2="0.23" width="0.254" layer="22"/>
<wire x1="2.77" y1="0.738" x2="2.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="2.262" y1="0.23" x2="2.77" y2="0.738" width="0.254" layer="22"/>
<smd name="P$1" x="1.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$3" x="1.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$2" x="-1.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$4" x="-1.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="CLIP1" x="-5.38" y="0" dx="3.43" dy="1.65" layer="1"/>
<smd name="CLIP2" x="5.38" y="0" dx="3.43" dy="1.65" layer="1" rot="R180"/>
</package>
<package name="43650-0415">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, with Pegs;  P/N: SD-43650-0415, SD-43650-0416, SD-43650-0417

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500215_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500215_sd.pdf&lt;/a&gt;</description>
<wire x1="-8.075" y1="1.9" x2="-7.8" y2="1.9" width="0.254" layer="21"/>
<wire x1="-7.8" y1="1.9" x2="-6.07" y2="1.9" width="0.254" layer="21"/>
<wire x1="-6.07" y1="1.9" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="1.9" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.4" y1="1.9" x2="6.07" y2="1.9" width="0.254" layer="21"/>
<wire x1="6.07" y1="1.9" x2="7.8" y2="1.9" width="0.254" layer="21"/>
<wire x1="7.8" y1="1.9" x2="8.075" y2="1.9" width="0.254" layer="21"/>
<wire x1="8.075" y1="1.9" x2="8.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="7" y1="-2.47" x2="7" y2="-1.9" width="0.254" layer="21"/>
<wire x1="7" y1="-1.9" x2="6.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="6.07" y1="-1.9" x2="4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="4" y1="-1.9" x2="3" y2="-1.9" width="0.254" layer="21"/>
<wire x1="3" y1="-1.9" x2="-3" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-3" y1="-1.9" x2="-4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4" y1="-1.9" x2="-6.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-6.07" y1="-1.9" x2="-7" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-7" y1="-1.9" x2="-7" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-7" y1="-2.47" x2="-7.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-7.8" y1="-2.47" x2="-8.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-8.075" y1="-2.47" x2="-8.075" y2="1.9" width="0.254" layer="21"/>
<wire x1="7" y1="-2.47" x2="7.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="7.8" y1="-2.47" x2="8.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="1.4" y2="3.1" width="0.254" layer="21"/>
<wire x1="1.4" y1="3.1" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="3" y1="-1.9" x2="3" y2="-2.5" width="0.254" layer="21"/>
<wire x1="3" y1="-2.5" x2="4" y2="-2.5" width="0.254" layer="21"/>
<wire x1="4" y1="-2.5" x2="4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4" y1="-1.9" x2="-4" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-4" y1="-2.5" x2="-3" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-3" y1="-2.5" x2="-3" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-7.8" y1="-2.47" x2="-7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-7.8" y1="-1" x2="-7.8" y2="1" width="0.2" layer="21"/>
<wire x1="-7.8" y1="1" x2="-7.8" y2="1.9" width="0.2" layer="21"/>
<wire x1="7.8" y1="-2.47" x2="7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="7.8" y1="-1" x2="7.8" y2="1" width="0.2" layer="21"/>
<wire x1="7.8" y1="1" x2="7.8" y2="1.9" width="0.2" layer="21"/>
<wire x1="-6.07" y1="-1.9" x2="-6.07" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.07" y1="-1" x2="-6.07" y2="1" width="0.2" layer="21"/>
<wire x1="-6.07" y1="1" x2="-6.07" y2="1.9" width="0.2" layer="21"/>
<wire x1="6.07" y1="1.9" x2="6.07" y2="1" width="0.2" layer="21"/>
<wire x1="6.07" y1="1" x2="6.07" y2="-1" width="0.2" layer="21"/>
<wire x1="6.07" y1="-1" x2="6.07" y2="-1.9" width="0.2" layer="21"/>
<wire x1="-6.07" y1="1" x2="-6.7" y2="1" width="0.2" layer="21"/>
<wire x1="-6.7" y1="1" x2="-7.8" y2="1" width="0.2" layer="21"/>
<wire x1="-6.07" y1="-1" x2="-6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.7" y1="-1" x2="-7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="6.07" y1="1" x2="6.7" y2="1" width="0.2" layer="21"/>
<wire x1="6.7" y1="1" x2="7.8" y2="1" width="0.2" layer="21"/>
<wire x1="6.07" y1="-1" x2="6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="6.7" y1="-1" x2="7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.7" y1="1" x2="-6.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-6.7" y1="0.5" x2="-7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-7" y1="0.5" x2="-7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-7" y1="-0.5" x2="-6.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-6.7" y1="-0.5" x2="-6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="6.7" y1="1" x2="6.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="6.7" y1="0.5" x2="7" y2="0.5" width="0.2" layer="21"/>
<wire x1="7" y1="0.5" x2="7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="7" y1="-0.5" x2="6.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="6.7" y1="-0.5" x2="6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.762" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="-1.27" x2="0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="3.23" y1="1.27" x2="5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="1.27" x2="5.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="-1.27" x2="3.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="-0.762" x2="3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.738" y1="-1.27" x2="3.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.27" x2="-2.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-0.762" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-1.27" x2="-2.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-1.27" x2="-5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="1.27" x2="-3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.27" x2="-3.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-3.738" y1="-1.27" x2="-5.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-0.762" x2="-3.738" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="4.5" y="0" drill="1.02" shape="square"/>
<pad name="P$2" x="1.5" y="0" drill="1.02"/>
<pad name="P$3" x="-1.5" y="0" drill="1.02"/>
<pad name="P$4" x="-4.5" y="0" drill="1.02" rot="R90"/>
<hole x="7.5" y="-1.96" drill="1.27"/>
<hole x="-7.5" y="-1.96" drill="1.27"/>
</package>
<package name="43650-0421">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, with Solderable Retention Clips;  P/N: SD-43650-0421, SD-43650-0422, SD-43650-0423

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500221_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500221_sd.pdf&lt;/a&gt;</description>
<wire x1="-8.075" y1="1.9" x2="-7.8" y2="1.9" width="0.254" layer="21"/>
<wire x1="-7.8" y1="1.9" x2="-6.07" y2="1.9" width="0.254" layer="21"/>
<wire x1="-6.07" y1="1.9" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="1.9" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.4" y1="1.9" x2="6.07" y2="1.9" width="0.254" layer="21"/>
<wire x1="6.07" y1="1.9" x2="7.8" y2="1.9" width="0.254" layer="21"/>
<wire x1="7.8" y1="1.9" x2="8.075" y2="1.9" width="0.254" layer="21"/>
<wire x1="8.075" y1="1.9" x2="8.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="7" y1="-2.47" x2="7" y2="-1.9" width="0.254" layer="21"/>
<wire x1="7" y1="-1.9" x2="6.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="6.07" y1="-1.9" x2="4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="4" y1="-1.9" x2="3" y2="-1.9" width="0.254" layer="21"/>
<wire x1="3" y1="-1.9" x2="-3" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-3" y1="-1.9" x2="-4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4" y1="-1.9" x2="-6.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-6.07" y1="-1.9" x2="-7" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-7" y1="-1.9" x2="-7" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-7" y1="-2.47" x2="-7.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-7.8" y1="-2.47" x2="-8.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-8.075" y1="-2.47" x2="-8.075" y2="1.9" width="0.254" layer="21"/>
<wire x1="7" y1="-2.47" x2="7.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="7.8" y1="-2.47" x2="8.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="1.4" y2="3.1" width="0.254" layer="21"/>
<wire x1="1.4" y1="3.1" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="3" y1="-1.9" x2="3" y2="-2.5" width="0.254" layer="21"/>
<wire x1="3" y1="-2.5" x2="4" y2="-2.5" width="0.254" layer="21"/>
<wire x1="4" y1="-2.5" x2="4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4" y1="-1.9" x2="-4" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-4" y1="-2.5" x2="-3" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-3" y1="-2.5" x2="-3" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-7.8" y1="-2.47" x2="-7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-7.8" y1="-1" x2="-7.8" y2="1" width="0.2" layer="21"/>
<wire x1="-7.8" y1="1" x2="-7.8" y2="1.9" width="0.2" layer="21"/>
<wire x1="7.8" y1="-2.47" x2="7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="7.8" y1="-1" x2="7.8" y2="1" width="0.2" layer="21"/>
<wire x1="7.8" y1="1" x2="7.8" y2="1.9" width="0.2" layer="21"/>
<wire x1="-6.07" y1="-1.9" x2="-6.07" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.07" y1="-1" x2="-6.07" y2="1" width="0.2" layer="21"/>
<wire x1="-6.07" y1="1" x2="-6.07" y2="1.9" width="0.2" layer="21"/>
<wire x1="6.07" y1="1.9" x2="6.07" y2="1" width="0.2" layer="21"/>
<wire x1="6.07" y1="1" x2="6.07" y2="-1" width="0.2" layer="21"/>
<wire x1="6.07" y1="-1" x2="6.07" y2="-1.9" width="0.2" layer="21"/>
<wire x1="-6.07" y1="1" x2="-6.7" y2="1" width="0.2" layer="21"/>
<wire x1="-6.7" y1="1" x2="-7.8" y2="1" width="0.2" layer="21"/>
<wire x1="-6.07" y1="-1" x2="-6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.7" y1="-1" x2="-7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="6.07" y1="1" x2="6.7" y2="1" width="0.2" layer="21"/>
<wire x1="6.7" y1="1" x2="7.8" y2="1" width="0.2" layer="21"/>
<wire x1="6.07" y1="-1" x2="6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="6.7" y1="-1" x2="7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.7" y1="1" x2="-6.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-6.7" y1="0.5" x2="-7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-7" y1="0.5" x2="-7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-7" y1="-0.5" x2="-6.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-6.7" y1="-0.5" x2="-6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="6.7" y1="1" x2="6.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="6.7" y1="0.5" x2="7" y2="0.5" width="0.2" layer="21"/>
<wire x1="7" y1="0.5" x2="7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="7" y1="-0.5" x2="6.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="6.7" y1="-0.5" x2="6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="1.27" x2="5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="1.27" x2="5.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="-1.27" x2="3.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="-0.762" x2="3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.738" y1="-1.27" x2="3.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-1.27" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.27" x2="-2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-1.27" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="1.27" x2="-3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.27" x2="-3.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-1.27" x2="-5.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-1.27" x2="-5.77" y2="1.27" width="0.254" layer="21"/>
<smd name="P$1" x="4.5" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<smd name="P$2" x="1.5" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<smd name="P$3" x="-1.5" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<smd name="P$4" x="-4.5" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<hole x="6.65" y="0" drill="2.41"/>
<hole x="-6.65" y="0" drill="2.41"/>
</package>
<package name="43650-0424">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, with Solder Tabs;  P/N: SD-43650-0424, SD-43650-0425, SD-43650-0426

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500224_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500224_sd.pdf&lt;/a&gt;</description>
<wire x1="-8.075" y1="1.9" x2="-7.8" y2="1.9" width="0.254" layer="21"/>
<wire x1="-7.8" y1="1.9" x2="-6.07" y2="1.9" width="0.254" layer="21"/>
<wire x1="-6.07" y1="1.9" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="1.9" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="1.4" y1="1.9" x2="6.07" y2="1.9" width="0.254" layer="21"/>
<wire x1="6.07" y1="1.9" x2="7.8" y2="1.9" width="0.254" layer="21"/>
<wire x1="7.8" y1="1.9" x2="8.075" y2="1.9" width="0.254" layer="21"/>
<wire x1="8.075" y1="1.9" x2="8.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="7" y1="-2.47" x2="7" y2="-1.9" width="0.254" layer="21"/>
<wire x1="7" y1="-1.9" x2="6.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="6.07" y1="-1.9" x2="4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="4" y1="-1.9" x2="3" y2="-1.9" width="0.254" layer="21"/>
<wire x1="3" y1="-1.9" x2="-3" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-3" y1="-1.9" x2="-4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4" y1="-1.9" x2="-6.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-6.07" y1="-1.9" x2="-7" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-7" y1="-1.9" x2="-7" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-7" y1="-2.47" x2="-7.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-7.8" y1="-2.47" x2="-8.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-8.075" y1="-2.47" x2="-8.075" y2="1.9" width="0.254" layer="21"/>
<wire x1="7" y1="-2.47" x2="7.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="7.8" y1="-2.47" x2="8.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="1.4" y2="3.1" width="0.254" layer="21"/>
<wire x1="1.4" y1="3.1" x2="1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="-1.4" y1="3.1" x2="-1.4" y2="1.9" width="0.254" layer="21"/>
<wire x1="3" y1="-1.9" x2="3" y2="-2.5" width="0.254" layer="21"/>
<wire x1="3" y1="-2.5" x2="4" y2="-2.5" width="0.254" layer="21"/>
<wire x1="4" y1="-2.5" x2="4" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-4" y1="-1.9" x2="-4" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-4" y1="-2.5" x2="-3" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-3" y1="-2.5" x2="-3" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-7.8" y1="-2.47" x2="-7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-7.8" y1="-1" x2="-7.8" y2="1" width="0.2" layer="21"/>
<wire x1="-7.8" y1="1" x2="-7.8" y2="1.9" width="0.2" layer="21"/>
<wire x1="7.8" y1="-2.47" x2="7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="7.8" y1="-1" x2="7.8" y2="1" width="0.2" layer="21"/>
<wire x1="7.8" y1="1" x2="7.8" y2="1.9" width="0.2" layer="21"/>
<wire x1="-6.07" y1="-1.9" x2="-6.07" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.07" y1="-1" x2="-6.07" y2="1" width="0.2" layer="21"/>
<wire x1="-6.07" y1="1" x2="-6.07" y2="1.9" width="0.2" layer="21"/>
<wire x1="6.07" y1="1.9" x2="6.07" y2="1" width="0.2" layer="21"/>
<wire x1="6.07" y1="1" x2="6.07" y2="-1" width="0.2" layer="21"/>
<wire x1="6.07" y1="-1" x2="6.07" y2="-1.9" width="0.2" layer="21"/>
<wire x1="-6.07" y1="1" x2="-6.7" y2="1" width="0.2" layer="21"/>
<wire x1="-6.7" y1="1" x2="-7.8" y2="1" width="0.2" layer="21"/>
<wire x1="-6.07" y1="-1" x2="-6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.7" y1="-1" x2="-7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="6.07" y1="1" x2="6.7" y2="1" width="0.2" layer="21"/>
<wire x1="6.7" y1="1" x2="7.8" y2="1" width="0.2" layer="21"/>
<wire x1="6.07" y1="-1" x2="6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="6.7" y1="-1" x2="7.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-6.7" y1="1" x2="-6.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-6.7" y1="0.5" x2="-7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-7" y1="0.5" x2="-7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-7" y1="-0.5" x2="-6.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-6.7" y1="-0.5" x2="-6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="6.7" y1="1" x2="6.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="6.7" y1="0.5" x2="7" y2="0.5" width="0.2" layer="21"/>
<wire x1="7" y1="0.5" x2="7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="7" y1="-0.5" x2="6.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="6.7" y1="-0.5" x2="6.7" y2="-1" width="0.2" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="1.27" x2="5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="1.27" x2="5.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="-1.27" x2="3.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="-0.762" x2="3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.738" y1="-1.27" x2="3.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-1.27" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.27" x2="-2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-1.27" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="1.27" x2="-3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.27" x2="-3.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-1.27" x2="-5.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-0.762" x2="-5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.262" y1="-1.27" x2="-5.77" y2="-0.762" width="0.254" layer="21"/>
<smd name="P$1" x="4.5" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<smd name="P$2" x="1.5" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<smd name="TAB2" x="-8.39" y="0" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="TAB1" x="8.39" y="0" dx="1.65" dy="3.43" layer="1" rot="R270"/>
<smd name="P$3" x="-1.5" y="3.43" dx="1.27" dy="2.54" layer="1"/>
<smd name="P$4" x="-4.5" y="3.43" dx="1.27" dy="2.54" layer="1"/>
</package>
<package name="43650-0400">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Right Angle, with Pegs;  P/N: SD-43650-0400, SD-43650-0401, SD-43650-0402

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500200_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500200_sd.pdf&lt;/a&gt;</description>
<wire x1="7.82" y1="5.3" x2="7.82" y2="-3.5" width="0.254" layer="21"/>
<wire x1="6.5" y1="-4.6" x2="-6.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-7.82" y1="-3.5" x2="-7.82" y2="5.3" width="0.254" layer="21"/>
<wire x1="-7.82" y1="5.3" x2="-7" y2="5.3" width="0.254" layer="21"/>
<wire x1="2.5" y1="5.3" x2="3.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="5.5" y1="5.3" x2="6.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="7" y1="5.3" x2="7.82" y2="5.3" width="0.254" layer="21"/>
<wire x1="-7.82" y1="-3.5" x2="-6.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="7.82" y1="-3.5" x2="6.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-1" y1="-2.4" x2="1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="1" y1="-2.4" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="1" y1="-3" x2="1" y2="-4" width="0.254" layer="21"/>
<wire x1="1" y1="-4" x2="-1" y2="-4" width="0.254" layer="21"/>
<wire x1="-1" y1="-4" x2="-1" y2="-3" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="-1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="-7" y1="5.3" x2="-7" y2="3.5" width="0.254" layer="21"/>
<wire x1="-7" y1="3.5" x2="-6.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-6.5" y1="3.5" x2="-6.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="7" y1="5.3" x2="7" y2="3.5" width="0.254" layer="21"/>
<wire x1="7" y1="3.5" x2="6.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="6.5" y1="3.5" x2="6.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.7" x2="2.2" y2="3.7" width="0.254" layer="21"/>
<wire x1="2.2" y1="3.7" x2="2.2" y2="5" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.7" x2="0.8" y2="5" width="0.254" layer="21"/>
<wire x1="0.5" y1="5.3" x2="0.8" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="2.5" y1="5.3" x2="2.2" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="3.8" y1="5" x2="3.8" y2="3.7" width="0.254" layer="21"/>
<wire x1="3.8" y1="3.7" x2="5.2" y2="3.7" width="0.254" layer="21"/>
<wire x1="5.2" y1="3.7" x2="5.2" y2="5" width="0.254" layer="21"/>
<wire x1="3.5" y1="5.3" x2="3.8" y2="5" width="0.254" layer="21" curve="-73.739795"/>
<wire x1="5.5" y1="5.3" x2="5.2" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-0.5" y1="5.3" x2="0.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="-2.2" y1="3.7" x2="-0.8" y2="3.7" width="0.254" layer="21"/>
<wire x1="-0.8" y1="3.7" x2="-0.8" y2="5" width="0.254" layer="21"/>
<wire x1="-2.2" y1="3.7" x2="-2.2" y2="5" width="0.254" layer="21"/>
<wire x1="-2.5" y1="5.3" x2="-2.2" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="-0.5" y1="5.3" x2="-0.8" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-3.5" y1="5.3" x2="-2.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="-5.2" y1="3.7" x2="-3.8" y2="3.7" width="0.254" layer="21"/>
<wire x1="-3.8" y1="3.7" x2="-3.8" y2="5" width="0.254" layer="21"/>
<wire x1="-5.2" y1="3.7" x2="-5.2" y2="5" width="0.254" layer="21"/>
<wire x1="-5.5" y1="5.3" x2="-5.2" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="-3.5" y1="5.3" x2="-3.8" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-6.5" y1="5.3" x2="-5.5" y2="5.3" width="0.254" layer="21"/>
<pad name="P$1" x="4.5" y="4.32" drill="1.02" shape="square"/>
<pad name="P$2" x="1.5" y="4.32" drill="1.02"/>
<pad name="P$3" x="-1.5" y="4.32" drill="1.02"/>
<pad name="P$4" x="-4.5" y="4.32" drill="1.02"/>
<hole x="2.35" y="0" drill="3"/>
<hole x="-2.35" y="0" drill="3"/>
</package>
<package name="43650-0409">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Right Angle, with Solderable Retention Clips;  P/N: SD-43650-0409, SD-43650-0410, SD-43650-0411

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/436500209_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500209_sd.pdf&lt;/a&gt;</description>
<wire x1="7.82" y1="5.3" x2="7.82" y2="-3.5" width="0.254" layer="21"/>
<wire x1="6.5" y1="-4.6" x2="-6.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-7.82" y1="-3.5" x2="-7.82" y2="5.3" width="0.254" layer="21"/>
<wire x1="-7.82" y1="5.3" x2="-7" y2="5.3" width="0.254" layer="21"/>
<wire x1="2.5" y1="5.3" x2="3.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="5.5" y1="5.3" x2="6.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="7" y1="5.3" x2="7.82" y2="5.3" width="0.254" layer="21"/>
<wire x1="-7.82" y1="-3.5" x2="-6.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="7.82" y1="-3.5" x2="6.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-1" y1="-2.4" x2="1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="1" y1="-2.4" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="1" y1="-3" x2="1" y2="-4" width="0.254" layer="21"/>
<wire x1="1" y1="-4" x2="-1" y2="-4" width="0.254" layer="21"/>
<wire x1="-1" y1="-4" x2="-1" y2="-3" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="-1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="-7" y1="5.3" x2="-7" y2="3.5" width="0.254" layer="21"/>
<wire x1="-7" y1="3.5" x2="-6.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-6.5" y1="3.5" x2="-6.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="7" y1="5.3" x2="7" y2="3.5" width="0.254" layer="21"/>
<wire x1="7" y1="3.5" x2="6.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="6.5" y1="3.5" x2="6.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.7" x2="2.2" y2="3.7" width="0.254" layer="21"/>
<wire x1="2.2" y1="3.7" x2="2.2" y2="5" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.7" x2="0.8" y2="5" width="0.254" layer="21"/>
<wire x1="0.5" y1="5.3" x2="0.8" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="2.5" y1="5.3" x2="2.2" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="3.8" y1="5" x2="3.8" y2="3.7" width="0.254" layer="21"/>
<wire x1="3.8" y1="3.7" x2="5.2" y2="3.7" width="0.254" layer="21"/>
<wire x1="5.2" y1="3.7" x2="5.2" y2="5" width="0.254" layer="21"/>
<wire x1="3.5" y1="5.3" x2="3.8" y2="5" width="0.254" layer="21" curve="-73.739795"/>
<wire x1="5.5" y1="5.3" x2="5.2" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-0.5" y1="5.3" x2="0.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="-2.2" y1="3.7" x2="-0.8" y2="3.7" width="0.254" layer="21"/>
<wire x1="-0.8" y1="3.7" x2="-0.8" y2="5" width="0.254" layer="21"/>
<wire x1="-2.2" y1="3.7" x2="-2.2" y2="5" width="0.254" layer="21"/>
<wire x1="-2.5" y1="5.3" x2="-2.2" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="-0.5" y1="5.3" x2="-0.8" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-3.5" y1="5.3" x2="-2.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="-5.2" y1="3.7" x2="-3.8" y2="3.7" width="0.254" layer="21"/>
<wire x1="-3.8" y1="3.7" x2="-3.8" y2="5" width="0.254" layer="21"/>
<wire x1="-5.2" y1="3.7" x2="-5.2" y2="5" width="0.254" layer="21"/>
<wire x1="-5.5" y1="5.3" x2="-5.2" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="-3.5" y1="5.3" x2="-3.8" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-6.5" y1="5.3" x2="-5.5" y2="5.3" width="0.254" layer="21"/>
<smd name="P$2" x="1.5" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="P$1" x="4.5" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="P$3" x="-1.5" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="P$4" x="-4.5" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<hole x="6.65" y="0" drill="2.41"/>
<hole x="-6.65" y="0" drill="2.41"/>
</package>
<package name="43650-0412">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Right Angle, with Solderable tabs;   P/N: SD-43650-0412, SD-43650-0413, SD-43650-0414

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/436500212_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/436500212_sd.pdf&lt;/a&gt;</description>
<wire x1="7.82" y1="5.3" x2="7.82" y2="-3.5" width="0.254" layer="21"/>
<wire x1="6.5" y1="-4.6" x2="-6.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-7.82" y1="-3.5" x2="-7.82" y2="5.3" width="0.254" layer="21"/>
<wire x1="-7.82" y1="5.3" x2="-7" y2="5.3" width="0.254" layer="21"/>
<wire x1="2.5" y1="5.3" x2="3.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="5.5" y1="5.3" x2="6.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="7" y1="5.3" x2="7.82" y2="5.3" width="0.254" layer="21"/>
<wire x1="-7.82" y1="-3.5" x2="-6.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="7.82" y1="-3.5" x2="6.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-1" y1="-2.4" x2="1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="1" y1="-2.4" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="1" y1="-3" x2="1" y2="-4" width="0.254" layer="21"/>
<wire x1="1" y1="-4" x2="-1" y2="-4" width="0.254" layer="21"/>
<wire x1="-1" y1="-4" x2="-1" y2="-3" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="-1" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-1" y1="-3" x2="1" y2="-3" width="0.254" layer="21"/>
<wire x1="-7" y1="5.3" x2="-7" y2="3.5" width="0.254" layer="21"/>
<wire x1="-7" y1="3.5" x2="-6.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-6.5" y1="3.5" x2="-6.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="7" y1="5.3" x2="7" y2="3.5" width="0.254" layer="21"/>
<wire x1="7" y1="3.5" x2="6.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="6.5" y1="3.5" x2="6.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.7" x2="2.2" y2="3.7" width="0.254" layer="21"/>
<wire x1="2.2" y1="3.7" x2="2.2" y2="5" width="0.254" layer="21"/>
<wire x1="0.8" y1="3.7" x2="0.8" y2="5" width="0.254" layer="21"/>
<wire x1="0.5" y1="5.3" x2="0.8" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="2.5" y1="5.3" x2="2.2" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="3.8" y1="5" x2="3.8" y2="3.7" width="0.254" layer="21"/>
<wire x1="3.8" y1="3.7" x2="5.2" y2="3.7" width="0.254" layer="21"/>
<wire x1="5.2" y1="3.7" x2="5.2" y2="5" width="0.254" layer="21"/>
<wire x1="3.5" y1="5.3" x2="3.8" y2="5" width="0.254" layer="21" curve="-73.739795"/>
<wire x1="5.5" y1="5.3" x2="5.2" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-0.5" y1="5.3" x2="0.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="-2.2" y1="3.7" x2="-0.8" y2="3.7" width="0.254" layer="21"/>
<wire x1="-0.8" y1="3.7" x2="-0.8" y2="5" width="0.254" layer="21"/>
<wire x1="-2.2" y1="3.7" x2="-2.2" y2="5" width="0.254" layer="21"/>
<wire x1="-2.5" y1="5.3" x2="-2.2" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="-0.5" y1="5.3" x2="-0.8" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-3.5" y1="5.3" x2="-2.5" y2="5.3" width="0.254" layer="21"/>
<wire x1="-5.2" y1="3.7" x2="-3.8" y2="3.7" width="0.254" layer="21"/>
<wire x1="-3.8" y1="3.7" x2="-3.8" y2="5" width="0.254" layer="21"/>
<wire x1="-5.2" y1="3.7" x2="-5.2" y2="5" width="0.254" layer="21"/>
<wire x1="-5.5" y1="5.3" x2="-5.2" y2="5" width="0.254" layer="21" curve="-90"/>
<wire x1="-3.5" y1="5.3" x2="-3.8" y2="5" width="0.254" layer="21" curve="90"/>
<wire x1="-6.5" y1="5.3" x2="-5.5" y2="5.3" width="0.254" layer="21"/>
<smd name="P$2" x="1.5" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="P$1" x="4.5" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="TAB2" x="-8.38" y="0" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="TAB1" x="8.38" y="0" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="P$3" x="-1.5" y="5.48" dx="1.27" dy="2.92" layer="1"/>
<smd name="P$4" x="-4.5" y="5.48" dx="1.27" dy="2.92" layer="1"/>
</package>
<package name="44769-0401">
<description>Molex Micro-Fit 3.0 - Board-to-Board BMI (Blind Mate Interface), Receptacle Vertical, Thru hole;  P/N: SD-44769-0401, SD-44769-0402, SD-44769-0403

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/447690401_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/447690401_sd.pdf&lt;/a&gt;</description>
<wire x1="-2.77" y1="-1.27" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.738" y1="-1.27" x2="-2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-0.762" x2="-0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-1.27" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="2.262" y1="-1.27" x2="0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-0.762" x2="2.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.73" x2="-2.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="4.27" x2="-0.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="4.27" x2="-0.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="-0.738" y1="1.73" x2="-2.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="-0.23" y1="2.238" x2="-0.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.73" x2="2.77" y2="4.27" width="0.254" layer="22"/>
<wire x1="2.77" y1="4.27" x2="0.23" y2="4.27" width="0.254" layer="22"/>
<wire x1="0.23" y1="4.27" x2="0.23" y2="2.238" width="0.254" layer="22"/>
<wire x1="0.738" y1="1.73" x2="2.77" y2="1.73" width="0.254" layer="22"/>
<wire x1="0.23" y1="2.238" x2="0.738" y2="1.73" width="0.254" layer="22"/>
<wire x1="-3.4" y1="5.7" x2="3.4" y2="5.7" width="0.254" layer="21"/>
<wire x1="3.4" y1="5.7" x2="6" y2="3.75" width="0.254" layer="21"/>
<wire x1="6" y1="3.75" x2="6" y2="2.4" width="0.254" layer="21"/>
<wire x1="6" y1="2.4" x2="6" y2="0.6" width="0.254" layer="21"/>
<wire x1="6" y1="0.6" x2="6" y2="-0.75" width="0.254" layer="21"/>
<wire x1="6" y1="-0.75" x2="3.4" y2="-2.7" width="0.254" layer="21"/>
<wire x1="3.4" y1="-2.7" x2="-3.4" y2="-2.7" width="0.254" layer="21"/>
<wire x1="-3.4" y1="-2.7" x2="-6" y2="-0.75" width="0.254" layer="21"/>
<wire x1="-6" y1="-0.75" x2="-6" y2="0.6" width="0.254" layer="21"/>
<wire x1="-6" y1="0.6" x2="-6" y2="2.4" width="0.254" layer="21"/>
<wire x1="-6" y1="2.4" x2="-6" y2="3.75" width="0.254" layer="21"/>
<wire x1="-6" y1="3.75" x2="-3.4" y2="5.7" width="0.254" layer="21"/>
<wire x1="-6" y1="2.4" x2="-3.4" y2="2.4" width="0.254" layer="21"/>
<wire x1="-3.4" y1="2.4" x2="-3.4" y2="4.95" width="0.254" layer="21"/>
<wire x1="-3.4" y1="5.7" x2="-3.4" y2="4.95" width="0.254" layer="21"/>
<wire x1="-3.4" y1="0.6" x2="-3.4" y2="-1.95" width="0.254" layer="21"/>
<wire x1="-3.4" y1="-1.95" x2="-3.4" y2="-2.7" width="0.254" layer="21"/>
<wire x1="-6" y1="0.6" x2="-3.4" y2="0.6" width="0.254" layer="21"/>
<wire x1="3.4" y1="5.7" x2="3.4" y2="4.95" width="0.254" layer="21"/>
<wire x1="3.4" y1="4.95" x2="3.4" y2="2.4" width="0.254" layer="21"/>
<wire x1="3.4" y1="2.4" x2="3.4" y2="0.6" width="0.254" layer="21"/>
<wire x1="3.4" y1="0.6" x2="3.4" y2="-1.95" width="0.254" layer="21"/>
<wire x1="3.4" y1="-1.95" x2="3.4" y2="-2.7" width="0.254" layer="21"/>
<wire x1="3.4" y1="2.4" x2="6" y2="2.4" width="0.254" layer="21"/>
<wire x1="3.4" y1="0.6" x2="6" y2="0.6" width="0.254" layer="21"/>
<wire x1="-3.4" y1="-1.95" x2="3.4" y2="-1.95" width="0.254" layer="21"/>
<wire x1="-3.4" y1="4.95" x2="3.4" y2="4.95" width="0.254" layer="21"/>
<wire x1="-3.4" y1="0.6" x2="-3.4" y2="2.4" width="0.254" layer="21"/>
<pad name="P$1" x="-1.5" y="0" drill="1.02" shape="square" rot="R180"/>
<pad name="P$2" x="1.5" y="0" drill="1.02" rot="R90"/>
<pad name="P$3" x="-1.5" y="3" drill="1.02" rot="R90"/>
<pad name="P$4" x="1.5" y="3" drill="1.02" rot="R270"/>
<hole x="4.5" y="3" drill="2.36"/>
<hole x="-4.5" y="3" drill="2.36"/>
</package>
<package name="44432-0401">
<description>Molex Micro-Fit 3.0 - Board-to-Board BMI (Blind Mate Interface), Header Vertical, Thru hole, with Pegs;  P/N: SD-44432-0401, SD-44432-0402, SD-44432-0403

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/444320401_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/444320401_sd.pdf&lt;/a&gt;</description>
<wire x1="-6.5" y1="4.45" x2="6.5" y2="4.45" width="0.254" layer="21"/>
<wire x1="6.5" y1="4.45" x2="6.5" y2="-7.45" width="0.254" layer="21"/>
<wire x1="6.5" y1="-7.45" x2="-6.5" y2="-7.45" width="0.254" layer="21"/>
<wire x1="-6.5" y1="-7.45" x2="-6.5" y2="4.45" width="0.254" layer="21"/>
<wire x1="-6.2" y1="4.1" x2="6.2" y2="4.1" width="0.254" layer="21"/>
<wire x1="6.2" y1="4.1" x2="6.2" y2="-7.1" width="0.254" layer="21"/>
<wire x1="6.2" y1="-7.1" x2="-6.2" y2="-7.1" width="0.254" layer="21"/>
<wire x1="-6.2" y1="-7.1" x2="-6.2" y2="4.1" width="0.254" layer="21"/>
<wire x1="0.23" y1="-4.27" x2="0.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="0.23" y1="-1.73" x2="2.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.73" x2="2.77" y2="-3.762" width="0.254" layer="21"/>
<wire x1="2.262" y1="-4.27" x2="0.23" y2="-4.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-3.762" x2="2.262" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-1.73" x2="-0.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.73" x2="-0.23" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-4.27" x2="-2.262" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-3.762" x2="-2.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-4.27" x2="-2.77" y2="-3.762" width="0.254" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.762" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="-1.27" x2="0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-1.27" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.738" y1="-1.27" x2="-2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-0.762" x2="-0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-6.2" y1="4.1" x2="-3.1" y2="1.6" width="0.254" layer="21"/>
<wire x1="-3.1" y1="1.6" x2="3.1" y2="1.6" width="0.254" layer="21"/>
<wire x1="3.1" y1="1.6" x2="6.2" y2="4.1" width="0.254" layer="21"/>
<wire x1="-3.1" y1="1.6" x2="-3.1" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-3.1" y1="-4.6" x2="3.1" y2="-4.6" width="0.254" layer="21"/>
<wire x1="3.1" y1="-4.6" x2="3.1" y2="1.6" width="0.254" layer="21"/>
<wire x1="-3.1" y1="-4.6" x2="-6.2" y2="-7.1" width="0.254" layer="21"/>
<wire x1="3.1" y1="-4.6" x2="6.2" y2="-7.1" width="0.254" layer="21"/>
<pad name="P$1" x="1.5" y="-3" drill="1.02" shape="square" rot="R90"/>
<pad name="P$2" x="-1.5" y="-3" drill="1.02"/>
<pad name="P$3" x="1.5" y="0" drill="1.02"/>
<pad name="P$4" x="-1.5" y="0" drill="1.02" rot="R90"/>
<hole x="-6" y="1.45" drill="1.57"/>
<hole x="6" y="1.45" drill="1.57"/>
</package>
<package name="44428-0401">
<description>Molex Micro-Fit 3.0 - Board-to-Board BMI (Blind Mate Interface), Header Right Angle, Thru hole, with Pegs;  P/N: SD-44428-0401, SD-44428-0402, SD-44428-0403

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/444280401_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/444280401_sd.pdf&lt;/a&gt;</description>
<wire x1="-6.5" y1="-14.43" x2="6.5" y2="-14.43" width="0.254" layer="21"/>
<wire x1="6.5" y1="-14.43" x2="6.5" y2="-6" width="0.254" layer="21"/>
<wire x1="6.5" y1="-6" x2="6.5" y2="-2.8" width="0.254" layer="21"/>
<wire x1="6.5" y1="-2.8" x2="-6.5" y2="-2.8" width="0.254" layer="21"/>
<wire x1="-6.5" y1="-2.8" x2="-6.5" y2="-6" width="0.254" layer="21"/>
<wire x1="-6.5" y1="-6" x2="-6.5" y2="-14.43" width="0.254" layer="21"/>
<wire x1="-6.5" y1="-6" x2="-5.3" y2="-6" width="0.254" layer="21"/>
<wire x1="-5.3" y1="-6" x2="-5.3" y2="-13.9" width="0.254" layer="21"/>
<wire x1="-5.3" y1="-13.9" x2="-0.6" y2="-13.9" width="0.254" layer="21"/>
<wire x1="0.6" y1="-13.9" x2="5.3" y2="-13.9" width="0.254" layer="21"/>
<wire x1="5.3" y1="-13.9" x2="5.3" y2="-6" width="0.254" layer="21"/>
<wire x1="5.3" y1="-6" x2="6.5" y2="-6" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-6" x2="0.6" y2="-6" width="0.254" layer="21"/>
<wire x1="0.6" y1="-6" x2="0.6" y2="-13.9" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-6" x2="-0.6" y2="-13.9" width="0.254" layer="21"/>
<wire x1="-3" y1="4.3" x2="3" y2="4.3" width="0.254" layer="21" style="shortdash"/>
<wire x1="3" y1="4.3" x2="3" y2="-1.3" width="0.254" layer="21" style="shortdash"/>
<wire x1="3" y1="-1.3" x2="-3" y2="-1.3" width="0.254" layer="21" style="shortdash"/>
<wire x1="-3" y1="-1.3" x2="-3" y2="4.3" width="0.254" layer="21" style="shortdash"/>
<pad name="P$1" x="1.5" y="0" drill="1.02" shape="square"/>
<pad name="P$2" x="-1.5" y="0" drill="1.02"/>
<pad name="P$3" x="1.5" y="3" drill="1.02"/>
<pad name="P$4" x="-1.5" y="3" drill="1.02"/>
<hole x="0" y="-8.53" drill="3"/>
</package>
<package name="44764-0401">
<description>Molex Micro-Fit 3.0 - Board-to-Board BMI (Blind Mate Interface), Receptacle, Right Angle, Thru hole;  P/N: SD-44764-0401, SD-44764-0402, SD-44764-0403

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/447640401_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/447640401_sd.pdf&lt;/a&gt;</description>
<wire x1="-3.35" y1="6.45" x2="3.35" y2="6.45" width="0.254" layer="21" style="shortdash"/>
<wire x1="3.35" y1="6.45" x2="3.35" y2="-5.6" width="0.254" layer="21" style="shortdash"/>
<wire x1="3.35" y1="-5.6" x2="-3.35" y2="-5.6" width="0.254" layer="21" style="shortdash"/>
<wire x1="-3.35" y1="-5.6" x2="-3.35" y2="6.45" width="0.254" layer="21" style="shortdash"/>
<pad name="P$1" x="-1.5" y="0" drill="1.02" shape="square"/>
<pad name="P$2" x="1.5" y="0" drill="1.02"/>
<pad name="P$3" x="-1.5" y="3" drill="1.02"/>
<pad name="P$4" x="1.5" y="3" drill="1.02"/>
<hole x="0" y="-3.05" drill="2.36"/>
</package>
<package name="43045-1612">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, with Pegs;  P/N: SD-43045-1612, SD-43045-1613, SD-43045-1614

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/430450212_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450212_sd.pdf&lt;/a&gt;</description>
<wire x1="-14.075" y1="4.9" x2="-13.8" y2="4.9" width="0.254" layer="21"/>
<wire x1="-13.8" y1="4.9" x2="-12.07" y2="4.9" width="0.254" layer="21"/>
<wire x1="-12.07" y1="4.9" x2="-0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.9" x2="0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="0.7" y1="4.9" x2="12.07" y2="4.9" width="0.254" layer="21"/>
<wire x1="12.07" y1="4.9" x2="13.8" y2="4.9" width="0.254" layer="21"/>
<wire x1="13.8" y1="4.9" x2="14.075" y2="4.9" width="0.254" layer="21"/>
<wire x1="14.075" y1="4.9" x2="14.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="13" y1="-2.47" x2="13" y2="-1.9" width="0.254" layer="21"/>
<wire x1="13" y1="-1.9" x2="12.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="12.07" y1="-1.9" x2="10" y2="-1.9" width="0.254" layer="21"/>
<wire x1="10" y1="-1.9" x2="9" y2="-1.9" width="0.254" layer="21"/>
<wire x1="9" y1="-1.9" x2="-9" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-9" y1="-1.9" x2="-10" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-10" y1="-1.9" x2="-12.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-12.07" y1="-1.9" x2="-13" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-13" y1="-1.9" x2="-13" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-13" y1="-2.47" x2="-13.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-13.8" y1="-2.47" x2="-14.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-14.075" y1="-2.47" x2="-14.075" y2="4.9" width="0.254" layer="21"/>
<wire x1="13" y1="-2.47" x2="13.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="13.8" y1="-2.47" x2="14.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-0.7" y1="6.3" x2="0.7" y2="6.3" width="0.254" layer="21"/>
<wire x1="0.7" y1="6.3" x2="0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="-0.7" y1="6.3" x2="-0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="9" y1="-1.9" x2="9" y2="-2.5" width="0.254" layer="21"/>
<wire x1="9" y1="-2.5" x2="10" y2="-2.5" width="0.254" layer="21"/>
<wire x1="10" y1="-2.5" x2="10" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-10" y1="-1.9" x2="-10" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-10" y1="-2.5" x2="-9" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-9" y1="-2.5" x2="-9" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-13.8" y1="-2.47" x2="-13.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="-13.8" y1="0.5" x2="-13.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="-13.8" y1="2.5" x2="-13.8" y2="4.9" width="0.2" layer="21"/>
<wire x1="13.8" y1="-2.47" x2="13.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="13.8" y1="0.5" x2="13.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="13.8" y1="2.5" x2="13.8" y2="4.9" width="0.2" layer="21"/>
<wire x1="-12.07" y1="-1.9" x2="-12.07" y2="0.5" width="0.2" layer="21"/>
<wire x1="-12.07" y1="0.5" x2="-12.07" y2="2.5" width="0.2" layer="21"/>
<wire x1="-12.07" y1="2.5" x2="-12.07" y2="4.9" width="0.2" layer="21"/>
<wire x1="12.07" y1="4.9" x2="12.07" y2="2.5" width="0.2" layer="21"/>
<wire x1="12.07" y1="2.5" x2="12.07" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.07" y1="0.5" x2="12.07" y2="-1.9" width="0.2" layer="21"/>
<wire x1="-12.07" y1="2.5" x2="-12.7" y2="2.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="2.5" x2="-13.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="-12.07" y1="0.5" x2="-12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="0.5" x2="-13.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.07" y1="2.5" x2="12.7" y2="2.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="2.5" x2="13.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="12.07" y1="0.5" x2="12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="0.5" x2="13.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="2.5" x2="-12.7" y2="2" width="0.2" layer="21"/>
<wire x1="-12.7" y1="2" x2="-13" y2="2" width="0.2" layer="21"/>
<wire x1="-13" y1="2" x2="-13" y2="1" width="0.2" layer="21"/>
<wire x1="-13" y1="1" x2="-12.7" y2="1" width="0.2" layer="21"/>
<wire x1="-12.7" y1="1" x2="-12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="2.5" x2="12.7" y2="2" width="0.2" layer="21"/>
<wire x1="12.7" y1="2" x2="13" y2="2" width="0.2" layer="21"/>
<wire x1="13" y1="2" x2="13" y2="1" width="0.2" layer="21"/>
<wire x1="13" y1="1" x2="12.7" y2="1" width="0.2" layer="21"/>
<wire x1="12.7" y1="1" x2="12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="6.23" y1="1.27" x2="8.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="1.27" x2="8.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="-1.27" x2="6.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="6.23" y1="-0.762" x2="6.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="6.738" y1="-1.27" x2="6.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="9.23" y1="1.27" x2="11.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="1.27" x2="11.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="-1.27" x2="9.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="9.23" y1="-0.762" x2="9.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="9.738" y1="-1.27" x2="9.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="6.23" y1="4.27" x2="8.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="4.27" x2="8.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="8.77" y1="1.73" x2="6.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="6.23" y1="2.238" x2="6.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="6.738" y1="1.73" x2="6.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="11.77" y1="4.27" x2="9.23" y2="4.27" width="0.254" layer="22"/>
<wire x1="9.23" y1="4.27" x2="9.23" y2="1.73" width="0.254" layer="22"/>
<wire x1="9.23" y1="1.73" x2="11.262" y2="1.73" width="0.254" layer="22"/>
<wire x1="11.77" y1="2.238" x2="11.77" y2="4.27" width="0.254" layer="22"/>
<wire x1="11.262" y1="1.73" x2="11.77" y2="2.238" width="0.254" layer="22"/>
<wire x1="3.23" y1="1.27" x2="5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="1.27" x2="5.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="-1.27" x2="3.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="-0.762" x2="3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.738" y1="-1.27" x2="3.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="3.23" y1="4.27" x2="5.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="4.27" x2="5.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="5.77" y1="1.73" x2="3.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="3.23" y1="2.238" x2="3.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="3.738" y1="1.73" x2="3.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.762" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="-1.27" x2="0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="0.23" y1="4.27" x2="2.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="4.27" x2="2.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.73" x2="0.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="0.23" y1="2.238" x2="0.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="1.73" x2="0.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.27" x2="-2.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-0.762" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-1.27" x2="-2.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-2.77" y1="4.27" x2="-0.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="4.27" x2="-0.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.73" x2="-2.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-2.77" y1="2.238" x2="-2.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="1.73" x2="-2.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="-5.77" y1="1.27" x2="-3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.27" x2="-3.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-1.27" x2="-5.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-0.762" x2="-5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.262" y1="-1.27" x2="-5.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-5.77" y1="4.27" x2="-3.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="4.27" x2="-3.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.73" x2="-5.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-5.77" y1="2.238" x2="-5.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-5.262" y1="1.73" x2="-5.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="-8.77" y1="1.27" x2="-6.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="1.27" x2="-6.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-1.27" x2="-8.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-0.762" x2="-8.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-8.262" y1="-1.27" x2="-8.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-8.77" y1="4.27" x2="-6.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="4.27" x2="-6.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-6.23" y1="1.73" x2="-8.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-8.77" y1="2.238" x2="-8.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-8.262" y1="1.73" x2="-8.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="-11.77" y1="1.27" x2="-9.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="1.27" x2="-9.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-1.27" x2="-11.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-11.77" y1="-0.762" x2="-11.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-11.262" y1="-1.27" x2="-11.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-11.77" y1="4.27" x2="-9.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="4.27" x2="-9.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-9.23" y1="1.73" x2="-11.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-11.77" y1="2.238" x2="-11.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-11.262" y1="1.73" x2="-11.77" y2="2.238" width="0.254" layer="21"/>
<pad name="P$1" x="10.5" y="0" drill="1.02" shape="square"/>
<pad name="P$2" x="7.5" y="0" drill="1.02"/>
<pad name="P$3" x="4.5" y="0" drill="1.02"/>
<pad name="P$4" x="1.5" y="0" drill="1.02"/>
<pad name="P$5" x="-1.5" y="0" drill="1.02"/>
<pad name="P$6" x="-4.5" y="0" drill="1.02"/>
<pad name="P$7" x="-7.5" y="0" drill="1.02"/>
<pad name="P$8" x="-10.5" y="0" drill="1.02"/>
<pad name="P$9" x="10.5" y="3" drill="1.02"/>
<pad name="P$10" x="7.5" y="3" drill="1.02"/>
<pad name="P$11" x="4.5" y="3" drill="1.02"/>
<pad name="P$12" x="1.5" y="3" drill="1.02"/>
<pad name="P$13" x="-1.5" y="3" drill="1.02"/>
<pad name="P$14" x="-4.5" y="3" drill="1.02"/>
<pad name="P$15" x="-7.5" y="3" drill="1.02"/>
<pad name="P$16" x="-10.5" y="3" drill="1.02"/>
<hole x="13.5" y="3.94" drill="1.02"/>
<hole x="-13.5" y="3.94" drill="1.02"/>
</package>
<package name="43045-1600">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Right Angle;  P/N: SD-43045-1600, SD-43045-1601, SD-43045-1602

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/430450200_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450200_sd.pdf&lt;/a&gt;</description>
<wire x1="13.825" y1="3.71" x2="13.825" y2="-2.4" width="0.254" layer="21"/>
<wire x1="12" y1="-4.6" x2="-12" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-13.825" y1="-2.5" x2="-13.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.83" y1="5.31" x2="-12.5" y2="5.31" width="0.127" layer="21"/>
<wire x1="-12.5" y1="5.31" x2="-14.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="-14.08" y1="5.31" x2="-14.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="-14.08" y1="3.71" x2="-13.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.825" y1="5.31" x2="-12.5" y2="5.31" width="0.127" layer="21"/>
<wire x1="-12.5" y1="5.31" x2="12.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="12.5" y1="5.31" x2="14.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="14.08" y1="5.31" x2="14.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="14.08" y1="3.71" x2="13.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-12.5" y1="5.31" x2="-12.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-12.5" y1="3.5" x2="12.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="12.5" y1="3.5" x2="12.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="-13.825" y1="-2.5" x2="-12" y2="-4.6" width="0.254" layer="21"/>
<wire x1="13.825" y1="-2.4" x2="12" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-2.4" x2="0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-2.4" x2="0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="0.6" y1="-3" x2="0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-4" x2="-0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-4" x2="-0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="-0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="0.6" y2="-3" width="0.254" layer="21"/>
<pad name="P$4" x="1.5" y="4.32" drill="1.02"/>
<pad name="P$12" x="1.5" y="7.32" drill="1.02"/>
<pad name="P$5" x="-1.5" y="4.32" drill="1.02"/>
<pad name="P$13" x="-1.5" y="7.32" drill="1.02"/>
<pad name="P$3" x="4.5" y="4.32" drill="1.02"/>
<pad name="P$6" x="-4.5" y="4.32" drill="1.02"/>
<pad name="P$11" x="4.5" y="7.32" drill="1.02"/>
<pad name="P$14" x="-4.5" y="7.32" drill="1.02"/>
<pad name="P$2" x="7.5" y="4.32" drill="1.02"/>
<pad name="P$7" x="-7.5" y="4.32" drill="1.02"/>
<pad name="P$10" x="7.5" y="7.32" drill="1.02"/>
<pad name="P$15" x="-7.5" y="7.32" drill="1.02"/>
<pad name="P$1" x="10.5" y="4.32" drill="1.02" shape="square"/>
<pad name="P$8" x="-10.5" y="4.32" drill="1.02"/>
<pad name="P$9" x="10.5" y="7.32" drill="1.02"/>
<pad name="P$16" x="-10.5" y="7.32" drill="1.02"/>
<hole x="8.35" y="0" drill="3"/>
<hole x="-8.35" y="0" drill="3"/>
</package>
<package name="43045-1609">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Right Angle, Solderable tabs;   P/N: SD-43045-1609, SD-43045-1610, SD-43045-1611

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/430450209_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450209_sd.pdf&lt;/a&gt;</description>
<wire x1="13.825" y1="3.71" x2="13.825" y2="-2.4" width="0.254" layer="21"/>
<wire x1="12" y1="-4.6" x2="-12" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-13.825" y1="-2.5" x2="-13.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.83" y1="5.31" x2="-12.5" y2="5.31" width="0.127" layer="21"/>
<wire x1="-12.5" y1="5.31" x2="-14.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="-14.08" y1="5.31" x2="-14.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="-14.08" y1="3.71" x2="-13.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.825" y1="5.31" x2="-12.5" y2="5.31" width="0.127" layer="21"/>
<wire x1="-12.5" y1="5.31" x2="12.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="12.5" y1="5.31" x2="14.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="14.08" y1="5.31" x2="14.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="14.08" y1="3.71" x2="13.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-12.5" y1="5.31" x2="-12.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-12.5" y1="3.5" x2="12.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="12.5" y1="3.5" x2="12.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="-13.825" y1="-2.5" x2="-12" y2="-4.6" width="0.254" layer="21"/>
<wire x1="13.825" y1="-2.4" x2="12" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-2.4" x2="0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-2.4" x2="0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="0.6" y1="-3" x2="0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-4" x2="-0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-4" x2="-0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="-0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="0.6" y2="-3" width="0.254" layer="21"/>
<smd name="TAB1" x="-14.38" y="0" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="TAB2" x="14.38" y="0" dx="1.65" dy="3.43" layer="1" rot="R90"/>
<smd name="P$10" x="7.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$2" x="7.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$9" x="10.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$1" x="10.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$3" x="4.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$4" x="1.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$11" x="4.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$12" x="1.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$5" x="-1.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$6" x="-4.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$13" x="-1.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$14" x="-4.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$7" x="-7.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$8" x="-10.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$15" x="-7.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$16" x="-10.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
</package>
<package name="43045-1606">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Right Angle, Solderable Retention clips;   P/N: SD-43045-1606, SD-43045-1607, SD-43045-1608

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/430450206_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450206_sd.pdf&lt;/a&gt;</description>
<wire x1="13.825" y1="3.71" x2="13.825" y2="-2.4" width="0.254" layer="21"/>
<wire x1="12" y1="-4.6" x2="-12" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-13.825" y1="-2.5" x2="-13.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.83" y1="5.31" x2="-12.5" y2="5.31" width="0.127" layer="21"/>
<wire x1="-12.5" y1="5.31" x2="-14.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="-14.08" y1="5.31" x2="-14.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="-14.08" y1="3.71" x2="-13.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-4.825" y1="5.31" x2="-12.5" y2="5.31" width="0.127" layer="21"/>
<wire x1="-12.5" y1="5.31" x2="12.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="12.5" y1="5.31" x2="14.08" y2="5.31" width="0.254" layer="21"/>
<wire x1="14.08" y1="5.31" x2="14.08" y2="3.71" width="0.254" layer="21"/>
<wire x1="14.08" y1="3.71" x2="13.825" y2="3.71" width="0.254" layer="21"/>
<wire x1="-12.5" y1="5.31" x2="-12.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="-12.5" y1="3.5" x2="12.5" y2="3.5" width="0.254" layer="21"/>
<wire x1="12.5" y1="3.5" x2="12.5" y2="5.31" width="0.254" layer="21"/>
<wire x1="-13.825" y1="-2.5" x2="-12" y2="-4.6" width="0.254" layer="21"/>
<wire x1="13.825" y1="-2.4" x2="12" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-2.4" x2="0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-2.4" x2="0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="0.6" y1="-3" x2="0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="0.6" y1="-4" x2="-0.6" y2="-4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-4" x2="-0.6" y2="-3" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="-0.6" y2="-2.4" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-3" x2="0.6" y2="-3" width="0.254" layer="21"/>
<smd name="P$10" x="7.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$2" x="7.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$9" x="10.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$1" x="10.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$3" x="4.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$4" x="1.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$11" x="4.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$12" x="1.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$5" x="-1.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$6" x="-4.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$13" x="-1.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$14" x="-4.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$7" x="-7.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$8" x="-10.5" y="5.47" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$15" x="-7.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<smd name="P$16" x="-10.5" y="10.1" dx="2.92" dy="1.27" layer="1" rot="R90"/>
<hole x="-12.65" y="0" drill="2.41"/>
<hole x="12.65" y="0" drill="2.41"/>
</package>
<package name="43045-1615">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Vertical, with Solderable Retention Clips;  P/N: SD-43045-1615, SD-43045-1616, SD-43045-1617

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/430450215_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450215_sd.pdf&lt;/a&gt;</description>
<wire x1="-14.075" y1="3.4" x2="-13.8" y2="3.4" width="0.254" layer="21"/>
<wire x1="-13.8" y1="3.4" x2="-12.07" y2="3.4" width="0.254" layer="21"/>
<wire x1="-12.07" y1="3.4" x2="-0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.4" x2="0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="0.7" y1="3.4" x2="12.07" y2="3.4" width="0.254" layer="21"/>
<wire x1="12.07" y1="3.4" x2="13.8" y2="3.4" width="0.254" layer="21"/>
<wire x1="13.8" y1="3.4" x2="14.075" y2="3.4" width="0.254" layer="21"/>
<wire x1="14.075" y1="3.4" x2="14.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="13" y1="-3.97" x2="13" y2="-3.4" width="0.254" layer="21"/>
<wire x1="13" y1="-3.4" x2="12.07" y2="-3.4" width="0.254" layer="21"/>
<wire x1="12.07" y1="-3.4" x2="10" y2="-3.4" width="0.254" layer="21"/>
<wire x1="10" y1="-3.4" x2="9" y2="-3.4" width="0.254" layer="21"/>
<wire x1="9" y1="-3.4" x2="-9" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-9" y1="-3.4" x2="-10" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-10" y1="-3.4" x2="-12.07" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-12.07" y1="-3.4" x2="-13" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-13" y1="-3.4" x2="-13" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-13" y1="-3.97" x2="-13.8" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-13.8" y1="-3.97" x2="-14.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-14.075" y1="-3.97" x2="-14.075" y2="3.4" width="0.254" layer="21"/>
<wire x1="13" y1="-3.97" x2="13.8" y2="-3.97" width="0.254" layer="21"/>
<wire x1="13.8" y1="-3.97" x2="14.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.8" x2="0.7" y2="4.8" width="0.254" layer="21"/>
<wire x1="0.7" y1="4.8" x2="0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.8" x2="-0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="9" y1="-3.4" x2="9" y2="-4" width="0.254" layer="21"/>
<wire x1="9" y1="-4" x2="10" y2="-4" width="0.254" layer="21"/>
<wire x1="10" y1="-4" x2="10" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-10" y1="-3.4" x2="-10" y2="-4" width="0.254" layer="21"/>
<wire x1="-10" y1="-4" x2="-9" y2="-4" width="0.254" layer="21"/>
<wire x1="-9" y1="-4" x2="-9" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-13.8" y1="-3.97" x2="-13.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-13.8" y1="-1" x2="-13.8" y2="1" width="0.2" layer="21"/>
<wire x1="-13.8" y1="1" x2="-13.8" y2="3.4" width="0.2" layer="21"/>
<wire x1="13.8" y1="-3.97" x2="13.8" y2="-1" width="0.2" layer="21"/>
<wire x1="13.8" y1="-1" x2="13.8" y2="1" width="0.2" layer="21"/>
<wire x1="13.8" y1="1" x2="13.8" y2="3.4" width="0.2" layer="21"/>
<wire x1="-12.07" y1="-3.4" x2="-12.07" y2="-1" width="0.2" layer="21"/>
<wire x1="-12.07" y1="-1" x2="-12.07" y2="1" width="0.2" layer="21"/>
<wire x1="-12.07" y1="1" x2="-12.07" y2="3.4" width="0.2" layer="21"/>
<wire x1="12.07" y1="3.4" x2="12.07" y2="1" width="0.2" layer="21"/>
<wire x1="12.07" y1="1" x2="12.07" y2="-1" width="0.2" layer="21"/>
<wire x1="12.07" y1="-1" x2="12.07" y2="-3.4" width="0.2" layer="21"/>
<wire x1="-12.07" y1="1" x2="-12.7" y2="1" width="0.2" layer="21"/>
<wire x1="-12.7" y1="1" x2="-13.8" y2="1" width="0.2" layer="21"/>
<wire x1="-12.07" y1="-1" x2="-12.7" y2="-1" width="0.2" layer="21"/>
<wire x1="-12.7" y1="-1" x2="-13.8" y2="-1" width="0.2" layer="21"/>
<wire x1="12.07" y1="1" x2="12.7" y2="1" width="0.2" layer="21"/>
<wire x1="12.7" y1="1" x2="13.8" y2="1" width="0.2" layer="21"/>
<wire x1="12.07" y1="-1" x2="12.7" y2="-1" width="0.2" layer="21"/>
<wire x1="12.7" y1="-1" x2="13.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-12.7" y1="1" x2="-12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="0.5" x2="-13" y2="0.5" width="0.2" layer="21"/>
<wire x1="-13" y1="0.5" x2="-13" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-13" y1="-0.5" x2="-12.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="-0.5" x2="-12.7" y2="-1" width="0.2" layer="21"/>
<wire x1="12.7" y1="1" x2="12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="0.5" x2="13" y2="0.5" width="0.2" layer="21"/>
<wire x1="13" y1="0.5" x2="13" y2="-0.5" width="0.2" layer="21"/>
<wire x1="13" y1="-0.5" x2="12.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="-0.5" x2="12.7" y2="-1" width="0.2" layer="21"/>
<wire x1="6.23" y1="-0.23" x2="8.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="8.77" y1="-0.23" x2="8.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="8.77" y1="-2.77" x2="6.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="6.23" y1="-2.262" x2="6.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="6.738" y1="-2.77" x2="6.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="9.23" y1="-0.23" x2="11.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="11.77" y1="-0.23" x2="11.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="11.77" y1="-2.77" x2="9.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="9.23" y1="-2.262" x2="9.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="9.738" y1="-2.77" x2="9.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="6.23" y1="2.77" x2="8.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="8.77" y1="2.77" x2="8.77" y2="0.23" width="0.254" layer="21"/>
<wire x1="8.77" y1="0.23" x2="6.738" y2="0.23" width="0.254" layer="21"/>
<wire x1="6.23" y1="0.738" x2="6.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="6.738" y1="0.23" x2="6.23" y2="0.738" width="0.254" layer="21"/>
<wire x1="11.77" y1="2.77" x2="9.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="9.23" y1="2.77" x2="9.23" y2="0.23" width="0.254" layer="22"/>
<wire x1="9.23" y1="0.23" x2="11.262" y2="0.23" width="0.254" layer="22"/>
<wire x1="11.77" y1="0.738" x2="11.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="11.262" y1="0.23" x2="11.77" y2="0.738" width="0.254" layer="22"/>
<wire x1="0.23" y1="-0.23" x2="2.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="2.77" y1="-0.23" x2="2.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="2.77" y1="-2.77" x2="0.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="0.23" y1="-2.262" x2="0.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="0.738" y1="-2.77" x2="0.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="3.23" y1="-0.23" x2="5.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="5.77" y1="-0.23" x2="5.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="5.77" y1="-2.77" x2="3.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="3.23" y1="-2.262" x2="3.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="3.738" y1="-2.77" x2="3.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="0.23" y1="2.77" x2="2.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="2.77" y1="2.77" x2="2.77" y2="0.23" width="0.254" layer="21"/>
<wire x1="2.77" y1="0.23" x2="0.738" y2="0.23" width="0.254" layer="21"/>
<wire x1="0.23" y1="0.738" x2="0.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="0.738" y1="0.23" x2="0.23" y2="0.738" width="0.254" layer="21"/>
<wire x1="5.77" y1="2.77" x2="3.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="3.23" y1="2.77" x2="3.23" y2="0.23" width="0.254" layer="22"/>
<wire x1="3.23" y1="0.23" x2="5.262" y2="0.23" width="0.254" layer="22"/>
<wire x1="5.77" y1="0.738" x2="5.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="5.262" y1="0.23" x2="5.77" y2="0.738" width="0.254" layer="22"/>
<wire x1="-5.77" y1="-0.23" x2="-3.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-0.23" x2="-3.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-2.77" x2="-5.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-2.262" x2="-5.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-5.262" y1="-2.77" x2="-5.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-0.23" x2="-0.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-0.23" x2="-0.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-2.77" x2="-2.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-2.262" x2="-2.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-2.77" x2="-2.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-5.77" y1="2.77" x2="-3.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="-3.23" y1="2.77" x2="-3.23" y2="0.23" width="0.254" layer="21"/>
<wire x1="-3.23" y1="0.23" x2="-5.262" y2="0.23" width="0.254" layer="21"/>
<wire x1="-5.77" y1="0.738" x2="-5.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="-5.262" y1="0.23" x2="-5.77" y2="0.738" width="0.254" layer="21"/>
<wire x1="-0.23" y1="2.77" x2="-2.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="-2.77" y1="2.77" x2="-2.77" y2="0.23" width="0.254" layer="22"/>
<wire x1="-2.77" y1="0.23" x2="-0.738" y2="0.23" width="0.254" layer="22"/>
<wire x1="-0.23" y1="0.738" x2="-0.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="-0.738" y1="0.23" x2="-0.23" y2="0.738" width="0.254" layer="22"/>
<wire x1="-11.77" y1="-0.23" x2="-9.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-0.23" x2="-9.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-2.77" x2="-11.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-11.77" y1="-2.262" x2="-11.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-11.262" y1="-2.77" x2="-11.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-0.23" x2="-6.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-0.23" x2="-6.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-2.77" x2="-8.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-2.262" x2="-8.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-8.262" y1="-2.77" x2="-8.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-11.77" y1="2.77" x2="-9.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="-9.23" y1="2.77" x2="-9.23" y2="0.23" width="0.254" layer="21"/>
<wire x1="-9.23" y1="0.23" x2="-11.262" y2="0.23" width="0.254" layer="21"/>
<wire x1="-11.77" y1="0.738" x2="-11.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="-11.262" y1="0.23" x2="-11.77" y2="0.738" width="0.254" layer="21"/>
<wire x1="-6.23" y1="2.77" x2="-8.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="-8.77" y1="2.77" x2="-8.77" y2="0.23" width="0.254" layer="22"/>
<wire x1="-8.77" y1="0.23" x2="-6.738" y2="0.23" width="0.254" layer="22"/>
<wire x1="-6.23" y1="0.738" x2="-6.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="-6.738" y1="0.23" x2="-6.23" y2="0.738" width="0.254" layer="22"/>
<smd name="P$1" x="10.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$2" x="7.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$3" x="4.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$4" x="1.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$5" x="-1.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$6" x="-4.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$7" x="-7.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$8" x="-10.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$9" x="10.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$10" x="7.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$11" x="4.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$12" x="1.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$13" x="-1.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$14" x="-4.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$15" x="-7.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$16" x="-10.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<hole x="-12.65" y="0" drill="2.41"/>
<hole x="12.65" y="0" drill="2.41"/>
</package>
<package name="43045-1618">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Surface mount, Vertical, with Solder Tabs;  P/N: SD-43045-1618, SD-43045-1619, SD-43045-1620

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/430450218_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/430450218_sd.pdf&lt;/a&gt;</description>
<wire x1="-14.075" y1="3.4" x2="-13.8" y2="3.4" width="0.254" layer="21"/>
<wire x1="-13.8" y1="3.4" x2="-12.07" y2="3.4" width="0.254" layer="21"/>
<wire x1="-12.07" y1="3.4" x2="-0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="-0.7" y1="3.4" x2="0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="0.7" y1="3.4" x2="12.07" y2="3.4" width="0.254" layer="21"/>
<wire x1="12.07" y1="3.4" x2="13.8" y2="3.4" width="0.254" layer="21"/>
<wire x1="13.8" y1="3.4" x2="14.075" y2="3.4" width="0.254" layer="21"/>
<wire x1="14.075" y1="3.4" x2="14.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="13" y1="-3.97" x2="13" y2="-3.4" width="0.254" layer="21"/>
<wire x1="13" y1="-3.4" x2="12.07" y2="-3.4" width="0.254" layer="21"/>
<wire x1="12.07" y1="-3.4" x2="10" y2="-3.4" width="0.254" layer="21"/>
<wire x1="10" y1="-3.4" x2="9" y2="-3.4" width="0.254" layer="21"/>
<wire x1="9" y1="-3.4" x2="-9" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-9" y1="-3.4" x2="-10" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-10" y1="-3.4" x2="-12.07" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-12.07" y1="-3.4" x2="-13" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-13" y1="-3.4" x2="-13" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-13" y1="-3.97" x2="-13.8" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-13.8" y1="-3.97" x2="-14.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-14.075" y1="-3.97" x2="-14.075" y2="3.4" width="0.254" layer="21"/>
<wire x1="13" y1="-3.97" x2="13.8" y2="-3.97" width="0.254" layer="21"/>
<wire x1="13.8" y1="-3.97" x2="14.075" y2="-3.97" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.8" x2="0.7" y2="4.8" width="0.254" layer="21"/>
<wire x1="0.7" y1="4.8" x2="0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.8" x2="-0.7" y2="3.4" width="0.254" layer="21"/>
<wire x1="9" y1="-3.4" x2="9" y2="-4" width="0.254" layer="21"/>
<wire x1="9" y1="-4" x2="10" y2="-4" width="0.254" layer="21"/>
<wire x1="10" y1="-4" x2="10" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-10" y1="-3.4" x2="-10" y2="-4" width="0.254" layer="21"/>
<wire x1="-10" y1="-4" x2="-9" y2="-4" width="0.254" layer="21"/>
<wire x1="-9" y1="-4" x2="-9" y2="-3.4" width="0.254" layer="21"/>
<wire x1="-13.8" y1="-3.97" x2="-13.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-13.8" y1="-1" x2="-13.8" y2="1" width="0.2" layer="21"/>
<wire x1="-13.8" y1="1" x2="-13.8" y2="3.4" width="0.2" layer="21"/>
<wire x1="13.8" y1="-3.97" x2="13.8" y2="-1" width="0.2" layer="21"/>
<wire x1="13.8" y1="-1" x2="13.8" y2="1" width="0.2" layer="21"/>
<wire x1="13.8" y1="1" x2="13.8" y2="3.4" width="0.2" layer="21"/>
<wire x1="-12.07" y1="-3.4" x2="-12.07" y2="-1" width="0.2" layer="21"/>
<wire x1="-12.07" y1="-1" x2="-12.07" y2="1" width="0.2" layer="21"/>
<wire x1="-12.07" y1="1" x2="-12.07" y2="3.4" width="0.2" layer="21"/>
<wire x1="12.07" y1="3.4" x2="12.07" y2="1" width="0.2" layer="21"/>
<wire x1="12.07" y1="1" x2="12.07" y2="-1" width="0.2" layer="21"/>
<wire x1="12.07" y1="-1" x2="12.07" y2="-3.4" width="0.2" layer="21"/>
<wire x1="-12.07" y1="1" x2="-12.7" y2="1" width="0.2" layer="21"/>
<wire x1="-12.7" y1="1" x2="-13.8" y2="1" width="0.2" layer="21"/>
<wire x1="-12.07" y1="-1" x2="-12.7" y2="-1" width="0.2" layer="21"/>
<wire x1="-12.7" y1="-1" x2="-13.8" y2="-1" width="0.2" layer="21"/>
<wire x1="12.07" y1="1" x2="12.7" y2="1" width="0.2" layer="21"/>
<wire x1="12.7" y1="1" x2="13.8" y2="1" width="0.2" layer="21"/>
<wire x1="12.07" y1="-1" x2="12.7" y2="-1" width="0.2" layer="21"/>
<wire x1="12.7" y1="-1" x2="13.8" y2="-1" width="0.2" layer="21"/>
<wire x1="-12.7" y1="1" x2="-12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="0.5" x2="-13" y2="0.5" width="0.2" layer="21"/>
<wire x1="-13" y1="0.5" x2="-13" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-13" y1="-0.5" x2="-12.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="-0.5" x2="-12.7" y2="-1" width="0.2" layer="21"/>
<wire x1="12.7" y1="1" x2="12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="0.5" x2="13" y2="0.5" width="0.2" layer="21"/>
<wire x1="13" y1="0.5" x2="13" y2="-0.5" width="0.2" layer="21"/>
<wire x1="13" y1="-0.5" x2="12.7" y2="-0.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="-0.5" x2="12.7" y2="-1" width="0.2" layer="21"/>
<wire x1="6.23" y1="-0.23" x2="8.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="8.77" y1="-0.23" x2="8.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="8.77" y1="-2.77" x2="6.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="6.23" y1="-2.262" x2="6.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="6.738" y1="-2.77" x2="6.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="9.23" y1="-0.23" x2="11.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="11.77" y1="-0.23" x2="11.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="11.77" y1="-2.77" x2="9.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="9.23" y1="-2.262" x2="9.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="9.738" y1="-2.77" x2="9.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="6.23" y1="2.77" x2="8.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="8.77" y1="2.77" x2="8.77" y2="0.23" width="0.254" layer="21"/>
<wire x1="8.77" y1="0.23" x2="6.738" y2="0.23" width="0.254" layer="21"/>
<wire x1="6.23" y1="0.738" x2="6.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="6.738" y1="0.23" x2="6.23" y2="0.738" width="0.254" layer="21"/>
<wire x1="11.77" y1="2.77" x2="9.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="9.23" y1="2.77" x2="9.23" y2="0.23" width="0.254" layer="22"/>
<wire x1="9.23" y1="0.23" x2="11.262" y2="0.23" width="0.254" layer="22"/>
<wire x1="11.77" y1="0.738" x2="11.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="11.262" y1="0.23" x2="11.77" y2="0.738" width="0.254" layer="22"/>
<wire x1="0.23" y1="-0.23" x2="2.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="2.77" y1="-0.23" x2="2.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="2.77" y1="-2.77" x2="0.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="0.23" y1="-2.262" x2="0.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="0.738" y1="-2.77" x2="0.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="3.23" y1="-0.23" x2="5.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="5.77" y1="-0.23" x2="5.77" y2="-2.77" width="0.254" layer="21"/>
<wire x1="5.77" y1="-2.77" x2="3.738" y2="-2.77" width="0.254" layer="21"/>
<wire x1="3.23" y1="-2.262" x2="3.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="3.738" y1="-2.77" x2="3.23" y2="-2.262" width="0.254" layer="21"/>
<wire x1="0.23" y1="2.77" x2="2.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="2.77" y1="2.77" x2="2.77" y2="0.23" width="0.254" layer="21"/>
<wire x1="2.77" y1="0.23" x2="0.738" y2="0.23" width="0.254" layer="21"/>
<wire x1="0.23" y1="0.738" x2="0.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="0.738" y1="0.23" x2="0.23" y2="0.738" width="0.254" layer="21"/>
<wire x1="5.77" y1="2.77" x2="3.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="3.23" y1="2.77" x2="3.23" y2="0.23" width="0.254" layer="22"/>
<wire x1="3.23" y1="0.23" x2="5.262" y2="0.23" width="0.254" layer="22"/>
<wire x1="5.77" y1="0.738" x2="5.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="5.262" y1="0.23" x2="5.77" y2="0.738" width="0.254" layer="22"/>
<wire x1="-5.77" y1="-0.23" x2="-3.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-0.23" x2="-3.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-2.77" x2="-5.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-2.262" x2="-5.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-5.262" y1="-2.77" x2="-5.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-0.23" x2="-0.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-0.23" x2="-0.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-2.77" x2="-2.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-2.262" x2="-2.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-2.77" x2="-2.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-5.77" y1="2.77" x2="-3.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="-3.23" y1="2.77" x2="-3.23" y2="0.23" width="0.254" layer="21"/>
<wire x1="-3.23" y1="0.23" x2="-5.262" y2="0.23" width="0.254" layer="21"/>
<wire x1="-5.77" y1="0.738" x2="-5.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="-5.262" y1="0.23" x2="-5.77" y2="0.738" width="0.254" layer="21"/>
<wire x1="-0.23" y1="2.77" x2="-2.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="-2.77" y1="2.77" x2="-2.77" y2="0.23" width="0.254" layer="22"/>
<wire x1="-2.77" y1="0.23" x2="-0.738" y2="0.23" width="0.254" layer="22"/>
<wire x1="-0.23" y1="0.738" x2="-0.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="-0.738" y1="0.23" x2="-0.23" y2="0.738" width="0.254" layer="22"/>
<wire x1="-11.77" y1="-0.23" x2="-9.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-0.23" x2="-9.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-2.77" x2="-11.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-11.77" y1="-2.262" x2="-11.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-11.262" y1="-2.77" x2="-11.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-0.23" x2="-6.23" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-0.23" x2="-6.23" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-2.77" x2="-8.262" y2="-2.77" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-2.262" x2="-8.77" y2="-0.23" width="0.254" layer="21"/>
<wire x1="-8.262" y1="-2.77" x2="-8.77" y2="-2.262" width="0.254" layer="21"/>
<wire x1="-11.77" y1="2.77" x2="-9.23" y2="2.77" width="0.254" layer="21"/>
<wire x1="-9.23" y1="2.77" x2="-9.23" y2="0.23" width="0.254" layer="21"/>
<wire x1="-9.23" y1="0.23" x2="-11.262" y2="0.23" width="0.254" layer="21"/>
<wire x1="-11.77" y1="0.738" x2="-11.77" y2="2.77" width="0.254" layer="21"/>
<wire x1="-11.262" y1="0.23" x2="-11.77" y2="0.738" width="0.254" layer="21"/>
<wire x1="-6.23" y1="2.77" x2="-8.77" y2="2.77" width="0.254" layer="22"/>
<wire x1="-8.77" y1="2.77" x2="-8.77" y2="0.23" width="0.254" layer="22"/>
<wire x1="-8.77" y1="0.23" x2="-6.738" y2="0.23" width="0.254" layer="22"/>
<wire x1="-6.23" y1="0.738" x2="-6.23" y2="2.77" width="0.254" layer="22"/>
<wire x1="-6.738" y1="0.23" x2="-6.23" y2="0.738" width="0.254" layer="22"/>
<smd name="P$1" x="10.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$2" x="7.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$3" x="4.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$4" x="1.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$5" x="-1.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$6" x="-4.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$7" x="-7.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$8" x="-10.5" y="-4.7" dx="2.54" dy="1.27" layer="1" rot="R90"/>
<smd name="P$9" x="10.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$10" x="7.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$11" x="4.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$12" x="1.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$13" x="-1.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$14" x="-4.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$15" x="-7.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="P$16" x="-10.5" y="4.7" dx="2.54" dy="1.27" layer="1" rot="R270"/>
<smd name="CLIP1" x="-14.38" y="0" dx="3.43" dy="1.65" layer="1"/>
<smd name="CLIP2" x="14.38" y="0" dx="3.43" dy="1.65" layer="1" rot="R180"/>
</package>
<package name="44914-1601">
<description>Molex Micro-Fit 3.0 - Header Shrouded, Thru hole, Vertical, Press-fit, with Pegs;  P/N: SD-44914-1601, SD-44914-1602, SD-44914-1603

&lt;p&gt;&lt;a href ='http://www.molex.com/pdm_docs/sd/449140201_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/449140201_sd.pdf&lt;/a&gt;</description>
<wire x1="-14.075" y1="4.9" x2="-13.8" y2="4.9" width="0.254" layer="21"/>
<wire x1="-13.8" y1="4.9" x2="-12.07" y2="4.9" width="0.254" layer="21"/>
<wire x1="-12.07" y1="4.9" x2="-0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="-0.7" y1="4.9" x2="0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="0.7" y1="4.9" x2="12.07" y2="4.9" width="0.254" layer="21"/>
<wire x1="12.07" y1="4.9" x2="13.8" y2="4.9" width="0.254" layer="21"/>
<wire x1="13.8" y1="4.9" x2="14.075" y2="4.9" width="0.254" layer="21"/>
<wire x1="14.075" y1="4.9" x2="14.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="13" y1="-2.47" x2="13" y2="-1.9" width="0.254" layer="21"/>
<wire x1="13" y1="-1.9" x2="12.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="12.07" y1="-1.9" x2="10" y2="-1.9" width="0.254" layer="21"/>
<wire x1="10" y1="-1.9" x2="9" y2="-1.9" width="0.254" layer="21"/>
<wire x1="9" y1="-1.9" x2="-9" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-9" y1="-1.9" x2="-10" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-10" y1="-1.9" x2="-12.07" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-12.07" y1="-1.9" x2="-13" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-13" y1="-1.9" x2="-13" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-13" y1="-2.47" x2="-13.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-13.8" y1="-2.47" x2="-14.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-14.075" y1="-2.47" x2="-14.075" y2="4.9" width="0.254" layer="21"/>
<wire x1="13" y1="-2.47" x2="13.8" y2="-2.47" width="0.254" layer="21"/>
<wire x1="13.8" y1="-2.47" x2="14.075" y2="-2.47" width="0.254" layer="21"/>
<wire x1="-0.7" y1="6.3" x2="0.7" y2="6.3" width="0.254" layer="21"/>
<wire x1="0.7" y1="6.3" x2="0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="-0.7" y1="6.3" x2="-0.7" y2="4.9" width="0.254" layer="21"/>
<wire x1="9" y1="-1.9" x2="9" y2="-2.5" width="0.254" layer="21"/>
<wire x1="9" y1="-2.5" x2="10" y2="-2.5" width="0.254" layer="21"/>
<wire x1="10" y1="-2.5" x2="10" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-10" y1="-1.9" x2="-10" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-10" y1="-2.5" x2="-9" y2="-2.5" width="0.254" layer="21"/>
<wire x1="-9" y1="-2.5" x2="-9" y2="-1.9" width="0.254" layer="21"/>
<wire x1="-13.8" y1="-2.47" x2="-13.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="-13.8" y1="0.5" x2="-13.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="-13.8" y1="2.5" x2="-13.8" y2="4.9" width="0.2" layer="21"/>
<wire x1="13.8" y1="-2.47" x2="13.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="13.8" y1="0.5" x2="13.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="13.8" y1="2.5" x2="13.8" y2="4.9" width="0.2" layer="21"/>
<wire x1="-12.07" y1="-1.9" x2="-12.07" y2="0.5" width="0.2" layer="21"/>
<wire x1="-12.07" y1="0.5" x2="-12.07" y2="2.5" width="0.2" layer="21"/>
<wire x1="-12.07" y1="2.5" x2="-12.07" y2="4.9" width="0.2" layer="21"/>
<wire x1="12.07" y1="4.9" x2="12.07" y2="2.5" width="0.2" layer="21"/>
<wire x1="12.07" y1="2.5" x2="12.07" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.07" y1="0.5" x2="12.07" y2="-1.9" width="0.2" layer="21"/>
<wire x1="-12.07" y1="2.5" x2="-12.7" y2="2.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="2.5" x2="-13.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="-12.07" y1="0.5" x2="-12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="0.5" x2="-13.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.07" y1="2.5" x2="12.7" y2="2.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="2.5" x2="13.8" y2="2.5" width="0.2" layer="21"/>
<wire x1="12.07" y1="0.5" x2="12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="0.5" x2="13.8" y2="0.5" width="0.2" layer="21"/>
<wire x1="-12.7" y1="2.5" x2="-12.7" y2="2" width="0.2" layer="21"/>
<wire x1="-12.7" y1="2" x2="-13" y2="2" width="0.2" layer="21"/>
<wire x1="-13" y1="2" x2="-13" y2="1" width="0.2" layer="21"/>
<wire x1="-13" y1="1" x2="-12.7" y2="1" width="0.2" layer="21"/>
<wire x1="-12.7" y1="1" x2="-12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="12.7" y1="2.5" x2="12.7" y2="2" width="0.2" layer="21"/>
<wire x1="12.7" y1="2" x2="13" y2="2" width="0.2" layer="21"/>
<wire x1="13" y1="2" x2="13" y2="1" width="0.2" layer="21"/>
<wire x1="13" y1="1" x2="12.7" y2="1" width="0.2" layer="21"/>
<wire x1="12.7" y1="1" x2="12.7" y2="0.5" width="0.2" layer="21"/>
<wire x1="6.23" y1="1.27" x2="8.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="1.27" x2="8.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="-1.27" x2="6.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="6.23" y1="-0.762" x2="6.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="6.738" y1="-1.27" x2="6.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="9.23" y1="1.27" x2="11.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="1.27" x2="11.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="-1.27" x2="9.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="9.23" y1="-0.762" x2="9.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="9.738" y1="-1.27" x2="9.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="6.23" y1="4.27" x2="8.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="4.27" x2="8.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="8.77" y1="1.73" x2="6.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="6.23" y1="2.238" x2="6.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="6.738" y1="1.73" x2="6.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="11.77" y1="4.27" x2="9.23" y2="4.27" width="0.254" layer="22"/>
<wire x1="9.23" y1="4.27" x2="9.23" y2="1.73" width="0.254" layer="22"/>
<wire x1="9.23" y1="1.73" x2="11.262" y2="1.73" width="0.254" layer="22"/>
<wire x1="11.77" y1="2.238" x2="11.77" y2="4.27" width="0.254" layer="22"/>
<wire x1="11.262" y1="1.73" x2="11.77" y2="2.238" width="0.254" layer="22"/>
<wire x1="3.23" y1="1.27" x2="5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="1.27" x2="5.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="-1.27" x2="3.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="-0.762" x2="3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.738" y1="-1.27" x2="3.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="3.23" y1="4.27" x2="5.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="4.27" x2="5.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="5.77" y1="1.73" x2="3.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="3.23" y1="2.238" x2="3.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="3.738" y1="1.73" x2="3.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.762" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="-1.27" x2="0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="0.23" y1="4.27" x2="2.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="4.27" x2="2.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.73" x2="0.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="0.23" y1="2.238" x2="0.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="1.73" x2="0.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.27" x2="-2.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-0.762" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-1.27" x2="-2.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-2.77" y1="4.27" x2="-0.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="4.27" x2="-0.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.73" x2="-2.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-2.77" y1="2.238" x2="-2.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="1.73" x2="-2.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="-5.77" y1="1.27" x2="-3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.27" x2="-3.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-1.27" x2="-5.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-0.762" x2="-5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.262" y1="-1.27" x2="-5.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-5.77" y1="4.27" x2="-3.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="4.27" x2="-3.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.73" x2="-5.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-5.77" y1="2.238" x2="-5.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-5.262" y1="1.73" x2="-5.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="-8.77" y1="1.27" x2="-6.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="1.27" x2="-6.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-1.27" x2="-8.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-0.762" x2="-8.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-8.262" y1="-1.27" x2="-8.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-8.77" y1="4.27" x2="-6.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="4.27" x2="-6.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-6.23" y1="1.73" x2="-8.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-8.77" y1="2.238" x2="-8.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-8.262" y1="1.73" x2="-8.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="-11.77" y1="1.27" x2="-9.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="1.27" x2="-9.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-1.27" x2="-11.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-11.77" y1="-0.762" x2="-11.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-11.262" y1="-1.27" x2="-11.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-11.77" y1="4.27" x2="-9.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="4.27" x2="-9.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-9.23" y1="1.73" x2="-11.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-11.77" y1="2.238" x2="-11.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-11.262" y1="1.73" x2="-11.77" y2="2.238" width="0.254" layer="21"/>
<pad name="P$1" x="10.5" y="0" drill="1.09" shape="square"/>
<pad name="P$2" x="7.5" y="0" drill="1.09"/>
<pad name="P$3" x="4.5" y="0" drill="1.09"/>
<pad name="P$4" x="1.5" y="0" drill="1.09"/>
<pad name="P$5" x="-1.5" y="0" drill="1.09"/>
<pad name="P$6" x="-4.5" y="0" drill="1.09"/>
<pad name="P$7" x="-7.5" y="0" drill="1.09"/>
<pad name="P$8" x="-10.5" y="0" drill="1.09"/>
<pad name="P$9" x="10.5" y="3" drill="1.09"/>
<pad name="P$10" x="7.5" y="3" drill="1.09"/>
<pad name="P$11" x="4.5" y="3" drill="1.09"/>
<pad name="P$12" x="1.5" y="3" drill="1.09"/>
<pad name="P$13" x="-1.5" y="3" drill="1.09"/>
<pad name="P$14" x="-4.5" y="3" drill="1.09"/>
<pad name="P$15" x="-7.5" y="3" drill="1.09"/>
<pad name="P$16" x="-10.5" y="3" drill="1.09"/>
<hole x="13.5" y="3.94" drill="1.02"/>
<hole x="-13.5" y="3.94" drill="1.02"/>
</package>
<package name="44769-1601">
<description>Molex Micro-Fit 3.0 - Board-to-Board BMI (Blind Mate Interface), Receptacle Vertical, Thru hole;  P/N: SD-44769-1601, SD-44769-1602, SD-44769-1603

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/447690401_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/447690401_sd.pdf&lt;/a&gt;</description>
<wire x1="-11.77" y1="-1.27" x2="-11.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-11.77" y1="1.27" x2="-9.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="1.27" x2="-9.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-9.738" y1="-1.27" x2="-11.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-0.762" x2="-9.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-1.27" x2="-8.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-8.77" y1="1.27" x2="-6.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="1.27" x2="-6.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-6.738" y1="-1.27" x2="-8.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-0.762" x2="-6.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-1.27" x2="-5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="1.27" x2="-3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.27" x2="-3.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-3.738" y1="-1.27" x2="-5.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-0.762" x2="-3.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-12.4" y1="5.7" x2="12.4" y2="5.7" width="0.254" layer="21"/>
<wire x1="12.4" y1="5.7" x2="15" y2="3.75" width="0.254" layer="21"/>
<wire x1="15" y1="3.75" x2="15" y2="2.4" width="0.254" layer="21"/>
<wire x1="15" y1="2.4" x2="15" y2="0.6" width="0.254" layer="21"/>
<wire x1="15" y1="0.6" x2="15" y2="-0.75" width="0.254" layer="21"/>
<wire x1="15" y1="-0.75" x2="12.4" y2="-2.7" width="0.254" layer="21"/>
<wire x1="12.4" y1="-2.7" x2="-12.4" y2="-2.7" width="0.254" layer="21"/>
<wire x1="-12.4" y1="-2.7" x2="-15" y2="-0.75" width="0.254" layer="21"/>
<wire x1="-15" y1="-0.75" x2="-15" y2="0.6" width="0.254" layer="21"/>
<wire x1="-15" y1="0.6" x2="-15" y2="2.4" width="0.254" layer="21"/>
<wire x1="-15" y1="2.4" x2="-15" y2="3.75" width="0.254" layer="21"/>
<wire x1="-15" y1="3.75" x2="-12.4" y2="5.7" width="0.254" layer="21"/>
<wire x1="-15" y1="2.4" x2="-12.4" y2="2.4" width="0.254" layer="21"/>
<wire x1="-12.4" y1="2.4" x2="-12.4" y2="4.95" width="0.254" layer="21"/>
<wire x1="-12.4" y1="5.7" x2="-12.4" y2="4.95" width="0.254" layer="21"/>
<wire x1="-12.4" y1="0.6" x2="-12.4" y2="-1.95" width="0.254" layer="21"/>
<wire x1="-12.4" y1="-1.95" x2="-12.4" y2="-2.7" width="0.254" layer="21"/>
<wire x1="-15" y1="0.6" x2="-12.4" y2="0.6" width="0.254" layer="21"/>
<wire x1="12.4" y1="5.7" x2="12.4" y2="4.95" width="0.254" layer="21"/>
<wire x1="12.4" y1="4.95" x2="12.4" y2="2.4" width="0.254" layer="21"/>
<wire x1="12.4" y1="2.4" x2="12.4" y2="0.6" width="0.254" layer="21"/>
<wire x1="12.4" y1="0.6" x2="12.4" y2="-1.95" width="0.254" layer="21"/>
<wire x1="12.4" y1="-1.95" x2="12.4" y2="-2.7" width="0.254" layer="21"/>
<wire x1="12.4" y1="2.4" x2="15" y2="2.4" width="0.254" layer="21"/>
<wire x1="12.4" y1="0.6" x2="15" y2="0.6" width="0.254" layer="21"/>
<wire x1="-12.4" y1="-1.95" x2="12.4" y2="-1.95" width="0.254" layer="21"/>
<wire x1="-12.4" y1="4.95" x2="12.4" y2="4.95" width="0.254" layer="21"/>
<wire x1="-12.4" y1="0.6" x2="-12.4" y2="2.4" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-1.27" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.738" y1="-1.27" x2="-2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-0.762" x2="-0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.762" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="-1.27" x2="0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="3.23" y1="-1.27" x2="3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="1.27" x2="5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="1.27" x2="5.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="5.262" y1="-1.27" x2="3.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="-0.762" x2="5.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="6.23" y1="-1.27" x2="6.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="6.23" y1="1.27" x2="8.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="1.27" x2="8.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="8.262" y1="-1.27" x2="6.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="-0.762" x2="8.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="9.23" y1="-1.27" x2="9.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="9.23" y1="1.27" x2="11.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="1.27" x2="11.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="11.262" y1="-1.27" x2="9.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="-0.762" x2="11.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-11.77" y1="4.27" x2="-9.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="4.27" x2="-9.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-9.23" y1="1.73" x2="-11.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-11.77" y1="2.238" x2="-11.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-11.262" y1="1.73" x2="-11.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="-8.77" y1="1.73" x2="-8.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-8.77" y1="4.27" x2="-6.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="4.27" x2="-6.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="-6.738" y1="1.73" x2="-8.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="-6.23" y1="2.238" x2="-6.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="-5.77" y1="4.27" x2="-3.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="4.27" x2="-3.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.73" x2="-5.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="-5.77" y1="2.238" x2="-5.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-5.262" y1="1.73" x2="-5.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.73" x2="-2.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="4.27" x2="-0.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="4.27" x2="-0.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="-0.738" y1="1.73" x2="-2.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="-0.23" y1="2.238" x2="-0.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="0.23" y1="1.73" x2="0.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="4.27" x2="2.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="4.27" x2="2.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="2.262" y1="1.73" x2="0.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="2.77" y1="2.238" x2="2.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="3.23" y1="1.73" x2="3.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="4.27" x2="5.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="4.27" x2="5.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="5.262" y1="1.73" x2="3.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="5.77" y1="2.238" x2="5.262" y2="1.73" width="0.254" layer="21"/>
<wire x1="6.23" y1="4.27" x2="8.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="4.27" x2="8.77" y2="1.73" width="0.254" layer="21"/>
<wire x1="8.77" y1="1.73" x2="6.738" y2="1.73" width="0.254" layer="21"/>
<wire x1="6.23" y1="2.238" x2="6.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="6.738" y1="1.73" x2="6.23" y2="2.238" width="0.254" layer="21"/>
<wire x1="9.23" y1="1.73" x2="9.23" y2="4.27" width="0.254" layer="21"/>
<wire x1="9.23" y1="4.27" x2="11.77" y2="4.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="4.27" x2="11.77" y2="2.238" width="0.254" layer="21"/>
<wire x1="11.262" y1="1.73" x2="9.23" y2="1.73" width="0.254" layer="21"/>
<wire x1="11.77" y1="2.238" x2="11.262" y2="1.73" width="0.254" layer="21"/>
<pad name="P$1" x="-10.5" y="0" drill="1.02" shape="square" rot="R180"/>
<pad name="P$2" x="-7.5" y="0" drill="1.02" rot="R90"/>
<pad name="P$3" x="-4.5" y="0" drill="1.02" rot="R90"/>
<pad name="P$4" x="-1.5" y="0" drill="1.02" rot="R90"/>
<pad name="P$5" x="1.5" y="0" drill="1.02"/>
<pad name="P$6" x="4.5" y="0" drill="1.02" rot="R90"/>
<pad name="P$7" x="7.5" y="0" drill="1.02" rot="R90"/>
<pad name="P$8" x="10.5" y="0" drill="1.02" rot="R90"/>
<pad name="P$9" x="-10.5" y="3" drill="1.02"/>
<pad name="P$10" x="-7.5" y="3" drill="1.02" rot="R90"/>
<pad name="P$11" x="-4.5" y="3" drill="1.02"/>
<pad name="P$12" x="-1.5" y="3" drill="1.02" rot="R90"/>
<pad name="P$13" x="1.5" y="3" drill="1.02" rot="R90"/>
<pad name="P$14" x="4.5" y="3" drill="1.02" rot="R90"/>
<pad name="P$15" x="7.5" y="3" drill="1.02"/>
<pad name="P$16" x="10.5" y="3" drill="1.02" rot="R90"/>
<hole x="13.5" y="3" drill="2.36"/>
<hole x="-13.5" y="3" drill="2.36"/>
</package>
<package name="44432-1601">
<description>Molex Micro-Fit 3.0 - Board-to-Board BMI (Blind Mate Interface), Header Vertical, Thru hole, with Pegs;  P/N: SD-44432-1601, SD-44432-1602, SD-44432-1603

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/444320401_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/444320401_sd.pdf&lt;/a&gt;</description>
<wire x1="-15.5" y1="4.45" x2="15.5" y2="4.45" width="0.254" layer="21"/>
<wire x1="15.5" y1="4.45" x2="15.5" y2="-7.45" width="0.254" layer="21"/>
<wire x1="15.5" y1="-7.45" x2="-15.5" y2="-7.45" width="0.254" layer="21"/>
<wire x1="-15.5" y1="-7.45" x2="-15.5" y2="4.45" width="0.254" layer="21"/>
<wire x1="-15.2" y1="4.1" x2="15.2" y2="4.1" width="0.254" layer="21"/>
<wire x1="15.2" y1="4.1" x2="15.2" y2="-7.1" width="0.254" layer="21"/>
<wire x1="15.2" y1="-7.1" x2="-15.2" y2="-7.1" width="0.254" layer="21"/>
<wire x1="-15.2" y1="-7.1" x2="-15.2" y2="4.1" width="0.254" layer="21"/>
<wire x1="9.23" y1="-1.73" x2="11.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="11.77" y1="-1.73" x2="11.77" y2="-4.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="-4.27" x2="9.738" y2="-4.27" width="0.254" layer="21"/>
<wire x1="9.23" y1="-3.762" x2="9.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="9.738" y1="-4.27" x2="9.23" y2="-3.762" width="0.254" layer="21"/>
<wire x1="6.23" y1="-1.73" x2="8.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="8.77" y1="-1.73" x2="8.77" y2="-4.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="-4.27" x2="6.738" y2="-4.27" width="0.254" layer="21"/>
<wire x1="6.23" y1="-3.762" x2="6.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="6.738" y1="-4.27" x2="6.23" y2="-3.762" width="0.254" layer="21"/>
<wire x1="-15.2" y1="4.1" x2="-12.1" y2="1.6" width="0.254" layer="21"/>
<wire x1="-12.1" y1="1.6" x2="12.1" y2="1.6" width="0.254" layer="21"/>
<wire x1="12.1" y1="1.6" x2="15.2" y2="4.1" width="0.254" layer="21"/>
<wire x1="-12.1" y1="1.6" x2="-12.1" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-12.1" y1="-4.6" x2="12.1" y2="-4.6" width="0.254" layer="21"/>
<wire x1="12.1" y1="-4.6" x2="12.1" y2="1.6" width="0.254" layer="21"/>
<wire x1="-12.1" y1="-4.6" x2="-15.2" y2="-7.1" width="0.254" layer="21"/>
<wire x1="12.1" y1="-4.6" x2="15.2" y2="-7.1" width="0.254" layer="21"/>
<wire x1="3.23" y1="-4.27" x2="3.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="3.23" y1="-1.73" x2="5.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="5.77" y1="-1.73" x2="5.77" y2="-3.762" width="0.254" layer="21"/>
<wire x1="5.262" y1="-4.27" x2="3.23" y2="-4.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="-3.762" x2="5.262" y2="-4.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-1.73" x2="2.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.73" x2="2.77" y2="-4.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-4.27" x2="0.738" y2="-4.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-3.762" x2="0.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="0.738" y1="-4.27" x2="0.23" y2="-3.762" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-1.73" x2="-0.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.73" x2="-0.23" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-4.27" x2="-2.262" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-3.762" x2="-2.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-4.27" x2="-2.77" y2="-3.762" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-1.73" x2="-3.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-1.73" x2="-3.23" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-4.27" x2="-5.262" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-3.762" x2="-5.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-5.262" y1="-4.27" x2="-5.77" y2="-3.762" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-1.73" x2="-6.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-1.73" x2="-6.23" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-4.27" x2="-8.262" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-3.762" x2="-8.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-8.262" y1="-4.27" x2="-8.77" y2="-3.762" width="0.254" layer="21"/>
<wire x1="-11.77" y1="-4.27" x2="-11.77" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-11.77" y1="-1.73" x2="-9.23" y2="-1.73" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-1.73" x2="-9.23" y2="-3.762" width="0.254" layer="21"/>
<wire x1="-9.738" y1="-4.27" x2="-11.77" y2="-4.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-3.762" x2="-9.738" y2="-4.27" width="0.254" layer="21"/>
<wire x1="9.23" y1="1.27" x2="11.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="1.27" x2="11.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="11.77" y1="-1.27" x2="9.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="9.23" y1="-0.762" x2="9.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="9.738" y1="-1.27" x2="9.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="6.23" y1="1.27" x2="8.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="1.27" x2="8.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="8.77" y1="-1.27" x2="6.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="6.23" y1="-0.762" x2="6.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="6.738" y1="-1.27" x2="6.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="3.23" y1="-1.27" x2="3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.23" y1="1.27" x2="5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="1.27" x2="5.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="5.262" y1="-1.27" x2="3.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.77" y1="-0.762" x2="5.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="1.27" x2="2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="1.27" x2="2.77" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.77" y1="-1.27" x2="0.738" y2="-1.27" width="0.254" layer="21"/>
<wire x1="0.23" y1="-0.762" x2="0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="0.738" y1="-1.27" x2="0.23" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-2.77" y1="1.27" x2="-0.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="1.27" x2="-0.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.23" y1="-1.27" x2="-2.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.77" y1="-0.762" x2="-2.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.262" y1="-1.27" x2="-2.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-5.77" y1="1.27" x2="-3.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="1.27" x2="-3.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-3.23" y1="-1.27" x2="-5.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-5.77" y1="-0.762" x2="-5.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.262" y1="-1.27" x2="-5.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-8.77" y1="1.27" x2="-6.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="1.27" x2="-6.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-6.23" y1="-1.27" x2="-8.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-8.77" y1="-0.762" x2="-8.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-8.262" y1="-1.27" x2="-8.77" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-11.77" y1="1.27" x2="-9.23" y2="1.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="1.27" x2="-9.23" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-9.23" y1="-1.27" x2="-11.262" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-11.77" y1="-0.762" x2="-11.77" y2="1.27" width="0.254" layer="21"/>
<wire x1="-11.262" y1="-1.27" x2="-11.77" y2="-0.762" width="0.254" layer="21"/>
<pad name="P$1" x="10.5" y="-3" drill="1.02" shape="square"/>
<pad name="P$2" x="7.5" y="-3" drill="1.02"/>
<pad name="P$3" x="4.5" y="-3" drill="1.02" rot="R90"/>
<pad name="P$4" x="1.5" y="-3" drill="1.02"/>
<pad name="P$5" x="-1.5" y="-3" drill="1.02"/>
<pad name="P$6" x="-4.5" y="-3" drill="1.02"/>
<pad name="P$7" x="-7.5" y="-3" drill="1.02"/>
<pad name="P$8" x="-10.5" y="-3" drill="1.02" rot="R90"/>
<pad name="P$9" x="10.5" y="0" drill="1.02"/>
<pad name="P$10" x="7.5" y="0" drill="1.02"/>
<pad name="P$11" x="4.5" y="0" drill="1.02" rot="R90"/>
<pad name="P$12" x="1.5" y="0" drill="1.02"/>
<pad name="P$13" x="-1.5" y="0" drill="1.02"/>
<pad name="P$14" x="-4.5" y="0" drill="1.02"/>
<pad name="P$15" x="-7.5" y="0" drill="1.02"/>
<pad name="P$16" x="-10.5" y="0" drill="1.02"/>
<hole x="-15" y="1.45" drill="1.57"/>
<hole x="15" y="1.45" drill="1.57"/>
</package>
<package name="44428-1601">
<description>Molex Micro-Fit 3.0 - Board-to-Board BMI (Blind Mate Interface), Header Right Angle, Thru hole, with Pegs;  P/N: SD-44428-1601, SD-44428-1602, SD-44428-1603

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/444280401_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/444280401_sd.pdf&lt;/a&gt;</description>
<wire x1="-15.5" y1="-14.43" x2="15.5" y2="-14.43" width="0.254" layer="21"/>
<wire x1="15.5" y1="-14.43" x2="15.5" y2="-6" width="0.254" layer="21"/>
<wire x1="15.5" y1="-6" x2="15.5" y2="-2.8" width="0.254" layer="21"/>
<wire x1="15.5" y1="-2.8" x2="-15.5" y2="-2.8" width="0.254" layer="21"/>
<wire x1="-15.5" y1="-2.8" x2="-15.5" y2="-6" width="0.254" layer="21"/>
<wire x1="-15.5" y1="-6" x2="-15.5" y2="-14.43" width="0.254" layer="21"/>
<wire x1="-15.5" y1="-6" x2="-14.3" y2="-6" width="0.254" layer="21"/>
<wire x1="-14.3" y1="-6" x2="-14.3" y2="-13.9" width="0.254" layer="21"/>
<wire x1="-14.3" y1="-13.9" x2="-0.6" y2="-13.9" width="0.254" layer="21"/>
<wire x1="0.6" y1="-13.9" x2="14.3" y2="-13.9" width="0.254" layer="21"/>
<wire x1="14.3" y1="-13.9" x2="14.3" y2="-6" width="0.254" layer="21"/>
<wire x1="14.3" y1="-6" x2="15.5" y2="-6" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-6" x2="0.6" y2="-6" width="0.254" layer="21"/>
<wire x1="0.6" y1="-6" x2="0.6" y2="-13.9" width="0.254" layer="21"/>
<wire x1="-0.6" y1="-6" x2="-0.6" y2="-13.9" width="0.254" layer="21"/>
<wire x1="-12" y1="4.3" x2="12" y2="4.3" width="0.254" layer="21" style="shortdash"/>
<wire x1="12" y1="4.3" x2="12" y2="-1.3" width="0.254" layer="21" style="shortdash"/>
<wire x1="12" y1="-1.3" x2="-12" y2="-1.3" width="0.254" layer="21" style="shortdash"/>
<wire x1="-12" y1="-1.3" x2="-12" y2="4.3" width="0.254" layer="21" style="shortdash"/>
<pad name="P$1" x="10.5" y="0" drill="1.02" shape="square"/>
<pad name="P$2" x="7.5" y="0" drill="1.02"/>
<pad name="P$3" x="4.5" y="0" drill="1.02"/>
<pad name="P$4" x="1.5" y="0" drill="1.02"/>
<pad name="P$5" x="-1.5" y="0" drill="1.02"/>
<pad name="P$6" x="-4.5" y="0" drill="1.02"/>
<pad name="P$7" x="-7.5" y="0" drill="1.02"/>
<pad name="P$8" x="-10.5" y="0" drill="1.02"/>
<pad name="P$9" x="10.5" y="3" drill="1.02"/>
<pad name="P$10" x="7.5" y="3" drill="1.02"/>
<pad name="P$11" x="4.5" y="3" drill="1.02"/>
<pad name="P$12" x="1.5" y="3" drill="1.02"/>
<pad name="P$13" x="-1.5" y="3" drill="1.02"/>
<pad name="P$14" x="-4.5" y="3" drill="1.02"/>
<pad name="P$15" x="-7.5" y="3" drill="1.02"/>
<pad name="P$16" x="-10.5" y="3" drill="1.02"/>
<hole x="8.34" y="-8.53" drill="3"/>
<hole x="-8.34" y="-8.53" drill="3"/>
</package>
<package name="44764-1601">
<description>Molex Micro-Fit 3.0 - Board-to-Board BMI (Blind Mate Interface), Receptacle, Right Angle, Thru hole;  P/N: SD-44764-1601, SD-44764-1602, SD-44764-1603

&lt;p&gt;&lt;a href='http://www.molex.com/pdm_docs/sd/447640401_sd.pdf'&gt;http://www.molex.com/pdm_docs/sd/447640401_sd.pdf&lt;/a&gt;</description>
<wire x1="-12.35" y1="6.45" x2="12.35" y2="6.45" width="0.254" layer="21" style="shortdash"/>
<wire x1="12.35" y1="6.45" x2="12.35" y2="-5.6" width="0.254" layer="21" style="shortdash"/>
<wire x1="12.35" y1="-5.6" x2="-12.35" y2="-5.6" width="0.254" layer="21" style="shortdash"/>
<wire x1="-12.35" y1="-5.6" x2="-12.35" y2="6.45" width="0.254" layer="21" style="shortdash"/>
<pad name="P$1" x="-10.5" y="0" drill="1.02" shape="square"/>
<pad name="P$2" x="-7.5" y="0" drill="1.02"/>
<pad name="P$3" x="-4.5" y="0" drill="1.02"/>
<pad name="P$4" x="-1.5" y="0" drill="1.02"/>
<pad name="P$5" x="1.5" y="0" drill="1.02"/>
<pad name="P$6" x="4.5" y="0" drill="1.02"/>
<pad name="P$7" x="7.5" y="0" drill="1.02"/>
<pad name="P$8" x="10.5" y="0" drill="1.02"/>
<pad name="P$9" x="-10.5" y="3" drill="1.02"/>
<pad name="P$10" x="-7.5" y="3" drill="1.02"/>
<pad name="P$11" x="-4.5" y="3" drill="1.02"/>
<pad name="P$12" x="-1.5" y="3" drill="1.02"/>
<pad name="P$13" x="1.5" y="3" drill="1.02"/>
<pad name="P$14" x="4.5" y="3" drill="1.02"/>
<pad name="P$15" x="7.5" y="3" drill="1.02"/>
<pad name="P$16" x="10.5" y="3" drill="1.02"/>
<hole x="-9" y="-3.05" drill="2.36"/>
<hole x="9" y="-3.05" drill="2.36"/>
</package>
</packages>
<symbols>
<symbol name="HEADER_POS3">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="2.54" width="0.6096" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="-5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="HEADER_POS4">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="0" y1="5.08" x2="1.27" y2="5.08" width="0.6096" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="-5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="HEADER_POS16">
<wire x1="3.81" y1="-20.32" x2="-1.27" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="22.86" x2="-1.27" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-20.32" x2="3.81" y2="22.86" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="22.86" x2="3.81" y2="22.86" width="0.4064" layer="94"/>
<wire x1="0" y1="12.7" x2="1.27" y2="12.7" width="0.6096" layer="94"/>
<wire x1="0" y1="10.16" x2="1.27" y2="10.16" width="0.6096" layer="94"/>
<wire x1="0" y1="15.24" x2="1.27" y2="15.24" width="0.6096" layer="94"/>
<wire x1="0" y1="17.78" x2="1.27" y2="17.78" width="0.6096" layer="94"/>
<wire x1="0" y1="20.32" x2="1.27" y2="20.32" width="0.6096" layer="94"/>
<wire x1="0" y1="7.62" x2="1.27" y2="7.62" width="0.6096" layer="94"/>
<wire x1="0" y1="5.08" x2="1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="0" y1="2.54" x2="1.27" y2="2.54" width="0.6096" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="0" y1="-2.54" x2="1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="0" y1="-7.62" x2="1.27" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="0" y1="-10.16" x2="1.27" y2="-10.16" width="0.6096" layer="94"/>
<wire x1="0" y1="-12.7" x2="1.27" y2="-12.7" width="0.6096" layer="94"/>
<wire x1="0" y1="-15.24" x2="1.27" y2="-15.24" width="0.6096" layer="94"/>
<wire x1="0" y1="-17.78" x2="1.27" y2="-17.78" width="0.6096" layer="94"/>
<text x="-1.27" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="23.622" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="-5.08" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-5.08" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-5.08" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-5.08" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-5.08" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="-5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="-5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="11" x="-5.08" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="-5.08" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="-5.08" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="14" x="-5.08" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="15" x="-5.08" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="16" x="-5.08" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HEADER_POS3_?" prefix="X" uservalue="yes">
<description>&lt;b&gt;Molex - Micro-Fit 3.0 Series connector,  3.00mm (0.118") pitch header, 3 positions.&lt;/b&gt;&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="HEADER_POS3" x="0" y="0"/>
</gates>
<devices>
<device name="43650-0315" package="43650-0315">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0321" package="43650-0321">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0324" package="43650-0324">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0300" package="43650-0300">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0309" package="43650-0309">
<connects>
<connect gate="G$1" pin="1" pad="P$2"/>
<connect gate="G$1" pin="2" pad="P$1"/>
<connect gate="G$1" pin="3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0312" package="43650-0312">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HEADER_POS4_?" prefix="X" uservalue="yes">
<description>&lt;b&gt;Molex - Micro-Fit 3.0 Series connector,  3.00mm (0.118") pitch header, 4 positions.&lt;/b&gt;&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="HEADER_POS4" x="0" y="0"/>
</gates>
<devices>
<device name="43045-0401" package="43045-0400">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name="">
<attribute name="MATERIAL" value="" constant="no"/>
</technology>
</technologies>
</device>
<device name="43045-0409" package="43045-0409">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43045-0406" package="43045-0406">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43045-0412" package="43045-0412">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43045-0415" package="43045-0415">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43045-0418" package="43045-0418">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44914-0401" package="44914-0401">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0415" package="43650-0415">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0421" package="43650-0421">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0424" package="43650-0424">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0400" package="43650-0400">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0409" package="43650-0409">
<connects>
<connect gate="G$1" pin="1" pad="P$2"/>
<connect gate="G$1" pin="2" pad="P$1"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43650-0412" package="43650-0412">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44769-0401" package="44769-0401">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44432-0401" package="44432-0401">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44428-0401" package="44428-0401">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44764-0401" package="44764-0401">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HEADER_POS16_?" prefix="X" uservalue="yes">
<description>&lt;b&gt;Molex - Micro-Fit 3.0 Series connector,  3.00mm (0.118") pitch header, 16 positions.&lt;/b&gt;&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="HEADER_POS16" x="0" y="0"/>
</gates>
<devices>
<device name="43045-1600" package="43045-1600">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43045-1609" package="43045-1609">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43045-1606" package="43045-1606">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43045-1612" package="43045-1612">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43045-1615" package="43045-1615">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="43045-1618" package="43045-1618">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44914-1601" package="44914-1601">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44769-1601" package="44769-1601">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44432-1601" package="44432-1601">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44428-1601" package="44428-1601">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="44764-1601" package="44764-1601">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="10" pad="P$10"/>
<connect gate="G$1" pin="11" pad="P$11"/>
<connect gate="G$1" pin="12" pad="P$12"/>
<connect gate="G$1" pin="13" pad="P$13"/>
<connect gate="G$1" pin="14" pad="P$14"/>
<connect gate="G$1" pin="15" pad="P$15"/>
<connect gate="G$1" pin="16" pad="P$16"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="9" pad="P$9"/>
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
<part name="X1" library="con-shiua-chyuan" deviceset="SCD-014A" device=""/>
<part name="JP11" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
<part name="FLOW" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
<part name="S1" library="SparkFun-Electromechanical" deviceset="SWITCH-MOMENTARY-2" device="PTH_EZ"/>
<part name="GND-ISO4" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="TEMP" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
<part name="PUMP" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
<part name="R3" library="SparkFun-Resistors" deviceset="10OHM-1/4W-5%(PTH)" device="" value="4.7K"/>
<part name="PUMPDIGIPOT" library="SparkFun-AnalogIC" deviceset="MCP41XXX" device="DIL"/>
<part name="R1" library="SparkFun-Resistors" deviceset="10OHM-1/4W-5%(PTH)" device="" value="100"/>
<part name="R4" library="SparkFun-Resistors" deviceset="10OHM-1/4W-5%(PTH)" device="" value="100"/>
<part name="U1" library="SparkFun-AnalogIC" deviceset="MCP41XXX" device="DIL"/>
<part name="LIGHT" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
<part name="RELAY" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS4_?" device="44914-0401"/>
<part name="U$1" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS16_?" device="43045-1612"/>
<part name="JP5" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
<part name="U$2" library="SparkFun-DigitalIC" deviceset="LS7366R" device=""/>
<part name="U$3" library="MEGASHIELD2" deviceset="ARDUINO-MEGA-V2" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="FRAME1" library="SparkFun-Aesthetics" deviceset="FRAME-LETTER" device=""/>
<part name="U$4" library="SparkFun-Boards" deviceset="BIG_EASY_DRIVER" device=""/>
<part name="JP4" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
<part name="LED" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
<part name="DRIP" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
<part name="JP9" library="con-molex-micro-fit-3_0" deviceset="HEADER_POS3_?" device="43650-0315"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="86.36" y="-22.86" size="1.778" layer="91" rot="R180">Temp
Sensor</text>
<text x="48.26" y="-27.94" size="1.778" layer="91">Liquid 
Flow</text>
<text x="81.28" y="5.08" size="1.778" layer="91">pH</text>
<text x="-10.16" y="-60.96" size="1.778" layer="91">Pump
Flow
Controll</text>
<text x="17.78" y="-60.96" size="1.778" layer="91">Optics
Light
Control</text>
<text x="48.26" y="-12.7" size="1.778" layer="91">Pump
Flow
Controll</text>
<text x="48.26" y="2.54" size="1.778" layer="91">Optics
Light 
Control</text>
<text x="78.74" y="-10.16" size="1.778" layer="91">P.Pump 
Outlet </text>
<text x="45.72" y="38.1" size="1.778" layer="91">Relay</text>
<wire x1="127" y1="-38.1" x2="43.18" y2="-38.1" width="0.4064" layer="98" style="longdash"/>
<wire x1="43.18" y1="-38.1" x2="43.18" y2="50.8" width="0.4064" layer="98" style="longdash"/>
<wire x1="43.18" y1="50.8" x2="127" y2="50.8" width="0.4064" layer="98" style="longdash"/>
<wire x1="127" y1="50.8" x2="127" y2="-38.1" width="0.4064" layer="98" style="longdash"/>
<text x="73.66" y="45.72" size="1.6764" layer="98">Molex 3/4 pin Jumpers</text>
<wire x1="-33.02" y1="-10.16" x2="33.02" y2="-10.16" width="0.4064" layer="98" style="longdash"/>
<wire x1="33.02" y1="-10.16" x2="33.02" y2="-68.58" width="0.4064" layer="98" style="longdash"/>
<wire x1="33.02" y1="-68.58" x2="-33.02" y2="-68.58" width="0.4064" layer="98" style="longdash"/>
<wire x1="-33.02" y1="-68.58" x2="-33.02" y2="-10.16" width="0.4064" layer="98" style="longdash"/>
<text x="-2.54" y="-15.24" size="1.6764" layer="98">Digi Pots</text>
<text x="-76.2" y="-43.18" size="1.6764" layer="98">Arduino Mega</text>
<text x="-5.08" y="83.82" size="1.6764" layer="98" rot="R180">Easy Stepper</text>
<text x="88.9" y="71.12" size="1.6764" layer="98">Quadrature Encoder
LFLS7366R-S</text>
<text x="-99.06" y="96.52" size="6.4516" layer="98">AUXSHIELD 1.96</text>
<text x="58.42" y="-66.04" size="2.54" layer="98">Sean Kolk</text>
</plain>
<instances>
<instance part="X1" gate="G$1" x="17.78" y="81.28" smashed="yes">
<attribute name="VALUE" x="15.24" y="75.692" size="1.778" layer="96"/>
</instance>
<instance part="JP11" gate="G$1" x="91.44" y="5.08" rot="R180"/>
<instance part="FLOW" gate="G$1" x="58.42" y="-25.4" rot="R180"/>
<instance part="S1" gate="G$1" x="-99.06" y="58.42" smashed="yes"/>
<instance part="GND-ISO4" gate="G$1" x="-104.14" y="53.34" smashed="yes"/>
<instance part="TEMP" gate="G$1" x="91.44" y="-25.4" rot="R180"/>
<instance part="PUMP" gate="G$1" x="58.42" y="-10.16" rot="R180"/>
<instance part="R3" gate="G$1" x="106.68" y="-22.86"/>
<instance part="PUMPDIGIPOT" gate="G$1" x="-7.62" y="-43.18"/>
<instance part="R1" gate="G$1" x="43.18" y="63.5" smashed="yes">
<attribute name="VALUE" x="39.37" y="60.198" size="1.778" layer="96"/>
</instance>
<instance part="R4" gate="G$1" x="43.18" y="68.58" smashed="yes">
<attribute name="VALUE" x="39.37" y="65.278" size="1.778" layer="96"/>
</instance>
<instance part="U1" gate="G$1" x="20.32" y="-43.18"/>
<instance part="LIGHT" gate="G$1" x="58.42" y="5.08" rot="R180"/>
<instance part="RELAY" gate="G$1" x="58.42" y="40.64" smashed="yes" rot="R180">
<attribute name="VALUE" x="63.5" y="48.26" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="U$1" gate="G$1" x="50.8" y="81.28" smashed="yes" rot="R270"/>
<instance part="JP5" gate="G$1" x="91.44" y="-10.16" rot="R180"/>
<instance part="U$2" gate="G$1" x="99.06" y="93.98" rot="R180"/>
<instance part="U$3" gate="G$1" x="-68.58" y="22.86" smashed="yes">
<attribute name="NAME" x="-83.82" y="76.962" size="1.778" layer="95"/>
</instance>
<instance part="P+1" gate="1" x="33.02" y="71.12"/>
<instance part="FRAME1" gate="G$1" x="-109.22" y="-76.2"/>
<instance part="FRAME1" gate="G$2" x="38.1" y="-76.2"/>
<instance part="U$4" gate="G$1" x="-10.16" y="78.74"/>
<instance part="JP4" gate="G$1" x="58.42" y="22.86" rot="R180"/>
<instance part="LED" gate="G$1" x="91.44" y="22.86" rot="R180"/>
<instance part="DRIP" gate="G$1" x="91.44" y="38.1" rot="R180"/>
<instance part="JP9" gate="G$1" x="109.22" y="38.1" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$9" class="0">
<segment>
<pinref part="S1" gate="G$1" pin="2"/>
<wire x1="-93.98" y1="58.42" x2="-88.9" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="RESET"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="48.26" y1="86.36" x2="50.8" y2="63.5" width="0.1524" layer="91"/>
<wire x1="50.8" y1="63.5" x2="48.26" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="10"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="48.26" y1="68.58" x2="43.18" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="12"/>
</segment>
</net>
<net name="LW" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="W"/>
<wire x1="10.16" y1="-40.64" x2="7.62" y2="-40.64" width="0.1524" layer="91"/>
<label x="7.62" y="-40.64" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="LIGHT" gate="G$1" pin="2"/>
<wire x1="63.5" y1="5.08" x2="68.58" y2="5.08" width="0.1524" layer="91"/>
<label x="68.58" y="5.08" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="MOSI"/>
<wire x1="-45.72" y1="-35.56" x2="-48.26" y2="-35.56" width="0.1524" layer="91"/>
<label x="-45.72" y="-35.56" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="MOSI"/>
<wire x1="114.3" y1="99.06" x2="116.84" y2="99.06" width="0.1524" layer="91"/>
<label x="116.84" y="99.06" size="1.27" layer="95" rot="MR180" xref="yes"/>
</segment>
<segment>
<pinref part="PUMPDIGIPOT" gate="G$1" pin="DI"/>
<wire x1="-17.78" y1="-33.02" x2="-20.32" y2="-33.02" width="0.1524" layer="91"/>
<label x="-20.32" y="-33.02" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="DI"/>
<wire x1="10.16" y1="-33.02" x2="7.62" y2="-33.02" width="0.1524" layer="91"/>
<label x="7.62" y="-33.02" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="SCK"/>
<wire x1="-45.72" y1="-30.48" x2="-48.26" y2="-30.48" width="0.1524" layer="91"/>
<label x="-45.72" y="-30.48" size="1.27" layer="95" rot="MR180" xref="yes"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="SCK"/>
<wire x1="114.3" y1="93.98" x2="116.84" y2="93.98" width="0.1524" layer="91"/>
<label x="116.84" y="93.98" size="1.27" layer="95" rot="MR180" xref="yes"/>
</segment>
<segment>
<pinref part="PUMPDIGIPOT" gate="G$1" pin="SCK"/>
<wire x1="-17.78" y1="-30.48" x2="-20.32" y2="-30.48" width="0.1524" layer="91"/>
<label x="-20.32" y="-30.48" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="SCK"/>
<wire x1="10.16" y1="-30.48" x2="7.62" y2="-30.48" width="0.1524" layer="91"/>
<label x="7.62" y="-30.48" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="MISO"/>
<wire x1="-48.26" y1="-33.02" x2="-45.72" y2="-33.02" width="0.1524" layer="91"/>
<label x="-45.72" y="-33.02" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="MISO"/>
<wire x1="114.3" y1="96.52" x2="116.84" y2="96.52" width="0.1524" layer="91"/>
<label x="116.84" y="96.52" size="1.27" layer="95" rot="MR180" xref="yes"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="VSS"/>
<wire x1="114.3" y1="88.9" x2="116.84" y2="88.9" width="0.1524" layer="91"/>
<label x="116.84" y="88.9" size="1.27" layer="95" rot="MR180" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND@0"/>
<wire x1="-88.9" y1="-17.78" x2="-93.98" y2="-17.78" width="0.1524" layer="91"/>
<label x="-93.98" y="-17.78" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND@1"/>
<wire x1="-88.9" y1="-20.32" x2="-93.98" y2="-20.32" width="0.1524" layer="91"/>
<label x="-93.98" y="-20.32" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND@2"/>
<wire x1="-88.9" y1="-22.86" x2="-93.98" y2="-22.86" width="0.1524" layer="91"/>
<label x="-93.98" y="-22.86" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND@3"/>
<wire x1="-88.9" y1="-25.4" x2="-93.98" y2="-25.4" width="0.1524" layer="91"/>
<label x="-93.98" y="-25.4" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND@4"/>
<wire x1="-88.9" y1="-27.94" x2="-93.98" y2="-27.94" width="0.1524" layer="91"/>
<label x="-93.98" y="-27.94" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND@5"/>
<wire x1="-88.9" y1="-30.48" x2="-93.98" y2="-30.48" width="0.1524" layer="91"/>
<label x="-93.98" y="-30.48" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="JP5" gate="G$1" pin="1"/>
<wire x1="96.52" y1="-12.7" x2="101.6" y2="-12.7" width="0.1524" layer="91"/>
<label x="101.6" y="-12.7" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="FLOW" gate="G$1" pin="1"/>
<wire x1="63.5" y1="-27.94" x2="68.58" y2="-27.94" width="0.1524" layer="91"/>
<label x="68.58" y="-27.94" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY" gate="G$1" pin="4"/>
<wire x1="63.5" y1="43.18" x2="66.04" y2="43.18" width="0.1524" layer="91"/>
<label x="66.04" y="43.18" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="TEMP" gate="G$1" pin="1"/>
<wire x1="96.52" y1="-27.94" x2="101.6" y2="-27.94" width="0.1524" layer="91"/>
<label x="101.6" y="-27.94" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="PUMPDIGIPOT" gate="G$1" pin="GND"/>
<wire x1="-17.78" y1="-48.26" x2="-20.32" y2="-48.26" width="0.1524" layer="91"/>
<label x="-20.32" y="-48.26" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="LIGHT" gate="G$1" pin="1"/>
<wire x1="63.5" y1="2.54" x2="68.58" y2="2.54" width="0.1524" layer="91"/>
<label x="68.58" y="2.54" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="B"/>
<wire x1="10.16" y1="-43.18" x2="7.62" y2="-43.18" width="0.1524" layer="91"/>
<label x="7.62" y="-43.18" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="10.16" y1="-48.26" x2="7.62" y2="-48.26" width="0.1524" layer="91"/>
<label x="7.62" y="-48.26" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<wire x1="-5.08" y1="55.88" x2="-5.08" y2="53.34" width="0.1524" layer="91"/>
<label x="-5.08" y="53.34" size="1.27" layer="95" rot="R270" xref="yes"/>
<pinref part="U$4" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="8"/>
<wire x1="53.34" y1="86.36" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<label x="53.34" y="68.58" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="13"/>
<wire x1="40.64" y1="86.36" x2="45.72" y2="91.44" width="0.1524" layer="91"/>
<label x="45.72" y="91.44" size="1.27" layer="95" rot="MR90" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="15"/>
<wire x1="43.18" y1="91.44" x2="35.56" y2="86.36" width="0.1524" layer="91"/>
<label x="43.18" y="91.44" size="1.27" layer="95" rot="MR90" xref="yes"/>
</segment>
<segment>
<pinref part="S1" gate="G$1" pin="1"/>
<pinref part="GND-ISO4" gate="G$1" pin="GND-ISO"/>
<wire x1="-104.14" y1="55.88" x2="-104.14" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP4" gate="G$1" pin="1"/>
<wire x1="63.5" y1="20.32" x2="66.04" y2="20.32" width="0.1524" layer="91"/>
<label x="66.04" y="20.32" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="LED" gate="G$1" pin="1"/>
<wire x1="96.52" y1="20.32" x2="99.06" y2="20.32" width="0.1524" layer="91"/>
<label x="99.06" y="20.32" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="DRIP" gate="G$1" pin="1"/>
<wire x1="96.52" y1="35.56" x2="99.06" y2="35.56" width="0.1524" layer="91"/>
<label x="99.06" y="35.56" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="JP9" gate="G$1" pin="1"/>
<wire x1="114.3" y1="35.56" x2="116.84" y2="35.56" width="0.1524" layer="91"/>
<label x="116.84" y="35.56" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="JP11" gate="G$1" pin="1"/>
<wire x1="96.52" y1="2.54" x2="99.06" y2="2.54" width="0.1524" layer="91"/>
<label x="99.06" y="2.54" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="A"/>
<wire x1="10.16" y1="-38.1" x2="7.62" y2="-38.1" width="0.1524" layer="91"/>
<label x="7.62" y="-38.1" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VCC"/>
<wire x1="10.16" y1="-22.86" x2="7.62" y2="-22.86" width="0.1524" layer="91"/>
<label x="7.62" y="-22.86" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="5V@0"/>
<wire x1="-88.9" y1="71.12" x2="-93.98" y2="71.12" width="0.1524" layer="91"/>
<label x="-93.98" y="71.12" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="5V@1"/>
<wire x1="-88.9" y1="68.58" x2="-93.98" y2="68.58" width="0.1524" layer="91"/>
<label x="-93.98" y="68.58" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="5V@2"/>
<wire x1="-88.9" y1="66.04" x2="-93.98" y2="66.04" width="0.1524" layer="91"/>
<label x="-93.98" y="66.04" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="5V@3"/>
<wire x1="-88.9" y1="-33.02" x2="-93.98" y2="-33.02" width="0.1524" layer="91"/>
<label x="-93.98" y="-33.02" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="JP5" gate="G$1" pin="2"/>
<wire x1="96.52" y1="-10.16" x2="101.6" y2="-10.16" width="0.1524" layer="91"/>
<label x="101.6" y="-10.16" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="FLOW" gate="G$1" pin="2"/>
<wire x1="63.5" y1="-25.4" x2="68.58" y2="-25.4" width="0.1524" layer="91"/>
<label x="68.58" y="-25.4" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="RELAY" gate="G$1" pin="1"/>
<wire x1="63.5" y1="35.56" x2="66.04" y2="35.56" width="0.1524" layer="91"/>
<label x="66.04" y="35.56" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="PUMPDIGIPOT" gate="G$1" pin="VCC"/>
<wire x1="-17.78" y1="-22.86" x2="-20.32" y2="-22.86" width="0.1524" layer="91"/>
<label x="-20.32" y="-22.86" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="68.58" y1="86.36" x2="60.96" y2="68.58" width="0.1524" layer="91"/>
<label x="60.96" y="68.58" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="TEMP" gate="G$1" pin="2"/>
<wire x1="96.52" y1="-25.4" x2="111.76" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="111.76" y1="-25.4" x2="111.76" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<label x="111.76" y="-25.4" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="38.1" y1="86.36" x2="45.72" y2="71.12" width="0.1524" layer="91"/>
<wire x1="45.72" y1="71.12" x2="43.18" y2="71.12" width="0.1524" layer="91"/>
<wire x1="43.18" y1="71.12" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
<wire x1="38.1" y1="71.12" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<wire x1="33.02" y1="86.36" x2="43.18" y2="71.12" width="0.1524" layer="91"/>
<junction x="43.18" y="71.12"/>
<pinref part="R4" gate="G$1" pin="1"/>
<junction x="38.1" y="68.58"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="38.1" y1="63.5" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="14"/>
<pinref part="U$1" gate="G$1" pin="16"/>
<wire x1="38.1" y1="63.5" x2="33.02" y2="63.5" width="0.1524" layer="91"/>
<junction x="38.1" y="63.5"/>
<wire x1="33.02" y1="63.5" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
<pinref part="P+1" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="VDD"/>
<wire x1="86.36" y1="83.82" x2="83.82" y2="83.82" width="0.1524" layer="91"/>
<label x="83.82" y="83.82" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="VCC"/>
<wire x1="-7.62" y1="55.88" x2="-7.62" y2="53.34" width="0.1524" layer="91"/>
<label x="-7.62" y="53.34" size="1.016" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="JP4" gate="G$1" pin="2"/>
<wire x1="63.5" y1="22.86" x2="66.04" y2="22.86" width="0.1524" layer="91"/>
<label x="66.04" y="22.86" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="LED" gate="G$1" pin="2"/>
<wire x1="96.52" y1="22.86" x2="99.06" y2="22.86" width="0.1524" layer="91"/>
<label x="99.06" y="22.86" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="DRIP" gate="G$1" pin="2"/>
<wire x1="96.52" y1="38.1" x2="99.06" y2="38.1" width="0.1524" layer="91"/>
<label x="99.06" y="38.1" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="JP9" gate="G$1" pin="2"/>
<wire x1="114.3" y1="38.1" x2="116.84" y2="38.1" width="0.1524" layer="91"/>
<label x="116.84" y="38.1" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="JP11" gate="G$1" pin="2"/>
<wire x1="96.52" y1="5.08" x2="99.06" y2="5.08" width="0.1524" layer="91"/>
<label x="99.06" y="5.08" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="PA" class="0">
<segment>
<pinref part="PUMPDIGIPOT" gate="G$1" pin="A"/>
<wire x1="-17.78" y1="-38.1" x2="-20.32" y2="-38.1" width="0.1524" layer="91"/>
<label x="-20.32" y="-38.1" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="PUMP" gate="G$1" pin="3"/>
<wire x1="63.5" y1="-7.62" x2="68.58" y2="-7.62" width="0.1524" layer="91"/>
<label x="68.58" y="-7.62" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="PW" class="0">
<segment>
<pinref part="PUMPDIGIPOT" gate="G$1" pin="W"/>
<wire x1="-17.78" y1="-40.64" x2="-20.32" y2="-40.64" width="0.1524" layer="91"/>
<label x="-20.32" y="-40.64" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="PUMP" gate="G$1" pin="2"/>
<wire x1="63.5" y1="-10.16" x2="68.58" y2="-10.16" width="0.1524" layer="91"/>
<label x="68.58" y="-10.16" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="PB+" class="0">
<segment>
<pinref part="PUMPDIGIPOT" gate="G$1" pin="B"/>
<wire x1="-17.78" y1="-43.18" x2="-20.32" y2="-43.18" width="0.1524" layer="91"/>
<label x="-20.32" y="-43.18" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="PUMP" gate="G$1" pin="1"/>
<wire x1="63.5" y1="-12.7" x2="68.58" y2="-12.7" width="0.1524" layer="91"/>
<label x="68.58" y="-12.7" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="1"/>
<pinref part="U$4" gate="G$1" pin="VCC+"/>
<wire x1="12.7" y1="83.82" x2="10.16" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="2"/>
<pinref part="U$4" gate="G$1" pin="GND+"/>
<wire x1="12.7" y1="78.74" x2="10.16" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A1" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="A1"/>
<wire x1="-20.32" y1="99.06" x2="-20.32" y2="101.6" width="0.1524" layer="91"/>
<label x="-20.32" y="101.6" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="1"/>
<wire x1="71.12" y1="86.36" x2="60.96" y2="91.44" width="0.1524" layer="91"/>
<label x="60.96" y="91.44" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="A2" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="A2"/>
<wire x1="-15.24" y1="99.06" x2="-15.24" y2="101.6" width="0.1524" layer="91"/>
<label x="-15.24" y="101.6" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="3"/>
<wire x1="66.04" y1="86.36" x2="58.42" y2="91.44" width="0.1524" layer="91"/>
<label x="58.42" y="91.44" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="B1" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="B1"/>
<wire x1="-10.16" y1="99.06" x2="-10.16" y2="101.6" width="0.1524" layer="91"/>
<label x="-10.16" y="101.6" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="5"/>
<wire x1="60.96" y1="86.36" x2="55.88" y2="91.44" width="0.1524" layer="91"/>
<label x="55.88" y="91.44" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="B2" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="B2"/>
<wire x1="-5.08" y1="101.6" x2="-5.08" y2="99.06" width="0.1524" layer="91"/>
<label x="-5.08" y="101.6" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="7"/>
<wire x1="55.88" y1="86.36" x2="53.34" y2="91.44" width="0.1524" layer="91"/>
<label x="53.34" y="91.44" size="1.016" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="DIR" class="0">
<segment>
<wire x1="0" y1="53.34" x2="0" y2="55.88" width="0.1524" layer="91"/>
<label x="0" y="53.34" size="1.27" layer="95" rot="R270" xref="yes"/>
<pinref part="U$4" gate="G$1" pin="DIR"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="7"/>
<wire x1="-88.9" y1="-2.54" x2="-93.98" y2="-2.54" width="0.1524" layer="91"/>
<label x="-93.98" y="-2.54" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="STEP" class="0">
<segment>
<wire x1="-2.54" y1="55.88" x2="-2.54" y2="53.34" width="0.1524" layer="91"/>
<label x="-2.54" y="53.34" size="1.27" layer="95" rot="R270" xref="yes"/>
<pinref part="U$4" gate="G$1" pin="STEP"/>
</segment>
<segment>
<wire x1="-93.98" y1="0" x2="-88.9" y2="0" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="6"/>
<label x="-93.98" y="0" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="QUAD_SS" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SS"/>
<wire x1="116.84" y1="91.44" x2="114.3" y2="91.44" width="0.1524" layer="91"/>
<label x="116.84" y="91.44" size="1.27" layer="95" rot="MR180" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="14(TX3)"/>
<wire x1="-48.26" y1="71.12" x2="-45.72" y2="71.12" width="0.1524" layer="91"/>
<label x="-45.72" y="71.12" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="ES_EN" class="0">
<segment>
<wire x1="-22.86" y1="55.88" x2="-22.86" y2="50.8" width="0.1524" layer="91"/>
<label x="-22.86" y="50.8" size="1.27" layer="95" rot="MR270" xref="yes"/>
<pinref part="U$4" gate="G$1" pin="EN"/>
</segment>
<segment>
<wire x1="-93.98" y1="-12.7" x2="-88.9" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="11"/>
<label x="-93.98" y="-12.7" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="ES_M1" class="0">
<segment>
<wire x1="-20.32" y1="55.88" x2="-20.32" y2="50.8" width="0.1524" layer="91"/>
<label x="-20.32" y="50.8" size="1.27" layer="95" rot="MR270" xref="yes"/>
<pinref part="U$4" gate="G$1" pin="M1"/>
</segment>
<segment>
<wire x1="-93.98" y1="5.08" x2="-88.9" y2="5.08" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="4"/>
<label x="-93.98" y="5.08" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="ES_M2" class="0">
<segment>
<wire x1="-17.78" y1="55.88" x2="-17.78" y2="50.8" width="0.1524" layer="91"/>
<label x="-17.78" y="50.8" size="1.27" layer="95" rot="R270" xref="yes"/>
<pinref part="U$4" gate="G$1" pin="M2"/>
</segment>
<segment>
<wire x1="-93.98" y1="2.54" x2="-88.9" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="5"/>
<label x="-93.98" y="2.54" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="R_P.PUMP" class="0">
<segment>
<pinref part="RELAY" gate="G$1" pin="3"/>
<wire x1="63.5" y1="40.64" x2="66.04" y2="40.64" width="0.1524" layer="91"/>
<label x="66.04" y="40.64" size="1.27" layer="95" rot="MR180" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="48"/>
<wire x1="-48.26" y1="-15.24" x2="-45.72" y2="-15.24" width="0.1524" layer="91"/>
<label x="-45.72" y="-15.24" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="R_HEATER" class="0">
<segment>
<pinref part="RELAY" gate="G$1" pin="2"/>
<wire x1="63.5" y1="38.1" x2="66.04" y2="38.1" width="0.1524" layer="91"/>
<label x="66.04" y="38.1" size="1.27" layer="95" rot="MR180" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="46"/>
<wire x1="-48.26" y1="-10.16" x2="-45.72" y2="-10.16" width="0.1524" layer="91"/>
<label x="-45.72" y="-10.16" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="FLOW_PIN" class="0">
<segment>
<pinref part="FLOW" gate="G$1" pin="3"/>
<wire x1="63.5" y1="-22.86" x2="68.58" y2="-22.86" width="0.1524" layer="91"/>
<label x="68.58" y="-22.86" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="2"/>
<wire x1="-88.9" y1="10.16" x2="-93.98" y2="10.16" width="0.1524" layer="91"/>
<label x="-93.98" y="10.16" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="PH" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="A0(RX0)"/>
<wire x1="-93.98" y1="55.88" x2="-88.9" y2="55.88" width="0.1524" layer="91"/>
<label x="-93.98" y="55.88" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="STEP_LIMIT1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="11"/>
<wire x1="48.26" y1="91.44" x2="45.72" y2="86.36" width="0.1524" layer="91"/>
<label x="48.26" y="91.44" size="1.27" layer="95" rot="MR90" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="0(RX0)"/>
<wire x1="-88.9" y1="15.24" x2="-91.44" y2="15.24" width="0.1524" layer="91"/>
<label x="-91.44" y="15.24" size="1.016" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="STEP_LIMIT2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="9"/>
<wire x1="50.8" y1="91.44" x2="50.8" y2="86.36" width="0.1524" layer="91"/>
<label x="50.8" y="91.44" size="1.27" layer="95" rot="MR90" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="1(TX0)"/>
<wire x1="-88.9" y1="12.7" x2="-91.44" y2="12.7" width="0.1524" layer="91"/>
<label x="-91.44" y="12.7" size="1.016" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="QUAD_SIG_A" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="6"/>
<wire x1="58.42" y1="86.36" x2="55.88" y2="68.58" width="0.1524" layer="91"/>
<label x="55.88" y="68.58" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="A"/>
<wire x1="83.82" y1="88.9" x2="86.36" y2="88.9" width="0.1524" layer="91"/>
<label x="83.82" y="88.9" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="QUAD_SIG_B" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="4"/>
<wire x1="63.5" y1="86.36" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
<label x="58.42" y="68.58" size="1.27" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="B"/>
<wire x1="83.82" y1="91.44" x2="86.36" y2="91.44" width="0.1524" layer="91"/>
<label x="83.82" y="91.44" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="TEMP" class="0">
<segment>
<pinref part="TEMP" gate="G$1" pin="3"/>
<wire x1="101.6" y1="-22.86" x2="96.52" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-22.86" x2="101.6" y2="-20.32" width="0.1524" layer="91"/>
<junction x="101.6" y="-22.86"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="101.6" y1="-20.32" x2="114.3" y2="-20.32" width="0.1524" layer="91"/>
<label x="114.3" y="-20.32" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="10"/>
<label x="-93.98" y="-10.16" size="1.27" layer="95" rot="MR0" xref="yes"/>
<wire x1="-88.9" y1="-10.16" x2="-93.98" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PUMP_CS" class="0">
<segment>
<pinref part="PUMPDIGIPOT" gate="G$1" pin="CS"/>
<wire x1="-17.78" y1="-27.94" x2="-20.32" y2="-27.94" width="0.1524" layer="91"/>
<label x="-20.32" y="-27.94" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="44"/>
<wire x1="-48.26" y1="-5.08" x2="-45.72" y2="-5.08" width="0.1524" layer="91"/>
<label x="-45.72" y="-5.08" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="OP_CS" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="CS"/>
<wire x1="10.16" y1="-27.94" x2="7.62" y2="-27.94" width="0.1524" layer="91"/>
<label x="7.62" y="-27.94" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="42"/>
<wire x1="-48.26" y1="0" x2="-45.72" y2="0" width="0.1524" layer="91"/>
<label x="-45.72" y="0" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="ES_M3" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="3"/>
<wire x1="-88.9" y1="7.62" x2="-93.98" y2="7.62" width="0.1524" layer="91"/>
<label x="-93.98" y="7.62" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="M3"/>
<wire x1="-15.24" y1="55.88" x2="-15.24" y2="50.8" width="0.1524" layer="91"/>
<label x="-15.24" y="50.8" size="1.016" layer="95" rot="R270" xref="yes"/>
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
