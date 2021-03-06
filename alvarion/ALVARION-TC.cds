/-- ****************************************************************************
--  ALVARION-TC definitions
--
--  Copyright (c) 2007, Alvarion Ltd.
--  All Rights Reserved.
--
--  Textual Conventions for Alvarion MIBs.
--
-- ****************************************************************************
  "Specifies the generation of notification traps.
                 
                   enable: Enable the generation of the associated
                           notification.

                   disable: Disables the generation of the associated
                            notification"               �"A server index refers to an entry in the AAA server table.
                 When the special value Zero is specified, no AAA
                 server is selected."               >"A profile index refers to an entry in the AAA profile table."               ["An enumeration of the different data rates supported on a per
                 VAP basis."              >"An enumeration of the different Security modes allowed
                 in the Alvarion products.

                 NOTE: 'unknown'- Could not identify the protection mode.
                       'none'   - No wireless protection.
                       'wep'    - WEP (static keys).
                       'ieee802dot1x' - 802.1x no encryption.
                       'ieee802dot1xWithWep' - 802.1x + WEP (dynamic keys).
                       'wpa'    - 802.1x + TKIP + Key source AAA profile.
                       'wpaPsk' - 802.1x + TKIP + Key Source Pre-Shared Key."               �"An enumeration of the different queues supported in the
                 QOS and Bandwidth control feature of the Alvarion products."               �"A profile index refers to an entry in the AAA profile table.
                 When the special value Zero is specified, no AAA
                 server profile is selected."              ,"Specifies the authentication mode to be used.

                   none: Users are not allowed to login.

                   local: The authentication is done locally from the
                          device local database information.

                   profile: An AAA profile is used in order to retrieve
                            the authentication parameters.

                   localAndProfile: The authentication is done locally
                                    first. If it fails an AAA profile
                                    is used."               �"A generic service set identifier (SSID) convention is defined
                 here and used throughout the Alvarion proprietary MIBs. This
		 specific textual convention is used for inputing SSIDs."               <"A server index refers to an entry in the AAA server table."               ]"An enumeration of the different radio types used in
                 the Alvarion products."               �"A generic service set identifier (SSID) convention is defined
                 here and used throughout the Alvarion proprietary MIBs. This
		 specific textual convention is used when displaying SSIDs."               �"Specifies the authentication type to be used.

                   mac: Users authenticated using their MAC addresses.

		       ieee802dot1x: Users authenticated through 802.1x.

		       html: Users authenticated with html."              3"Specifies the authentication mode to be used.

                  local: The authentication is done locally from the
                         device local database information.

                  profile: An AAA profile is used in order to retrieve
                           the authentication parameters."                             c"This module defines the Textual Conventions used in
                    Alvarion enterprise MIBs." �"Alvarion Ltd.
                     Postal: 21a HaBarzel St.
                             P.O. Box 13139
                             Tel-Aviv 69710
                             Israel
                     Phone:  +972 3 645 6262"              