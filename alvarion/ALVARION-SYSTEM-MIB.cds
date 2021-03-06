A-- ****************************************************************************
--  ALVARION-SYSTEM-MIB definitions
--
--  Copyright (c) 2007, Alvarion Ltd.
--  All Rights Reserved.
--
--  Generic system information for Alvarion devices.
--
-- ****************************************************************************
                                                         2"Generic system information for Alvarion devices." �"Alvarion Ltd.
                     Postal: 21a HaBarzel St.
                             P.O. Box 13139
                             Tel-Aviv 69710
                             Israel
                     Phone:  +972 3 645 6262"                       '"Alvarion product name for the device."                       )"Revision number of the device firmware."                       ,"Revision number of the device boot loader."                       )"Revision number of the system hardware."                       "Device serial number."                       �"User-defined string to identify the current device
                 configuration. This string could be anything in printable
                 ASCII characters."                       �"How long the system has been running since its last restart. 
                 When this counter reaches its maximum value, it wraps
                 around and starts increasing again from zero."                       x"MAC address of the device. This information is 
                 only returned in a systemHeartbeatNotification event."                       �"IP address of the device WAN port. This information is 
                 only returned in a systemHeartbeatNotification event."                       c"The product flavor can extends or alter the
                 functionality of a Alvarion product."                       *"Manufacturing Ethernet base MAC address."                          O"Specifies the method and format used to set the system time.

                  'manual': Operator must configures the system time
                            parameters manually in the GMT zone.

                  'sntpUdp': Look for time servers in the
                             systemTimeServerTable in order to synchronize
                             the device system time using SNTP.

                  'tp': Look for time servers in the systemTimeServerTable
                        in order to synchronize the device system time using
                        the Time Protocol."                       �"Indicates if the system time is lost after rebooting or not.
                   'true': Indicates that the system time has been lost,
                   'false': Indicates that the system time has been kept."                       �"Specifies if the system time need to be adjusted to compensate
                 for daylight savings.

                  'true': Adjusts the system time by adding one hour.

                  'false': Keep the current system time."                      r"Specifies the current GMT system date when 
                systemTimeUpdateMode attribute is set to 'manual' mode.
                Reading this attributes will return the current date.

                Specify year (1995-3000), month (01-12), and day (01-31)
                in the format YYYY/MM/DD. The '/' character is mandatory
                between the fields."                      0"Specifies the current GMT system time when 
                 systemTimeUpdateMode attribute is set to 'manual' mode.
                 Specify hour (00-24), minutes (00-59), and seconds (00-59)
                 in the format HH:MM:SS. The ':' character is mandatory 
                 between the fields."                      �"Specifies the current system time zone in the 
                 relation to UTC. Specify the direction from UTC (+ or -),
                 hours from UTC (00-14 or 00-12), and minutes from UTC
                 (00 or 30) in the format +/-HH:MM.

                 The '+' or '-' character is mandatory at the beginning
                 of the expression. The ':' character is mandatory between 
                 the time fields."                       �"A table containing the list of SNTP time servers that can
                 be used to synchronize the device system time. In tabular
                 form to allow multiple instances on an agent."                       �"A SNTP time server used to get the device time.
                 systemTimeServerIndex - Uniquely identifies a time server in
                                         the table."                       8"Index of the time server in the systemTimeServerTable."                       �"Specifies the DNS name or IP address of the time server to use.
                 Setting an entry to a null string will delete the entry."                       ="Specifies if timeServerFailure notifications are generated."                          !"Specifies if administrator authentication is performed
                 locally or via an AAA server. You must have configured an 
                 AAA profile and the adminAccessAuthenProfileIndex attribute 
                 before you can select a profile or an error will be returned."                      4"Specifies the AAA profile to be used in order to
                 authenticate the administrator. This parameter
                 only applies when the adminAccessAuthenMode
                 is set to 'profile'. When the special value zero is 
                 specified, no AAA server profile is selected."                       �"Specifies the number of successive unsuccessful authentications
                 that must occur to generate an
                 adminAccessAuthFailureNotification event."                       �"Specifies the duration when further login attempts are blocked
                 after adminAccessMaxLoginAttempts has been reached.
                 Setting this value to zero disables the lock out
                 feature."                       �"Specifies if an adminAccessLoginNotification event is generated
                 after an administrator is successfully authenticated."                       �"Specifies if an adminAccessAuthFailureNotification event is
                 generated when the number of successive unsuccessful
                 authentications attempts exceed the value of
                 adminAccessMaxLoginAttempts."                       �"Contains various information about the administrator.
                 This parameter is used in the adminAccessAuthFailureNotification
                 event to return the administrator status to a management system."                       �"This table handles the profile of several administrator users.
                 In tabular form in order to allow multiple instances on an
                 agent."                       Y"An administrator profile configured in the administrator
                 access table."                       3"Specifies the index of the administrator profile."                       /"Specifies the user name of the administrator."                       V"Specifies the administrative rights of this specific
                 administrator."                       �"Specifies if an adminAccessLogoutNotification event is generated
                 after an administrator logs out from the web interface."                           ~"Specifies the delay between 2 heartbeat notifications.
                 The range of this parameter is 30 seconds to 1 year."                       Q"Specifies if systemHeartbeatNotification events are
                 generated."                               5"Sent after an administrator authentication failure."                 <"Sent after an administrator is successfully authenticated."                 "Sent at system boot up."                 "Sent every heartbeatPeriod."                 )"Sent after an administrator has logout."                 B"Sent when a time server of the system time table is unreachable."                         a"The compliance statement for entities which implement the
                 Alvarion System MIB."                   >"A collection of objects providing the System MIB capability."                 g"A collection of objects providing the administrator access
                 configuration capability."                 )"A collection of supported notifications"                     )"A collection of supported notifications"                     )"A collection of supported notifications"                            