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
<deviceset name="10KOHM-1/4W-1%(PTH)" prefix="R" uservalue="yes">
<description>RES-12183</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="HORIZ" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="RES-12183" constant="no"/>
<attribute name="VALUE" value="10k" constant="no"/>
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
<attribute name="PROD_ID" value="RES-12183" constant="no"/>
<attribute name="VALUE" value="10k" constant="no"/>
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
<attribute name="PROD_ID" value="RES-12183" constant="no"/>
<attribute name="VALUE" value="10k" constant="no"/>
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
<attribute name="PROD_ID" value="RES-12183" constant="no"/>
<attribute name="VALUE" value="10k" constant="no"/>
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
<part name="GND-ISO2" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="JP3" library="SparkFun-Connectors" deviceset="M03" device="POLAR"/>
<part name="R2" library="SparkFun-Resistors" deviceset="10KOHM-1/4W-1%(PTH)" device="HORIZ" value="10k"/>
<part name="AMSHD1" library="SparkFun-Boards" deviceset="ARDUINO_MEGA_SHIELD" device=""/>
<part name="U2" library="SparkFun-AnalogIC" deviceset="MCP41XXX" device="DIL"/>
<part name="U1" library="SparkFun-AnalogIC" deviceset="MCP41XXX" device="DIL"/>
<part name="P+8" library="supply1" deviceset="+5V" device=""/>
<part name="GND-ISO10" library="SparkFun-Aesthetics" deviceset="GND-ISO" device=""/>
<part name="JP7" library="SparkFun-Connectors" deviceset="M03" device="POLAR"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="40.64" y="104.14" size="1.778" layer="91">pump flow fontrol</text>
<text x="53.34" y="45.72" size="1.778" layer="91">optics light control</text>
<text x="12.7" y="71.12" size="1.778" layer="91">pump 
flow
control</text>
<text x="22.86" y="10.16" size="1.778" layer="91">optics
light 
control</text>
</plain>
<instances>
<instance part="GND-ISO2" gate="G$1" x="43.18" y="50.8"/>
<instance part="P+2" gate="1" x="43.18" y="99.06"/>
<instance part="JP3" gate="G$1" x="22.86" y="73.66"/>
<instance part="R2" gate="G$1" x="33.02" y="73.66" rot="R180"/>
<instance part="AMSHD1" gate="G$1" x="-25.4" y="43.18"/>
<instance part="U2" gate="G$1" x="53.34" y="71.12"/>
<instance part="U1" gate="G$1" x="55.88" y="12.7"/>
<instance part="P+8" gate="1" x="43.18" y="43.18"/>
<instance part="GND-ISO10" gate="G$1" x="43.18" y="-7.62"/>
<instance part="JP7" gate="G$1" x="33.02" y="15.24"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<wire x1="43.18" y1="91.44" x2="43.18" y2="96.52" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<pinref part="U2" gate="G$1" pin="VCC"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VCC"/>
<pinref part="P+8" gate="1" pin="+5V"/>
<wire x1="45.72" y1="33.02" x2="43.18" y2="33.02" width="0.1524" layer="91"/>
<wire x1="43.18" y1="33.02" x2="43.18" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="A"/>
<wire x1="45.72" y1="17.78" x2="43.18" y2="17.78" width="0.1524" layer="91"/>
<wire x1="43.18" y1="17.78" x2="43.18" y2="33.02" width="0.1524" layer="91"/>
<junction x="43.18" y="33.02"/>
</segment>
</net>
<net name="GND-ISO" class="0">
<segment>
<pinref part="GND-ISO2" gate="G$1" pin="GND-ISO"/>
<wire x1="43.18" y1="66.04" x2="43.18" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<pinref part="GND-ISO10" gate="G$1" pin="GND-ISO"/>
<wire x1="45.72" y1="7.62" x2="43.18" y2="7.62" width="0.1524" layer="91"/>
<wire x1="43.18" y1="7.62" x2="43.18" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="B"/>
<wire x1="45.72" y1="12.7" x2="43.18" y2="12.7" width="0.1524" layer="91"/>
<wire x1="43.18" y1="12.7" x2="43.18" y2="7.62" width="0.1524" layer="91"/>
<junction x="43.18" y="7.62"/>
<pinref part="JP7" gate="G$1" pin="1"/>
<wire x1="43.18" y1="12.7" x2="40.64" y2="12.7" width="0.1524" layer="91"/>
<junction x="43.18" y="12.7"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="43.18" y1="76.2" x2="30.48" y2="76.2" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="3"/>
<pinref part="U2" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="1"/>
<wire x1="30.48" y1="71.12" x2="43.18" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="43.18" y1="73.66" x2="38.1" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="W"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="JP3" gate="G$1" pin="2"/>
<wire x1="27.94" y1="73.66" x2="30.48" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="W"/>
<wire x1="45.72" y1="15.24" x2="40.64" y2="15.24" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="-35.56" y1="13.97" x2="-35.56" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="AMSHD1" gate="G$1" pin="52"/>
<wire x1="-5.08" y1="-5.08" x2="7.62" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="SCK"/>
<wire x1="7.62" y1="25.4" x2="45.72" y2="25.4" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="SCK"/>
<wire x1="43.18" y1="83.82" x2="7.62" y2="83.82" width="0.1524" layer="91"/>
<wire x1="7.62" y1="83.82" x2="7.62" y2="25.4" width="0.1524" layer="91"/>
<junction x="7.62" y="25.4"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="AMSHD1" gate="G$1" pin="51"/>
<wire x1="-5.08" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="DI"/>
<wire x1="2.54" y1="22.86" x2="45.72" y2="22.86" width="0.1524" layer="91"/>
<wire x1="2.54" y1="22.86" x2="2.54" y2="81.28" width="0.1524" layer="91"/>
<junction x="2.54" y="22.86"/>
<pinref part="U2" gate="G$1" pin="DI"/>
<wire x1="2.54" y1="81.28" x2="43.18" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="AMSHD1" gate="G$1" pin="9"/>
<wire x1="-45.72" y1="12.7" x2="-58.42" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="12.7" x2="-58.42" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-22.86" x2="15.24" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-22.86" x2="15.24" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="CS"/>
<wire x1="15.24" y1="27.94" x2="45.72" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="AMSHD1" gate="G$1" pin="10"/>
<wire x1="-45.72" y1="10.16" x2="-53.34" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="10.16" x2="-53.34" y2="104.14" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="104.14" x2="5.08" y2="104.14" width="0.1524" layer="91"/>
<wire x1="5.08" y1="104.14" x2="5.08" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="CS"/>
<wire x1="5.08" y1="86.36" x2="43.18" y2="86.36" width="0.1524" layer="91"/>
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
