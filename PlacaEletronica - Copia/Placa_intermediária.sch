<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="50" unitdist="mil" unit="mil" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
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
<library name="con-phoenix-254" urn="urn:adsk.eagle:library:172">
<description>&lt;b&gt;Phoenix Connectors&lt;/b&gt;&lt;p&gt;
Grid 2.54 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="4POL254" urn="urn:adsk.eagle:footprint:9307/1" library_version="2">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<wire x1="-5.21" y1="-1.45" x2="5.21" y2="-1.45" width="0.254" layer="21"/>
<wire x1="5.21" y1="-1.45" x2="5.21" y2="1.45" width="0.254" layer="21"/>
<wire x1="5.21" y1="1.45" x2="-5.21" y2="1.45" width="0.254" layer="21"/>
<wire x1="-5.21" y1="1.45" x2="-5.21" y2="-1.45" width="0.254" layer="21"/>
<wire x1="-5.1" y1="1.1" x2="5.1" y2="1.1" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-0.508" x2="-3.302" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-0.254" x2="-0.508" y2="0.127" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.635" x2="1.778" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="3.048" y1="0.381" x2="4.572" y2="-0.381" width="0.1524" layer="51"/>
<circle x="-3.81" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="0" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.2" shape="long" rot="R90"/>
<text x="-5.334" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.334" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="4POL254" urn="urn:adsk.eagle:package:9326/1" type="box" library_version="2">
<description>PHOENIX CONNECTOR</description>
<packageinstances>
<packageinstance name="4POL254"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="SKB" urn="urn:adsk.eagle:symbol:9303/1" library_version="2">
<wire x1="2.032" y1="0.762" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.556" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
<symbol name="SKBV" urn="urn:adsk.eagle:symbol:9304/1" library_version="2">
<wire x1="2.032" y1="0.762" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.556" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.016" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MPT4" urn="urn:adsk.eagle:component:9333/2" prefix="X" uservalue="yes" library_version="2">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="SKB" x="0" y="10.16" addlevel="always"/>
<gate name="-2" symbol="SKB" x="0" y="5.08" addlevel="always"/>
<gate name="-3" symbol="SKB" x="0" y="0" addlevel="always"/>
<gate name="-4" symbol="SKBV" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="4POL254">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:9326/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="5" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-headers-jp(1)">
<description>&lt;b&gt;Male(J), Female(P) and Pin Headers&lt;/b&gt;&lt;p&gt;Version 1.02 - 03/10/2009&lt;p&gt;
This library is a collection of various pin headers and AMP, Molex and 3M board-to-board connectors. 
This library assumes the notion of JACKS(male) and PLUGS(female) as represented by the J and P symbols.
Standard male/female pin header types are available in common 0.1" and 2 mm pitch types with alternate mirrored footprints as well.
&lt;p&gt;THIS LIBRARY IS PROVIDED AS IS AND WITHOUT WARRANTY OF ANY KIND, EXPRESSED OR IMPLIED.&lt;br&gt;
USE AT YOUR OWN RISK!&lt;p&gt;
&lt;author&gt;Copyright (C) 2008, Bob Starr&lt;br&gt; http://www.bobstarr.net&lt;br&gt;&lt;/author&gt;</description>
<packages>
<package name="SIP-100-16-40">
<description>&lt;b&gt;SIP Header&lt;/b&gt; - 0.1", 40 mil drill</description>
<wire x1="20.32" y1="-1.27" x2="20.32" y2="1.27" width="0.254" layer="21"/>
<wire x1="20.32" y1="1.27" x2="-17.78" y2="1.27" width="0.254" layer="21"/>
<wire x1="-17.78" y1="1.27" x2="-20.32" y2="1.27" width="0.254" layer="21"/>
<wire x1="-20.32" y1="1.27" x2="-20.32" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-20.32" y1="-1.27" x2="-17.78" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-17.78" y1="-1.27" x2="20.32" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-17.78" y1="1.27" x2="-17.78" y2="-1.27" width="0.254" layer="21"/>
<pad name="2" x="-16.51" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="1" x="-19.05" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<text x="-20.955" y="-1.27" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="21.59" y="-1.27" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="SIP-100-16-32">
<description>&lt;b&gt;SIP Header&lt;/b&gt; - 0.1", 32 mil drill</description>
<wire x1="20.32" y1="-1.27" x2="20.32" y2="1.27" width="0.254" layer="21"/>
<wire x1="20.32" y1="1.27" x2="-17.78" y2="1.27" width="0.254" layer="21"/>
<wire x1="-17.78" y1="1.27" x2="-20.32" y2="1.27" width="0.254" layer="21"/>
<wire x1="-20.32" y1="1.27" x2="-20.32" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-20.32" y1="-1.27" x2="-17.78" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-17.78" y1="-1.27" x2="20.32" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-17.78" y1="1.27" x2="-17.78" y2="-1.27" width="0.254" layer="21"/>
<pad name="2" x="-16.51" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="1" x="-19.05" y="0" drill="0.8128" diameter="1.778" shape="square" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<text x="-20.955" y="-1.27" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="21.59" y="-1.27" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="SIP-100-16-32Y">
<description>&lt;b&gt;SIP Header&lt;/b&gt; - 0.1", 32 mil drill</description>
<wire x1="20.32" y1="-1.905" x2="20.32" y2="1.905" width="0.254" layer="21"/>
<wire x1="20.32" y1="1.905" x2="-17.78" y2="1.905" width="0.254" layer="21"/>
<wire x1="-17.78" y1="1.905" x2="-20.32" y2="1.905" width="0.254" layer="21"/>
<wire x1="-20.32" y1="1.905" x2="-20.32" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-17.78" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="20.32" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-17.78" y1="1.905" x2="-17.78" y2="-1.905" width="0.254" layer="21"/>
<pad name="2" x="-16.51" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="1" x="-19.05" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-20.955" y="-1.5875" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="21.59" y="-1.5875" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="SIP-100-16-40Y">
<description>&lt;b&gt;SIP Header&lt;/b&gt; - 0.1", 40 mil drill</description>
<wire x1="20.32" y1="-1.905" x2="20.32" y2="1.905" width="0.254" layer="21"/>
<wire x1="20.32" y1="1.905" x2="-17.78" y2="1.905" width="0.254" layer="21"/>
<wire x1="-17.78" y1="1.905" x2="-20.32" y2="1.905" width="0.254" layer="21"/>
<wire x1="-20.32" y1="1.905" x2="-20.32" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-17.78" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="20.32" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-17.78" y1="1.905" x2="-17.78" y2="-1.905" width="0.254" layer="21"/>
<pad name="2" x="-16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="-19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-20.955" y="-1.5875" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="21.59" y="-1.5875" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="KK-4455-B16">
<description>KK100 Molex&lt;p&gt;
4455 Series, Vertical, Bottom Entry, 0.1" pitch</description>
<wire x1="20.32" y1="-2.54" x2="20.32" y2="5.08" width="0.254" layer="21"/>
<wire x1="20.32" y1="5.08" x2="-20.32" y2="5.08" width="0.254" layer="21"/>
<wire x1="-20.32" y1="5.08" x2="-20.32" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-20.32" y1="-2.54" x2="-19.685" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-19.685" y1="-2.54" x2="-19.685" y2="-2.032" width="0.254" layer="21"/>
<wire x1="-19.685" y1="-2.032" x2="19.685" y2="-2.032" width="0.254" layer="21"/>
<wire x1="19.685" y1="-2.032" x2="19.685" y2="-2.54" width="0.254" layer="21"/>
<wire x1="19.685" y1="-2.54" x2="20.32" y2="-2.54" width="0.254" layer="21"/>
<pad name="2" x="-16.51" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="1" x="-19.05" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="1.0668" shape="long" rot="R90"/>
<text x="-20.955" y="-1.5875" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="21.59" y="-1.5875" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<hole x="-19.05" y="3.81" drill="1.778"/>
<hole x="-16.51" y="3.81" drill="1.778"/>
<hole x="-13.97" y="3.81" drill="1.778"/>
<hole x="-11.43" y="3.81" drill="1.778"/>
<hole x="-8.89" y="3.81" drill="1.778"/>
<hole x="-6.35" y="3.81" drill="1.778"/>
<hole x="-3.81" y="3.81" drill="1.778"/>
<hole x="-1.27" y="3.81" drill="1.778"/>
<hole x="1.27" y="3.81" drill="1.778"/>
<hole x="3.81" y="3.81" drill="1.778"/>
<hole x="6.35" y="3.81" drill="1.778"/>
<hole x="8.89" y="3.81" drill="1.778"/>
<hole x="11.43" y="3.81" drill="1.778"/>
<hole x="13.97" y="3.81" drill="1.778"/>
<hole x="16.51" y="3.81" drill="1.778"/>
<hole x="19.05" y="3.81" drill="1.778"/>
</package>
<package name="KK-4455-C16">
<description>KK100 Molex&lt;p&gt;
4455 Series, Vertical, Top Entry, 0.1" pitch</description>
<wire x1="-20.32" y1="4.1275" x2="-20.32" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-20.32" y1="-3.175" x2="-19.3675" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-19.3675" y1="-3.175" x2="-19.3675" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-19.3675" y1="-1.27" x2="19.3675" y2="-1.27" width="0.254" layer="21"/>
<wire x1="19.3675" y1="-1.27" x2="19.3675" y2="-3.175" width="0.254" layer="21"/>
<wire x1="19.3675" y1="-3.175" x2="20.32" y2="-3.175" width="0.254" layer="21"/>
<wire x1="20.32" y1="-3.175" x2="20.32" y2="4.1275" width="0.254" layer="21"/>
<wire x1="20.32" y1="4.1275" x2="-20.32" y2="4.1275" width="0.254" layer="21"/>
<pad name="2" x="-16.51" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="1" x="-19.05" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<text x="-20.955" y="-1.5875" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="21.59" y="-1.5875" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<hole x="-19.05" y="2.54" drill="1.778"/>
<hole x="-16.51" y="2.54" drill="1.778"/>
<hole x="-13.97" y="2.54" drill="1.778"/>
<hole x="-11.43" y="2.54" drill="1.778"/>
<hole x="-8.89" y="2.54" drill="1.778"/>
<hole x="-6.35" y="2.54" drill="1.778"/>
<hole x="-3.81" y="2.54" drill="1.778"/>
<hole x="-1.27" y="2.54" drill="1.778"/>
<hole x="1.27" y="2.54" drill="1.778"/>
<hole x="3.81" y="2.54" drill="1.778"/>
<hole x="6.35" y="2.54" drill="1.778"/>
<hole x="8.89" y="2.54" drill="1.778"/>
<hole x="11.43" y="2.54" drill="1.778"/>
<hole x="13.97" y="2.54" drill="1.778"/>
<hole x="16.51" y="2.54" drill="1.778"/>
<hole x="19.05" y="2.54" drill="1.778"/>
</package>
<package name="KK-4455-A16">
<description>KK100 Molex&lt;p&gt;
4455 Series, Right Angle, 0.1" pitch</description>
<wire x1="20.32" y1="0" x2="-20.32" y2="0" width="0.254" layer="51"/>
<wire x1="-20.32" y1="0" x2="-20.32" y2="-5.334" width="0.254" layer="21"/>
<wire x1="-20.32" y1="-5.334" x2="-20.32" y2="-7.112" width="0.254" layer="51"/>
<wire x1="-20.32" y1="-7.112" x2="20.32" y2="-7.112" width="0.254" layer="51"/>
<wire x1="20.32" y1="-7.112" x2="20.32" y2="-5.334" width="0.254" layer="51"/>
<wire x1="20.32" y1="-5.334" x2="20.32" y2="0" width="0.254" layer="21"/>
<wire x1="20.32" y1="-5.334" x2="-20.32" y2="-5.334" width="0.254" layer="21"/>
<pad name="2" x="-16.51" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="1" x="-19.05" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="3" x="-13.97" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="4" x="-11.43" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="5" x="-8.89" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="6" x="-6.35" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="7" x="-3.81" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="8" x="-1.27" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="9" x="1.27" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="10" x="3.81" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="11" x="6.35" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="13" x="11.43" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="14" x="13.97" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="15" x="16.51" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="16" x="19.05" y="0" drill="1.0668" shape="long" rot="R90"/>
<text x="20.955" y="0" size="1.016" layer="25" ratio="18" rot="R270">&gt;NAME</text>
<text x="-19.685" y="-3.175" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<polygon width="0.2032" layer="51">
<vertex x="-19.3675" y="-3.81"/>
<vertex x="-18.7325" y="-3.81"/>
<vertex x="-19.05" y="-4.445"/>
</polygon>
</package>
<package name="SIP-100-02-40">
<description>&lt;b&gt;SIP Header&lt;/b&gt; - 0.1", 40 mil drill</description>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<text x="-3.175" y="-1.27" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.27" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="SIP-100-02-32">
<description>&lt;b&gt;SIP Header&lt;/b&gt; - 0.1", 32 mil drill</description>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.778" shape="square" rot="R90"/>
<text x="-3.175" y="-1.27" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.27" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="SIP-100-02-32Y">
<description>&lt;b&gt;SIP Header&lt;/b&gt; - 0.1", 32 mil drill</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.905" x2="-2.54" y2="1.905" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="2.54" y2="-1.905" width="0.254" layer="21"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-3.175" y="-1.5875" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.5875" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="SIP-100-02-40Y">
<description>&lt;b&gt;SIP Header&lt;/b&gt; - 0.1", 40 mil drill</description>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="1.905" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.905" x2="-2.54" y2="1.905" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.905" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="2.54" y2="-1.905" width="0.254" layer="21"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-1.5875" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.5875" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
<package name="KK-4455-B02">
<description>KK100 Molex&lt;p&gt;
4455 Series, Vertical, Bottom Entry, 0.1" pitch</description>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="5.08" width="0.254" layer="21"/>
<wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" width="0.254" layer="21"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-2.54" x2="-1.905" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.905" y2="-2.032" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-2.032" x2="1.905" y2="-2.032" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.032" x2="1.905" y2="-2.54" width="0.254" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="21"/>
<pad name="2" x="1.27" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="1" x="-1.27" y="0" drill="1.0668" shape="long" rot="R90"/>
<text x="-3.175" y="-1.5875" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.5875" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<hole x="-1.27" y="3.81" drill="1.778"/>
<hole x="1.27" y="3.81" drill="1.778"/>
</package>
<package name="KK-4455-C02">
<description>KK100 Molex&lt;p&gt;
4455 Series, Vertical, Top Entry, 0.1" pitch</description>
<wire x1="-2.54" y1="4.1275" x2="-2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-1.5875" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-1.5875" y1="-3.175" x2="-1.5875" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-1.5875" y1="-1.27" x2="1.5875" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.5875" y1="-1.27" x2="1.5875" y2="-3.175" width="0.254" layer="21"/>
<wire x1="1.5875" y1="-3.175" x2="2.54" y2="-3.175" width="0.254" layer="21"/>
<wire x1="2.54" y1="-3.175" x2="2.54" y2="4.1275" width="0.254" layer="21"/>
<wire x1="2.54" y1="4.1275" x2="-2.54" y2="4.1275" width="0.254" layer="21"/>
<pad name="2" x="1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<text x="-3.175" y="-1.5875" size="1.016" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="3.81" y="-1.5875" size="0.8128" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<hole x="-1.27" y="2.54" drill="1.778"/>
<hole x="1.27" y="2.54" drill="1.778"/>
</package>
<package name="KK-4455-A02">
<description>KK100 Molex&lt;p&gt;
4455 Series, Right Angle, 0.1" pitch</description>
<wire x1="2.54" y1="0" x2="-2.54" y2="0" width="0.254" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-5.334" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-5.334" x2="-2.54" y2="-7.112" width="0.254" layer="51"/>
<wire x1="-2.54" y1="-7.112" x2="2.54" y2="-7.112" width="0.254" layer="51"/>
<wire x1="2.54" y1="-7.112" x2="2.54" y2="-5.334" width="0.254" layer="51"/>
<wire x1="2.54" y1="-5.334" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="-5.334" x2="-2.54" y2="-5.334" width="0.254" layer="21"/>
<pad name="2" x="1.27" y="0" drill="1.0668" shape="long" rot="R90"/>
<pad name="1" x="-1.27" y="0" drill="1.0668" shape="long" rot="R90"/>
<text x="3.175" y="0" size="1.016" layer="25" ratio="18" rot="R270">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<polygon width="0.2032" layer="51">
<vertex x="-1.5875" y="-3.81"/>
<vertex x="-0.9525" y="-3.81"/>
<vertex x="-1.27" y="-4.445"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="F1X16">
<wire x1="3.81" y1="-22.86" x2="-1.27" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="20.32" x2="-1.27" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-22.86" x2="3.81" y2="20.32" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="20.32" x2="3.81" y2="20.32" width="0.4064" layer="94"/>
<wire x1="0" y1="17.78" x2="0.9525" y2="17.145" width="0.254" layer="94"/>
<wire x1="0" y1="17.78" x2="0.9525" y2="18.415" width="0.254" layer="94"/>
<wire x1="0" y1="15.24" x2="0.9525" y2="14.605" width="0.254" layer="94"/>
<wire x1="0" y1="15.24" x2="0.9525" y2="15.875" width="0.254" layer="94"/>
<wire x1="0" y1="12.7" x2="0.9525" y2="12.065" width="0.254" layer="94"/>
<wire x1="0" y1="12.7" x2="0.9525" y2="13.335" width="0.254" layer="94"/>
<wire x1="0" y1="10.16" x2="0.9525" y2="9.525" width="0.254" layer="94"/>
<wire x1="0" y1="10.16" x2="0.9525" y2="10.795" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="0.9525" y2="6.985" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="0.9525" y2="8.255" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0.9525" y2="4.445" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0.9525" y2="5.715" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0.9525" y2="1.905" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0.9525" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.9525" y2="-0.635" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.9525" y2="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0.9525" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0.9525" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0.9525" y2="-5.715" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0.9525" y2="-4.445" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="0.9525" y2="-8.255" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="0.9525" y2="-6.985" width="0.254" layer="94"/>
<wire x1="0" y1="-10.16" x2="0.9525" y2="-10.795" width="0.254" layer="94"/>
<wire x1="0" y1="-10.16" x2="0.9525" y2="-9.525" width="0.254" layer="94"/>
<wire x1="0" y1="-12.7" x2="0.9525" y2="-13.335" width="0.254" layer="94"/>
<wire x1="0" y1="-12.7" x2="0.9525" y2="-12.065" width="0.254" layer="94"/>
<wire x1="0" y1="-15.24" x2="0.9525" y2="-15.875" width="0.254" layer="94"/>
<wire x1="0" y1="-15.24" x2="0.9525" y2="-14.605" width="0.254" layer="94"/>
<wire x1="0" y1="-17.78" x2="0.9525" y2="-18.415" width="0.254" layer="94"/>
<wire x1="0" y1="-17.78" x2="0.9525" y2="-17.145" width="0.254" layer="94"/>
<wire x1="0" y1="-20.32" x2="0.9525" y2="-20.955" width="0.254" layer="94"/>
<wire x1="0" y1="-20.32" x2="0.9525" y2="-19.685" width="0.254" layer="94"/>
<text x="-1.27" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="21.082" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="-5.08" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-5.08" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-5.08" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-5.08" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="-5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="-5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-5.08" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="11" x="-5.08" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="-5.08" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="-5.08" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="14" x="-5.08" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="15" x="-5.08" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="16" x="-5.08" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="F1X02">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="3.81" y2="2.54" width="0.4064" layer="94"/>
<wire x1="0" y1="0" x2="0.9525" y2="-0.635" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0.9525" y2="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0.9525" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="0.9525" y2="-1.905" width="0.254" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="-5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="F-1X16-" prefix="J">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="F1X16" x="0" y="0"/>
</gates>
<devices>
<device name="SIP-100-40" package="SIP-100-16-40">
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
<device name="SIP-100-32" package="SIP-100-16-32">
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
<device name="SIP-100-32Y" package="SIP-100-16-32Y">
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
<device name="SIP-100-40Y" package="SIP-100-16-40Y">
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
<device name="KK-4455-B16" package="KK-4455-B16">
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
<device name="KK-4455-C16" package="KK-4455-C16">
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
<device name="KK-4455-A16" package="KK-4455-A16">
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
<deviceset name="F-1X02-" prefix="J">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="F1X02" x="0" y="0"/>
</gates>
<devices>
<device name="SIP-100-40" package="SIP-100-02-40">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SIP-100-32" package="SIP-100-02-32">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SIP-100-32Y" package="SIP-100-02-32Y">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SIP-100-40Y" package="SIP-100-02-40Y">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KK-4455-B02" package="KK-4455-B02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KK-4455-C02" package="KK-4455-C02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KK-4455-A02" package="KK-4455-A02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
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
<part name="X1" library="con-phoenix-254" library_urn="urn:adsk.eagle:library:172" deviceset="MPT4" device="" package3d_urn="urn:adsk.eagle:package:9326/1"/>
<part name="J1" library="con-headers-jp(1)" deviceset="F-1X16-" device="SIP-100-40"/>
<part name="J2" library="con-headers-jp(1)" deviceset="F-1X02-" device="SIP-100-40"/>
<part name="J3" library="con-headers-jp(1)" deviceset="F-1X02-" device="SIP-100-40"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="50.8" y="31.75" smashed="yes" rot="R90">
<attribute name="NAME" x="51.435" y="35.306" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="X1" gate="-2" x="55.88" y="31.75" smashed="yes" rot="R90">
<attribute name="NAME" x="56.515" y="35.306" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="X1" gate="-3" x="60.96" y="31.75" smashed="yes" rot="R90">
<attribute name="NAME" x="61.595" y="35.306" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="X1" gate="-4" x="66.04" y="31.75" smashed="yes" rot="R90">
<attribute name="NAME" x="66.675" y="35.306" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="69.342" y="30.734" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="J1" gate="G$1" x="26.67" y="20.32" smashed="yes" rot="R180">
<attribute name="VALUE" x="27.94" y="45.72" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="27.94" y="-0.762" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="J2" gate="G$1" x="13.97" y="40.64" smashed="yes">
<attribute name="VALUE" x="12.7" y="33.02" size="1.778" layer="96"/>
<attribute name="NAME" x="12.7" y="43.942" size="1.778" layer="95"/>
</instance>
<instance part="J3" gate="G$1" x="13.97" y="5.08" smashed="yes">
<attribute name="VALUE" x="12.7" y="-2.54" size="1.778" layer="96"/>
<attribute name="NAME" x="12.7" y="8.382" size="1.778" layer="95"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="X1" gate="-4" pin="1"/>
<wire x1="66.04" y1="29.21" x2="66.04" y2="26.67" width="0.1524" layer="91"/>
<label x="66.04" y="26.67" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="31.75" y1="2.54" x2="35.56" y2="2.54" width="0.1524" layer="91"/>
<label x="35.56" y="2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCREEN_RX" class="0">
<segment>
<pinref part="X1" gate="-3" pin="1"/>
<wire x1="60.96" y1="29.21" x2="60.96" y2="26.67" width="0.1524" layer="91"/>
<label x="60.96" y="26.67" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="31.75" y1="5.08" x2="35.56" y2="5.08" width="0.1524" layer="91"/>
<label x="35.56" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCREEN_TX" class="0">
<segment>
<pinref part="X1" gate="-2" pin="1"/>
<wire x1="55.88" y1="29.21" x2="55.88" y2="26.67" width="0.1524" layer="91"/>
<label x="55.88" y="26.67" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="31.75" y1="7.62" x2="35.56" y2="7.62" width="0.1524" layer="91"/>
<label x="35.56" y="7.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="X1" gate="-1" pin="1"/>
<wire x1="50.8" y1="29.21" x2="50.8" y2="26.67" width="0.1524" layer="91"/>
<label x="50.8" y="26.67" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="31.75" y1="10.16" x2="35.56" y2="10.16" width="0.1524" layer="91"/>
<label x="35.56" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
