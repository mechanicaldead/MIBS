                               �"Defines Eaton's proprietary PowerMIB for UPS and
             related device data.

            Copyright (C) Exide Electronics 1992-98
            Copyright (C) Powerware Corporation 1999-2004
            Copyright (C) Eaton Corporation (2005-)."+"Eaton Power Quality Technical Support (PQTS) group
            www.eaton.com/powerxpert 
            Technical Resource Center phone numbers 
			United States:  1.800.843.9433 or 919.870.3028
			Canada:  1.800.461.9166 ext. 260
			All other countries:  Call your local service representative." "201102250000Z" "200810020000Z" "200705030000Z" "200703130000Z" "Add new data xupsSwitchable" "Added new values of batteryDisconnected(6), batteryUnderTest(7), 
             and checkBattery(8)  to xupsBatteryAbmStatus." f"Added new value of pxg(5) to xupsSendTrapType
             for Power Xpert Gateway implementations." �"Initial SNMPv2-SMI-compliant Version of PowerMIB.
             Incorporates all revisions of the original xups
             MIB file through Version 3.13 21-May-04."                   5"The UPS Manufacturer Name (e.g. Eaton Corporation)."                       /"The UPS Model (e.g. Powerware Plus Model 18)."                       ?"The firmware revision level(s) of the UPS microcontroller(s)."                       t"A binary code indicating who the UPS was manufactured or labeled for.  
         0 or 255 indicates Eaton itself."                           P"Battery run time in seconds before UPS turns off due
         to low battery."                       0"Battery voltage as reported by the UPS meters."                       �"Battery Current as reported by the UPS metering.
         Current is positive when discharging, negative
         when recharging the battery."                       "Battery percent charge."                      �"Gives the status of the Advanced Battery Management and Battery state;
     batteryFloating(3) status means that the charger is temporarily 
     charging the battery to its float voltage; batteryResting(4) is the 
     state when the battery is fully charged and none of the other actions 
     (charging/discharging/floating) is being done.
     checkBattery(8) indicates that the Battery state is uncertain
     following a poor battery test result."                       �"The date when the Batteries in this UPS were last replaced.  Should be
     the same as xupsConfigInstallDate initially. Free text format, so the  
     preferred local date format may be used (MM/DD/YYYY, DD-Mon-YYYY, etc)."                           -"The utility line frequency in tenths of Hz."                       W"The number of times the Input was out of tolerance
         in voltage or frequency."                       /"The number of input phases (normally 1 to 3)."                       m"A list of input table entries.  The number of entries
        is given by the value of xupsInputNumPhases."                       _"The input table entry containing the current,
         voltage, etc. readings for one phase."                       <"The number of the phase.  Serves as index for input table."                       :"The measured input voltage from the UPS meters in volts."                       9"The measured input current from the UPS meters in amps."                       )"The measured input real power in watts."                      �"The present external source of input power.  The enumeration
        'none(2)' indicates that there is no external source of 
        power, for example, the UPS is On Battery (an internal source).
		'primaryUtility' indicates the normal case of utility input power.
        The 'bypassFeed' can only be used when the Bypass source is known
        to be a separate utility feed than the primaryUtility(3).
		'secondaryUtility' indicates that a secondary utility feed is supplying
		power (on a dual AC input UPS).
        'generator' indicates that input power is provided by a generator.
		Note that the alternate energy sources of 'flywheel' and 'fuelcell' are 
		not necessarily AC input sources."                      �"The present status of the sources of input power in a dual source UPS.  
        The enumeration primarySourceGood(2) indicates that the primary source
        of power is present and within 'normal' ranges for voltage and
        frequency, but the secondary source is either not present or not in an
        acceptable range.
		'secondarySourceGood' indicates that only the Secondary power feed is 
		available and within its limits.
        The enumeration bothSourcesGood(4) indicates that both sources are present
        and within their respective 'normal' ranges; 
        bothSourcesBad(1) indicates that neither source is present, or, if present, 
        is not within acceptable ranges.
        This object will only be implemented for UPSs with two sources of input
        power, e.g., redundant AC feeds or a separate Bypass or Generator source.
        The secondary source will not be an AC power source in all cases."                      "This object enables(2) or disables(1) the alarms and traps related to the
        availability and use of the secondary input of a dual-input UPS
        (i.e., OnAlternatePowerSource and AltPowerNotAvailable).
        To avoid nuisance alarms and traps, this object should be set to  
        disabled(1) when the UPS is not wired to a secondary source of power.
        This object will only be implemented for UPSs with two sources of input
        power, i.e., redundant AC feeds or a separate Bypass or Generator source."                           3"The UPS output load in percent of rated capacity."                       4"The measured UPS output frequency in tenths of Hz."                       &"The number of metered output phases."                       o"A list of output table entries.  The number of entries
        is given by the value of xupsOutputNumPhases."                       6"Output Table Entry containing voltage, current, etc."                       ("The number {1..3} of the output phase."                       ="The measured output voltage from the UPS metering in volts."                       *"The measured UPS output current in amps."                       *"The measured real output power in watts."                      �"The present source of output power.  The enumeration
        none(2) indicates that there is no source of output
        power (and therefore no output power), for example,
        the system has opened the output breaker.
		'normal', 'bypass', and 'battery' indicate those common UPS statuses.
		'booster' and 'reducer' indicate boost or buck operation, for 
		line-interactive UPSs only.
		'parallelCapacity' and 'parallelRedundant' indicate a normal parallel
		UPS system, in either Parallel for Capacity or Redundancy configuration.
		'highEfficiencyMode' is normal but enhanced by High Efficiency mode.
		'maintenanceBypass' indicates that the UPS is in Maintenance/Manual 
		Bypass mode.
		'other' covers any other, unusual conditions."                           '"The bypass frequency in tenths of Hz."                       ."The number of lines in the UPS bypass table."                       o"A list of bypass table entries.  The number of entries
        is given by the value of xupsBypassNumPhases."                       7"Bypass Table Entry containing voltage for each phase."                       ("The Bypass Phase, index for the table."                       +"The measured UPS bypass voltage in volts."                           )"The current number of alarm conditions."                       �"A list of alarm table entries.  The number of entries
        is given by the value of xupsAlarms.
        Note that this table is sparsely (non-consecutively)
        numbered and will be empty if there are no active alarms."                       V"Alarm Table Entry containing descriptive information 
         for one alarm entry."                       -"A unique identifier for an alarm condition."                       �"A reference to an alarm description object.  The object
         referenced should not be accessible, but rather be used to
         provide a unique description of the alarm condition."                       Y"The value of the MIB-II variable sysUpTime when the alarm
         condition occurred."                                                                                   7"The number of entries in the UPS event history queue."                       2"A table of the UPS internal event history queue."                       4"One of the entries in the UPS event history queue."                       �"A unique number that reflects the order in which the event
         occurred. The oldest event in the queue will be number 1.
         Subsequent events will be numbered 2, 3, 4, etc."                      !"The time and date that an event occurred as recorded in the UPS
         internal event queue.  This string will reflect the time and
         date as set in the UPS itself and will not be referenced to sysUpTime.
         The format is MM/DD/YYYY:HH:MM:SS.  Time is 24 hour standard."                       �"Enumerated value that tells whether the event is an
         occurrence of an alarm condition or a clearing of an
         alarm condition."                      �"A description of the event stored in the UPS event queue.  
         This description will be a sixteen bit integer value 
         representing one of the defined alarms in the Powerware Binary 
         Computer Mode communication specification; for example,
         a value of 0 represents the 'Inverter AC Over Voltage'
         alarm (byte 1, bit 0 in the BCM Alarm Map)."                       �"A text string describing each entry in the Event Log.  The format of this
         text message is free (not fixed) for the operator to read; good contents 
         would be a time & date stamp, the event type, and a description of the event."                                                                                                                              "Setting this object initiates the requested Test.
		The test types which a UPS might support are 'testBattery', 
		'testSystem' (a UPS General Systems test, however defined by the UPS), 
		'testSecondarySource' (test if the Secondary power source is good on a 
		dual input UPS), and 
		'flashLightsTest' (start a test which flashes the UPS lights, and if 
		available, sounds the horn to help locate the UPS).
        If a UPS does not support the requested test, the set operation may 
		succeed but the xupsTestBatteryStatus will end up as notSupported.
        When read, this object indicates the last test requested via this object, 
		if any; 'noTestStarted' could be the initial value.
        Currently only the 'flashLightsTest' can be canceled with 'cancelTest'."                      1"Reading this enumerated value gives an indication of the (last) 
         UPS Battery test status.
		 'inhibited' means that the battery test could not be run.
		 'scheduled' means that the battery test could not be run at the time
		 of request, but will be run at some later (UPS-determined) time."                       �"Indicates the last UPS test requested via xupsTestStart or by other 
         non-SNMP means, other than for the testBattery (1) case.
         The results of the test indicated by this object are reported in 
         xupsLastGeneralTestResult."                       h"Reading this enumerated value gives the result of the test indicated
         in xupsLastGeneralTest."                           �"Setting this value to other than zero will cause the UPS
         output to turn off after the number of seconds.
         Setting it to 0 will cause an attempt to abort a pending
         shutdown."                       �"Setting this value to other than zero will cause the UPS
         output to turn on after the number of seconds.
         Setting it to 0 will cause an attempt to abort a pending
         startup."                       S"When xupsControlOutputOffDelay reaches this value, a trap will
         be sent."                       `"When xupsControlOutputOnDelay reaches this value, a
         xupsOutputOff trap will be sent."                      9"Setting this value to other than zero will cause the UPS
         output to go to Bypass after the number of seconds.
         If the Bypass is unavailable, this may cause the UPS
         to not supply power to the load.
         Setting it to 0 will cause an attempt to abort a pending
         shutdown."                      C"Setting this value will cause the UPS output to turn off 
        after the set number of seconds, then restart (after a UPS-defined
        'down time') when the utility is again available.  
        Unlike xupsControlOutputOffDelay, which might or might not,
        this object always maps to the XCP 0x8A Load Dump & Restart command,
        so the desired shutdown and restart behavior is guaranteed to happen.
        Once set, this command cannot be aborted.
        This is the preferred Control object to use when performing 
        an On Battery OS Shutdown."                       �"Parameter which indicates whether UPS commands received via any 
		 communication path (aside from manual controls) are able (switchable) 
		 or not able (notSwitchable) to control the UPS."                           4"The nominal UPS Output voltage per phase in volts."                       3"The nominal UPS Input voltage per phase in volts."                       7"The nominal UPS available real power output in watts."                       /"The nominal output frequency in tenths of Hz."                      s"Date and time information for the UPS.  Setting this variable
         will initiate a set UPS date and time to this value.  Reading
         this variable will return the UPS time and date.  This value
         is not referenced to sysUpTime.  It is simply the clock value
         from the UPS real time clock.
         Format is as follows: MM/DD/YYYY:HH:MM:SS."                       V"The Lower limit for acceptable Output Voltage, per the UPS
         specifications."                       V"The Upper limit for acceptable Output Voltage, per the UPS
         specifications."                       �"The date when this UPS was installed.  Free text format, so the 
         preferred local date format may be used (MM/DD/YYYY, DD-Mon-YYYY, etc)."                          �"The level of severity of traps which will be sent to the
         requesting host; individual trap receivers will have
         individual values for this variable.  Values are:
         (1) none: no traps will be sent to this host;
         (2) critical: only traps for Critical alarm conditions will
             be sent to this host;
         (3) major: Critical and Major traps will be sent;
         (4) minor: All levels of alarming traps will be sent: Critical, 
             Major, and Minor
            (This level was added in PowerMIB v3.11)
         (5) allTraps: all Traps will be sent to this host
            (Critical, Major, Minor, Informational)."                      i"The type of traps which will be sent to the
         requesting host; individual trap receivers will have
         individual values for this variable.  The additional
         variables in types (3) and (4) are useful for determining
         which UPS is the source on multi-port network adapters,
         and for getting additional descriptive information.
         Types (1) through (4) are all SNMP version 1 trap PDUs.
         Values are:
         (1) stnd: Traps as defined in the Standard UPS MIB (RFC1628)
            and Generic (MIB II) traps as defined in RFC 1215.
         (2) xups: xupsTrapDefined Traps as defined in the PowerMIB
            and Generic (MIB II) traps as defined in RFC 1215.
         (3 Deprecated) stndPlus: same as stnd plus variables from the interface
            group and, where appropriate, xupsTrapMessage.
         (4 Deprecated) xupsPlus: xupsTrapPortN Traps (same as xups plus 
            variables from the interface group) and, 
            for authFail, xupsTrapMessage.
         (5 pxg: Traps as defined in the Power Xpert Gateway MIB
            (PXG-MIB)."                      "A descriptive text message which may be sent with traps to
         further explain the reason for the trap.
         This object is not-accessible to MIB browsers, but had to be changed to
         read-only to satisfy SMIv2 syntax checkers since it is included in traps."             -- actually not-accessible
                     g"The UPS output power will turn off in a number of
    seconds equal to upsControlOutputOffTrapDelay."               --#SEVERITY CRITICAL 
 e"The UPS output power will turn on in a number of
    seconds equal to upsControlOutputOnTrapDelay."               --#SEVERITY INFORMATIONAL
 A"The UPS has no AC input power and is running on 
     battery."               --#SEVERITY MAJOR 
 H"The UPS batteries are low.  Tied to low battery 
    alarm condition."               --#SEVERITY CRITICAL 
 9"Input power has been restored after running on battery."               --#SEVERITY INFORMATIONAL
 9"The battery has recovered from a low battery condition."               --#SEVERITY INFORMATIONAL
 f"The ups has sensed an overload of greater than 
     106 percent.  Tied to the 106% overload alarm."               --#SEVERITY MINOR 
 ~"Some component of the ups - rectifier, inverter,
     control panel has failed.  Tied to alarms indi-
     cating failure."               --#SEVERITY CRITICAL 
 4"The Battery Totally Discharged Alarm has occurred."               --#SEVERITY CRITICAL 
 O"The ups inverter is unavailable or malfunctioning due to an internal failure."               --#SEVERITY CRITICAL 
 -"The ups has gone on bypass for some reason."               --#SEVERITY CRITICAL 
 "The ups bypass is unavailable"               --#SEVERITY MAJOR 
 !"The ups output is switched off."               --#SEVERITY CRITICAL 
 R"The ups input power is incorrect in voltage,
     frequency, or phase rotation."               --#SEVERITY MINOR 
 2"One of the defined building alarms has occurred."               --#SEVERITY MAJOR 
 /"The ups shutdown imminent alarm has occurred."               --#SEVERITY CRITICAL 
 y"The ups is returned to utility power running the inverter 
     after either a transfer to bypass or a run on battery."               --#SEVERITY INFORMATIONAL
 8"One of the UPS breakers or contactors has been opened."               --#SEVERITY MAJOR 
 �"An alarm not defined in the xups Well Known Alarms
     (eg, an alarm defined in RFC1628)
     has been added to the Alarm Table."               --#SEVERITY MAJOR 
 a"An alarm not defined in the xups Well Known Alarms
     has been removed from the Alarm Table."               --#SEVERITY INFORMATIONAL 
 D"One or more batteries have been determined to require replacement."               --#SEVERITY MAJOR 
 ="The UPS has shutdown as requested, i.e., the output is off."               --#SEVERITY INFORMATIONAL 
 ="The result of the last diagnostic test indicates a failure."               --#SEVERITY MINOR 
 ["A problem has been encountered in the communications
     between the agent and the UPS."               --#SEVERITY MAJOR 
 5"An xupsControlOutputOffDelay countdown is underway."               --#SEVERITY MAJOR 
D"A test is in progress, as initiated and indicated by the xupsTest Group.  
     When the test is complete, one of the following traps will be sent:
     - xupstdDiagnosticTestFailed if the test fails,
     - xupstdDiagnosticTestPassed on success, or
     - xupstdAlarmEntryRemoved in other cases (e.g., Test Canceled)."               --#SEVERITY INFORMATIONAL 
 �"The ambient temperature, xupsEnvAmbientTemp, has fallen below 
    the set lower limit, xupsEnvAmbientLowerLimit, or has risen above 
    the set upper limit, xupsEnvAmbientUpperLimit."               --#SEVERITY MAJOR 
�"The Contact indicated by xupsContactIndex is in its Active state.
     The following are the situations that generate this trap:
        For xupsContactType:    and     xupsContactState: 
            normallyOpen(1)     and     closedWithNotice(4)
            normallyClosed(2)   and     openWithNotice(3)
            anyChange(3)        and     openWithNotice(3) or closedWithNotice(4)"               --#SEVERITY MAJOR
 N"The Contact indicated by xupsContactIndex has changed to its Inactive state."               --#SEVERITY INFORMATIONAL
 �"A parallel UPS system is no longer operating in N+1 redundant mode;
       this may be due to module failure or removal, or due to overloading."               --#SEVERITY MINOR 
 ."An internal temperature is out of tolerance."               --#SEVERITY MAJOR 
 L"An uncorrected problem has been detected within the UPS charger subsystem."               --#SEVERITY MAJOR 
 ?"The failure of one or more fans in the UPS has been detected."               --#SEVERITY MAJOR 
 5"The failure of one or more fuses has been detected."               --#SEVERITY CRITICAL 
 ,"A Relay, Contactor, or Breaker has failed."               --#SEVERITY CRITICAL 
 :"One module in a parallel or composite system has failed."               --#SEVERITY MAJOR 
 �"The system is being powered by its Alternate Power Source, such as a 
     Secondary utility feed (on a dual AC input UPS), generator, flywheel, 
     or fuel cell."               --#SEVERITY MINOR 
8"On systems with a separate alternate power source (eg, dual AC inputs), 
     that alternate power source is currently not available.  This could be 
     a problem if the primary power source (eg, utility) fails for a period 
     of time longer than that for which the internal batteries can supply power."               --#SEVERITY MINOR 
 �"Some Notice condition exists which is not covered by the other traps.
     This is like an xupstdInternalFailure, but at a lower severity level."               --#SEVERITY MINOR 
 �"The remote temperature, xupsEnvRemoteTemp, has fallen below 
    the set lower limit, xupsEnvRemoteTempLowerLimit, or has risen above 
    the set upper limit, xupsEnvRemoteTempUpperLimit."               --#SEVERITY MAJOR 
 �"The remote temperature, xupsEnvRemoteHumidity, has fallen below 
    the set lower limit, xupsEnvRemoteHumidityLowerLimit, or has risen above 
    the set upper limit, xupsEnvRemoteHumidityUpperLimit."               --#SEVERITY MINOR 
 �"A periodic status trap message.  It is sent at an interval
    set by object xupsHeartbeatMinsInterval.
    The included variables provide a brief statement of the UPS status."               --#SEVERITY INFORMATIONAL
 �"A diagnostic test just completed, and its result is Passed.
    The included variables provide additional information on the test."               --#SEVERITY INFORMATIONAL
 G"The output condition (other than OutputOverload) is out of tolerance."               --#SEVERITY CRITICAL 
 J"The UPS output is off and the UPS is awaiting the return of input power."               --#SEVERITY MINOR 
 H"The UPS has been placed on Maintenance / Manual Bypass by an operator."               --#SEVERITY MAJOR 
 �"This trap is sent when the SNMP agent first establishes a communication 
     link with the UPS.
     The included variables provide identification and UPS status information."               --#SEVERITY INFORMATIONAL
 �"This trap is sent when the SNMP agent is exiting or closing down gracefully.
     This may be triggered by a signal from the OS to stop this process.  In many
     implementations, it will be followed quickly by a restart of this vital process."         -- OBJECTS   { (none) }
     --#SEVERITY MINOR
 |"How often to send the xupstdHeartbeat trap, in units of minutes.
         A setting of 0 disables the Heartbeat function."                           f"The number of independently controllable Receptacles, as described in the 
         xupsRecepTable."                       r"A list of receptacle table entries.  The number of entries
        is given by the value of xupsNumReceptacles."                       a"A receptacle table entry containing the status and
         control values for one receptacle."                       E"The number of the Receptacle. Serves as index for Receptacle table."                       �"The Recep Status 1=On/Close, 2=Off/Open, 3=On w/Pending Off, 
         4=Off w/Pending ON, 5=Unknown, 6=Reserved for future, 
         7=Failed in Closed position, 8=Failed in Open position."                      �"The Delay until the Receptacle is turned Off.  Setting 
        this value to other than -1 will cause the UPS output to 
        turn off after the number of seconds (0 is immediately).  
        Setting it to -1 will cause an attempt to abort a pending shutdown.
        When this object is set while the UPS is On Battery, it is not necessary
        to set xupsRecepOnDelaySecs, since the outlet will turn back on 
        automatically when power is available again."                      
"The Delay until the Receptacle is turned On.  Setting 
        this value to other than -1 will cause the UPS output to 
        turn on after the number of seconds (0 is immediately).  
        Setting it to -1 will cause an attempt to abort a pending restart."                      }"The delay after going On Battery until the Receptacle is 
        automatically turned Off.  A value of -1 means that this Output should 
        never be turned Off automatically, but must be turned Off only by command.
        Values from 0 to 30 are valid, but probably innappropriate.
        The AutoOffDelay can be used to prioritize loads in the event of a prolonged 
        power outage; less critical loads will turn off earlier to extend battery 
        time for the more critical loads. If the utility power is restored before the 
        AutoOff delay counts down to 0 on an outlet, that outlet will not turn Off."                      j"Seconds delay after the Outlet is signaled to turn On before the Output is
        Automatically turned ON. A value of -1 means that this Output should never
        be turned On automatically, but only when specifically commanded to do so.
        A value of 0 means that the Receptacle should come On immediately
        at power-up or for an On command."                      �"Setting this value will cause the UPS output to turn off 
        after the set number of seconds, then restart (after a UPS-defined
        'down time') when the utility is again available.  
        Unlike xupsRecepOffDelaySecs, which might or might not,
        this object always maps to the XCP 0x8A Load Dump & Restart command,
        so the desired shutdown and restart behavior is guaranteed to happen.
        Once set, this command cannot be aborted."                           �"Value which denotes the type of UPS by its power topology.  Values are the
        same as those described in the XCP Topology block's Overall Topology field."                       �"ID Value which denotes the Powerware model of the UPS for software.  
        Values are the same as those described in the XCP Configuration 
        block's Machine Code field."                      �"Identifies which unit and what type of data is being reported.
        A value of 0 means that this MIB information comes from the top-level system 
        view (eg, manifold module or system bypass cabinet reporting total system 
        output).  Standalone units also use a value of 0, since they are the 'full 
        system' view.
        A value of 1 or higher indicates the number of the module in the system
        which is reporting only its own data in the PowerMIB objects."                      �"Value which denotes which Power Strategy is currently set for the UPS.
        The values are:
        highAlert(1) - The UPS shall optimize its operating state to maximize its 
                power-protection levels.  This mode will be held for at most 24 hours.
        standard(2) - Balanced, normal power protection strategy. UPS will not enter 
                HE operating mode from this setting.
        enableHighEfficiency(3) - The UPS is enabled to enter HE operating mode to 
                optimize its operating state to maximize its efficiency, when 
                conditions change to permit it (as determined by the UPS).
        forceHighEfficiency(4) - If this value is permitted to be Set for this UPS,
                and if conditions permit, requires the UPS to enter High Efficiency 
                mode now, without delay (for as long as utility conditions permit).
                After successfully set to forceHighEfficiency(4), 
                xupsTopoPowerStrategy changes to value enableHighEfficiency(3).
        xupsOutputSource will indicate if the UPS status is actually operating in 
        High Efficiency mode."                           -"The Full set of xupsIdent subgroup objects."                 /"The Full set of xupsBattery subgroup objects."                 -"The Full set of xupsInput subgroup objects."                 2"The Full set of xupsInputTable subgroup objects."                 ."The Full set of xupsOutput subgroup objects."                 3"The Full set of xupsOutputTable subgroup objects."                 ."The Full set of xupsBypass subgroup objects."                 3"The Full set of xupsEnvironment subgroup objects."                 -"The Full set of xupsAlarm subgroup objects."                 7"The Full set of Alarm/Event history subgroup objects."                 ,"The Full set of xupsTest subgroup objects."                 /"The Full set of xupsControl subgroup objects."                 ."The Full set of xupsConfig subgroup objects."                 3"The Full set of xupsTrapControl subgroup objects."                 -"The Full set of xupsRecep subgroup objects."                 0"The Full set of xupsTopology subgroup objects."                 M"The Alarm and Event notifications from the xupsTrapDefined source (xupstd)."                     S"The EMP's Alarm and Event notifications from the xupsTrapDefined source (xupstd)."                     ;"A compliance statement for all of everything in this MIB."               ,"Contains objects which are now deprecated."                         \"The reading of the ambient temperature in the vicinity of the 
        UPS or SNMP agent."                       �"The Lower Limit of the ambient temperature; if xupsEnvAmbientTemp 
        falls below this value, the xupsAmbientTempBad alarm will occur."                       �"The Upper Limit of the ambient temperature; if xupsEnvAmbientTemp 
        rises above this value, the xupsAmbientTempBad alarm will occur.
        This value should be greater than xupsEnvAmbientLowerLimit."                       Y"The reading of the ambient humidity in the vicinity of the 
        UPS or SNMP agent."                      