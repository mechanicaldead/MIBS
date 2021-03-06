     >"Unix time stamp.  Measured in seconds since January 1, 1970."                                             ;"The MIB module for Eaton ATS (Automatic Transfer Switch)." "www.eaton.com" "201407311200Z" "Initial release."                   "The manufacturer name."                       "Device model name."                       "Device F/W version."                       "The released date."                       "Device serial number"                       "Device part number"                        "Communication Card F/W version"                               1"The dephasing in between Source 1 and Source 2."                       !"The table of input information."                       W"The input information of each source input:
		<node>.1   source1
		<node>.2   source2"                       "Index to input."                       7"The input voltage in front of relay. Units are 0.1 V."                       )"The input frequency.  Units are 0.1 Hz."                           &"The output voltage. Units are 0.1 V."                       &"The output current. Units are 0.1 A."                       "The operation mode."                               8"The dephasing status in between Source 1 and Source 2."                       "The table of input status."                       B"The input flow status:
		<node>.1   source1
		<node>.2   source2"                       "Index of input entry."                        "The status of input frequency."                       )"The summarized status of input AC flow."                       %"The internal fault status of input."                       "The status of input voltage."                       "The status of input relay."                           "Output fault."                       "Output powered status."                       "The output overload status."                       "The over temperature status."                       "Short circuit status."                       "Communication failure status."                       "Configuration failure status."                               �"Clock value.  This could be from either a real-time clock (in which case
		 it is likely writeable) or from a time server via NTP (probably read-only).
     (since 1/1/1970 at 1:00:00)."                       -"The present date in MM/DD/YYYY text format."                       +"The present time in hh:mm:ss text format."                       ("The input voltage rating. Unit is 1 V."                       +"The input frequency rating. Unit is 1 Hz."                       )"The output voltage config. Unit is 1 V."                       "The preferred source."                       "The AC Blackout Sensitivity."                       ["behavior configuration when transfering from one source to other source not synchronized."                       "The status of transfer test."                       5"Setting of input brownout low voltage. Unit is 1 V."                       ="Setting of input brownout low derated voltage. Unit is 1 V."                       6"Setting of input brownout high voltage. Unit is 1 V."                       @"Hysteresis between loss point and comeback point. Unit is 1 V."                           -"The reading of an EMP's temperature sensor."                       *"The reading of an EMP's humidity sensor."                       �"The number of Contacts in the ats2ContactSenseTable.
        This object indicates the number of rows in the 
        ats2ContactSenseTable."                       �"A list of Contact Sensing table entries.  
        The number of entries is given by the value of 
        ats2EnvNumContacts."                       T"An entry containing information applicable 
        to a particular Contact input."                       �"The Contact identifier; identical to the Contact Number.
        This object is not-accessible to MIB browsers, but had to be changed to
        read-only to satisfy SMIv2 syntax checkers if it is included in traps."             -- actually not-accessible
        �"The normal state for this contact.  The 'other' (not 'Normally')
        state is the Active state for generating the ats2tdContactActiveNotice
        trap.  If anyChange(3) is selected, then this trap is sent
        any time the contact changes to either Open or Closed.
        No traps are sent if the Contact is set to notUsed(4).
        In many cases, the configuration for Contacts may be done by other 
        means, so this object may be read-only."                      F"The current state of the Contact input;
        the value is based on the open/closed input state 
        and the setting for ats2ContactType.
        When entering the openWithNotice(3) and closedWithNotice(4) 
        states, no entries added to the ats2AlarmTable, but
        the ats2tdContactActiveNotice trap is sent."                       ["A label identifying the Contact.  This object should be
        set by the administrator."                       �"The Lower Limit of the EMP temperature; if ats2EnvRemoteTemp 
        falls below this value, the ats2RemoteTempBad alarm will occur."                       �"The Upper Limit of the EMP temperature; if ats2EnvRemoteTemp 
        rises above this value, the ats2RemoteTempBad alarm will occur.
        This value should be greater than ats2EnvRemoteTempLowerLimit."                       �"The Lower Limit of the EMP humidity reading; if ats2EnvRemoteHumidity
        falls below this value, the ats2RemoteHumidityBad alarm will occur."                       �"The Upper Limit of the EMP humidity reading; if ats2EnvRemoteHumidity 
        rises above this value, the ats2RemoteHumidityBad alarm will occur.
        This value should be greater than ats2EnvRemoteHumidityLowerLimit."                           $"Communication with the ATS failed."                 '"Communication with the ATS recovered."                 "The ATS powers the load."                 #"The ATS does not powers the load."                 )"The ATS has sensed a critical overload."                 $"The critical overload disappeared."                 C"The ATS has an internal failure (sum of all HW internal failure)."                 '"The ATS internal failure disappeared."                 "Source 1 returns to normal."                 "Source 1 out of range."                 "Source 2 returns to normal."                 "Source 2 out of range."                 1"Source 1 and Source 2 phase are desynchronized."                 /"Source 1 and Source 2 phase are synchronized."                 "Source 1 powers the output."                 "Source 2 powers the output."                 t"The remote temperature, ats2EnvRemoteTemp, has fallen below 
    the set lower limit, ats2EnvRemoteTempLowerLimit."               --#SEVERITY MAJOR 
 s"The remote temperature, ats2EnvRemoteTemp, has risen above 
    the set upper limit, xupsEnvRemoteTempUpperLimit."               --#SEVERITY MAJOR 
 z"The remote temperature, ats2EnvRemoteTemp, is inside the interval
       defined by the lower limit and the upper limit."               --#SEVERITY MAJOR 
 y"The remote humidity, ats2EnvRemoteHumidity, has fallen below 
    the set lower limit, ats2EnvRemoteHumidityLowerLimit."               --#SEVERITY MAJOR 
 x"The remote humidity, ats2EnvRemoteHumidity, has risen above 
    the set upper limit, ats2EnvRemoteHumidityUpperLimit."               --#SEVERITY MAJOR 
 {"The remote humidity, ats2EnvRemoteHumidity, is inside the interval
       defined by the lower limit and the upper limit."               --#SEVERITY MAJOR 
h"The Contact 1 is in its Active state.
     The following are the situations that generate this trap:
        For ats2ContactType:    and     ats2ContactState: 
            normallyOpen(1)     and     closedWithNotice(4)
            normallyClosed(2)   and     openWithNotice(3)
            anyChange(3)        and     openWithNotice(3) or closedWithNotice(4)"               --#SEVERITY MAJOR
 2"The Contact 1 has changed to its Inactive state."               --#SEVERITY INFORMATIONAL
h"The Contact 2 is in its Active state.
     The following are the situations that generate this trap:
        For ats2ContactType:    and     ats2ContactState: 
            normallyOpen(1)     and     closedWithNotice(4)
            normallyClosed(2)   and     openWithNotice(3)
            anyChange(3)        and     openWithNotice(3) or closedWithNotice(4)"               --#SEVERITY MAJOR
 2"The Contact 2 has changed to its Inactive state."               --#SEVERITY INFORMATIONAL
 H"Sent whenever the trap test feature is used by the communication card."               --#SEVERITY INFORMATIONAL
