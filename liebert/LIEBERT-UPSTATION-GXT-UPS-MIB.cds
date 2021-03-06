 �--  Title:    LIEB_GXT.MIB
--  Version:  v1.0
--  Date:     03/05/97 03:00pm
--
--  Copyright @ 1994-97 Liebert Corporation.  All rights reserved worldwide.
--
--  This MIB defines objects for all Liebert UPS SNMP Agents.
--
                 v"An lcUpsLowBatteryShutdownTrap signifies that the
 			 UPS has shut off the output due to a Low
			 Battery state."             m"An lcUpsOutputOverVoltageTrap signifies that the
			 UPS has detected that the output voltage is too high."             �"An lcUpsOverloadWarningTrap signifies that the UPS
			 has detected an Overload condition where the output
			 load has exceeded the UPS's rated capacity."             �"An lcUpsOverloadShutdownTrap signifies that the
			 UPS has detected an Overload condition where the
			 output load has exceeded the UPS's rated capacity
			 and has shut off the output."             d"An lcUpsUtilPowerFailedTrap signifies that the
 			 utility power input to the UPS has been lost."             }"An lcUpsOutputOnTrap is sent when the UPS
			 turns all of its output back on, either at the
			 inverter or via a relay."             �"An lcUpsOverTempShutdownTrap signifies that the
			 UPS has detected a excessive temperature condition
			 and shut off the output."             |"An ldUpsInputFreqErrorTrap signifies that
		 the UPS has detected that input frequency is outside
		 tolerable variance."             ]"An lcUpsLowBatteryWarningTrap signifies that the
 			 UPS has entered a Low Battery state."             h"An lcUpsInputOverVoltageTrap signifies that the
 			 UPS has detected a high input voltage condition."             �"An lcUpsOutputOnWarningTrap is sent when the
			 lcUpsControlOutputOnDelay reaches the value of
			 lcUpsControlOutputOnTrapDelay."             �"An lcUpsOutputOffWarningTrap is sent when the
			 lcUpsControlOutputOffDelay reaches the value of
			 lcUpsControlOutputOffTrapDelay."             j"An lcUpsUnixShutodwnTrap is sent 2 seconds before
 			 the UPS is scheduled to perform a Unix Shutdown."             S"An lcUpsOnBatteryTrap signifies that the
 			 UPS is currently on Battery Power."             T"An Alarm condition has occurred and is being reported
			 in the lcUpsAlarmTable."             �"An lcUpsUnixShutdownWarningTrap is sent when the
			 lcUpsControlUnixShudownDelay reaches the value of
			 lcUpsControlUnixShutdownTrapDelay."             z"An lcUpsOutputOffTrap is sent when the UPS
			 turns all of its output off, either at the
			 inverter or via a relay."             d"An lcUpsUtilPowerRestoredTrap signifies that the
 			 utility power has been restored to the UPS."             i"An lcUpsOverTempWarningTrap signifies that the
			 UPS has detected a excessive temperature condition."                                                                 "The UPS manufacturer."                       "The UPS Model designation."                       &"The UPS SNMP Agent software version."                      V"A reference to MIB definitions specific to the
                      particular UPS being managed. This object is
                      used to locate the product-specific MIB for this
                      device.

                      If this information is not present, its value
                      should be the OBJECT IDENTIFIER { 0 0 },
                      which is a syntactically valid object identifier,
                      and any conformant implementation of ASN.1 and BER
                      must be able to generate and recognize this
                      value."                       )"The firmware revision level of the UPS."                       "The serial number of the UPS."                       %"The date of manufacture of the UPS."                           e"The estimated time to depletion of battery charge.
                      (Unit of measure: Minute)"                       M"The current battery voltage. (Unit of measure:
                      volt)"                       W"The current battery capacity in percentage of
                      total available."                           N"The current input frequency. (Unit of measure:
                      Hertz)"                       �"The number of input lines utilized in this
                      device. This entry indicates the number of rows in
                      the input table."                                                                       "The input Line."                       ,"The input voltage. (Unit of measure: Volt)"                           O"The current output frequency. (Unit of measure:
                      Hertz)"                       %"The current output load percentage."                       �"The number of output lines utilized in this
                      device. This entry indicates the number of rows in
                      the output table."                                                                       "The output Line."                       -"The output voltage. (Unit of measure: Volt)"                       ,"The output current. (Unit of measure: Amp)"                       "The output power in watts."                           _"The state of the inverter.  Unknown is returned if
		       the state can not be determined."                           )"The current number of alarm conditions."                                                                       �"A unique identifier for an alarm condition. This
                      value must remain constant between agent
		      initializations."                       �"A reference to an alarm description object. The
                      object referenced should not be accessible, but
                      rather be used to provide a unique description of
                      the alarm condition."                       Q"The value of sysUpTime when the alarm condition
                      occured."                                                                                              0"Setting this variable to 'start' will initiate
                      the battery test. Setting this variable to 'abort'
                      will stop the battery test if the test is in-
                      progress, otherwise it has no effect. Setting this
		      variable to 'unknown' has no effect.  Reading this
                      variable will always result in a return value of
		      'unknown'. If 'lcUpsTestBatteryStatus' is 'failed'
		      the test may not be performed again and the status
		      will remain in the failure state."                       !"The status of the battery test."                          }"Setting this object causes the agent to instruct
		       the UPS to turn off the output after the indicated
		       number of seconds.  The agent counts down the number
		       of seconds until the event will take place.  The
		       agent issues an lcUpsOutputOffTrap when the countdown
		       finishes.  Note that different models have different
	  	       clock resolutions, usually greater than 1 second.  As
		       a result, the command will only be accurate to the
		       resolution of the UPS's clock.

		       The command can be cancelled by setting
		       lcUpsControlCancelCommand to the value cancel."                      {"Setting this object causes the agent to instruct
		       the UPS to turn on the output after the indicated
		       number of seconds.  The agent counts down the number
		       of seconds until the event will take place.  The
		       agent issues an lcUpsOutputOnTrap when the countdown
		       finishes.  Note that different models have different
	  	       clock resolutions, usually greater than 1 second.  As
		       a result, the command will only be accurate to the
		       resolution of the UPS's clock.

		       The command can be cancelled by setting
		       lcUpsControlCancelCommand to the value cancel."                       �"When 'lcUpsControlOutputOffDelay' reaches a value
                      less than or equal to this object's value, an
		      lcUpsOutputOffWarningTrap will be produced and this
		      object will be reset to 0."                       �"When 'lcUpsControlOutputOnDelay' reaches a value
                      less than or equal to this object's value, an
		      lcUpsOutputOnWarningTrap will be produced and this
		      object will be reset to 0."                      "Setting this object causes the agent to instruct
		       the UPS to perform a UNIX Shutdown in the indicated
		       number of seconds.  The agent counts down the number
		       of seconds until the event will take place.  A Unix
		       shutdown is only valid if the UPS is on Battery.
		       During a UNIX Shutdown, the UPS will turn off the
		       output even if the Utility comes back on line before
		       the shutdown time arrives.  Note that different models
		       have different clock resolutions, usually greater
		       than 1 second.  As a result, the command will only
		       be accurate to the resolution of the UPS's clock.

		       The command can be cancelled by setting
		       lcUpsControlCancelCommand to the value 'cancel'."                       �"When 'lcUpsControlUnixShutdownDelay' reaches a value
                      less than or equal to this object's value, an
		      lcUpsUnixShutdownWarningTrap will be produced and
		      this object will be reset to 0."                       �"Setting this variable to 'cancel' will cause the
		       agent to issue instructions to the UPS to cancel all
		       outstanding commands, such as lcUpsControlOutputOff,
		       lcUpsControlOutputOn, lcUpsControlUnixShutdown."                      "Setting this object causes the agent to reboot after
		       the indicated number of seconds have expired.  The
		       value will count down until the event takes place.

		       The command can be cancelled by setting
		       lcUpsControlCancleCommand to the value cancel."                           L"The nominal output voltage. (Unit of measure:
                      volt)"                       K"The nominal input voltage. (Unit of measure:
                      volt)"                       O"The nominal output frequency. (Unit of measure:
                      Hertz)"                       N"The nominal input frequency. (Unit of measure:
                      Hertz)"                       "The nominal Volt-Amp rating."                       J"The nominal power rating. (Unit of measure:
                      watt)"                           0"Indicates that the UPS is currently on bypass."                       O"The current bypass frequency. (Unit of measure:
                      Hertz)"                       �"The number of bypass lines utilized in this
                      device. This entry indicates the number of rows in
                      the bypass table."                                                                       "The bypass Line."                       -"The bypass voltage. (Unit of measure: Volt)"                           "Indicates the UPS topology."                       0"Indicates if a bypass is installed in the UPS."                       f"A number identifying how many multi-module UPS are
		      connected to the System Control Cabinet."                      Z"The requested state of the audible alarm.  When in
                      the disabled state, the audible alarm should never
                      sound.  The enabled state is self-describing.  Setting
                      this object to muted(3) when the audible alarm is
                      sounding shall temporarily silence the alarm."                       �"The value of lcUpsBatTimeRemaining at which a
                      lowBatteryWarning condition is declared.
		      (Unit of measure: Minute)"                      ="Setting this object will start the output after the
                      indicated number of ticks (1 tick = 10 seconds),
		      including starting the UPS, if necessary.  Setting this
		      object to 0 will cause the startup to occur immediately.
		      Setting this object to -1 will disable autorestart."                                          