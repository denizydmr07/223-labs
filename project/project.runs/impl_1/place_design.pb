
?
?No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px? 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
42default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
1739.6022default:default2
0.0002default:default2
27332default:default2
68792default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
1739.6022default:default2
0.0002default:default2
27332default:default2
68792default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
g
RPhase 1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: c3d9e28c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 1762.602 ; gain = 23.000 ; free physical = 2728 ; free virtual = 68732default:defaulth px? 
}

Phase %s%s
101*constraints2
1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.2 Build Placer Netlist Model | Checksum: 13423e559
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:31 ; elapsed = 00:01:09 . Memory (MB): peak = 1765.613 ; gain = 26.012 ; free physical = 2627 ; free virtual = 68242default:defaulth px? 
z

Phase %s%s
101*constraints2
1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.3 Constrain Clocks/Macros | Checksum: 13423e559
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:31 ; elapsed = 00:01:09 . Memory (MB): peak = 1765.613 ; gain = 26.012 ; free physical = 2627 ; free virtual = 68242default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 13423e559
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:32 ; elapsed = 00:01:09 . Memory (MB): peak = 1765.613 ; gain = 26.012 ; free physical = 2627 ; free virtual = 68242default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
D
/Phase 2 Global Placement | Checksum: 103e2be8b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:53 ; elapsed = 00:01:18 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2630 ; free virtual = 68202default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 103e2be8b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:53 ; elapsed = 00:01:18 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2630 ; free virtual = 68202default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1b20db3e2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:57 ; elapsed = 00:01:21 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2645 ; free virtual = 68252default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 216ec7ac1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:57 ; elapsed = 00:01:21 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2645 ; free virtual = 68252default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 216ec7ac1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:57 ; elapsed = 00:01:21 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2645 ; free virtual = 68252default:defaulth px? 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px? 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 1cdf1751b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:57 ; elapsed = 00:01:22 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2645 ; free virtual = 68252default:defaulth px? 
t

Phase %s%s
101*constraints2
3.6 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.6 Fast Optimization | Checksum: 1cdf1751b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:58 ; elapsed = 00:01:22 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2644 ; free virtual = 68252default:defaulth px? 


Phase %s%s
101*constraints2
3.7 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.7 Small Shape Detail Placement | Checksum: 1f0ad2206
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:59 ; elapsed = 00:01:22 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2626 ; free virtual = 68262default:defaulth px? 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 2980ada46
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:59 ; elapsed = 00:01:23 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2626 ; free virtual = 68262default:defaulth px? 
?

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.9 Pipeline Register Optimization | Checksum: 2980ada46
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:59 ; elapsed = 00:01:23 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2626 ; free virtual = 68262default:defaulth px? 
u

Phase %s%s
101*constraints2
3.10 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
H
3Phase 3.10 Fast Optimization | Checksum: 2980ada46
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:01 ; elapsed = 00:01:24 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2620 ; free virtual = 68162default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 2980ada46
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:01 ; elapsed = 00:01:24 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2620 ; free virtual = 68162default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-24.1832default:defaultZ30-746h px? 
R
=Phase 4.1.1 Post Placement Optimization | Checksum: e4d1c723
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2622 ; free virtual = 68062default:defaulth px? 
M
8Phase 4.1 Post Commit Optimization | Checksum: e4d1c723
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2618 ; free virtual = 68062default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
K
6Phase 4.2 Post Placement Cleanup | Checksum: e4d1c723
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2618 ; free virtual = 68062default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
E
0Phase 4.3 Placer Reporting | Checksum: e4d1c723
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2618 ; free virtual = 68062default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1a9ba1e34
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2616 ; free virtual = 68062default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1a9ba1e34
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2616 ; free virtual = 68062default:defaulth px? 
>
)Ending Placer Task | Checksum: 17e52e63d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1789.625 ; gain = 50.023 ; free physical = 2616 ; free virtual = 68062default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
392default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:04:142default:default2
00:01:322default:default2
1789.6252default:default2
50.0232default:default2
26162default:default2
68062default:defaultZ17-722h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:00.672default:default2
1789.6252default:default2
0.0002default:default2
25962default:default2
68202default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2P
</home/deniz/project/project.runs/impl_1/Processor_placed.dcp2default:defaultZ17-1381h px? 
?
?report_io: Time (s): cpu = 00:00:00.10 ; elapsed = 00:00:00.11 . Memory (MB): peak = 1789.625 ; gain = 0.000 ; free physical = 2598 ; free virtual = 6804
*commonh px? 
?
?report_utilization: Time (s): cpu = 00:00:00.10 ; elapsed = 00:00:00.12 . Memory (MB): peak = 1789.625 ; gain = 0.000 ; free physical = 2590 ; free virtual = 6795
*commonh px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.08 . Memory (MB): peak = 1789.625 ; gain = 0.000 ; free physical = 2590 ; free virtual = 6796
*commonh px? 


End Record