b-- $Id: SNMP-FRAMEWORK-MIB.txt,v 1.3 2000/07/14 08:15:08 hyung Exp $
-- From: RFC 2271
-- Changes: 
--      Updated formating of quoted text.
--      Updated LAST-UPDATED clause of MODULE-IDENTITY.
--      Added copyright to MODULE-IDENTITY description.
--      Added REVISION clause to MODULE-IDENTITY.
--
-- dperkins@snmpinfo.com: 18-apr-1998
  -"An identifier that uniquely identifies a
                 securityModel of the Security Subsystem within the
                 SNMP Management Architecture.

                 The values for securityModel are allocated as
                 follows:

                   - The zero value is reserved.
                   - Values between 1 and 255, inclusive, are reserved
                     for standards-track Security Models and are
                     managed by the Internet Assigned Numbers Authority
                     (IANA).
                   - Values greater than 255 are allocated to
                     enterprise-specific Security Models.  An
                     enterprise-specific securityModel value is defined
                     to be:

                     enterpriseID * 256 + security model within enterprise

                   For example, the fourth Security Model defined by
                   the enterprise whose enterpriseID is 1 would be
                   260.

                 This scheme for allocation of securityModel
                 values allows for a maximum of 255 standards-
                 based Security Models, and for a maximum of
                 255 Security Models per enterprise.

                 It is believed that the assignment of new
                 securityModel values will be rare in practice
                 because the larger the number of simultaneously
                 utilized Security Models, the larger the
                 chance that interoperability will suffer.
                 Consequently, it is believed that such a range
                 will be sufficient.  In the unlikely event that
                 the standards committee finds this number to be
                 insufficient over time, an enterprise number
                 can be allocated to obtain an additional 255
                 possible values.

                 Note that the most significant bit must be zero;
                 hence, there are 23 bits allocated for various
                 organizations to design and define non-standard
                 securityModels.  This limits the ability to
                 define new proprietary implementations of Security
                 Models to the first 8,388,608 enterprises.

                 It is worthwhile to note that, in its encoded
                 form, the securityModel value will normally
                 require only a single byte since, in practice,
                 the leftmost bits will be zero for most messages
                 and sign extension is suppressed by the encoding
                 rules.

                 As of this writing, there are several values
                 of securityModel defined for use with SNMP or
                 reserved for use with supporting MIB objects.
                 They are as follows:

                     0  reserved for 'any'
                     1  reserved for SNMPv1
                     2  reserved for SNMPv2c
                     3  User-Based Security Model (USM)
                "              u"An identifier that uniquely identifies a Messa\ge
                 Processing Model of the Message Processing
                 Subsystem within a SNMP Management Architecture.

                 The values for messageProcessingModel are
                 allocated as follows:

                   - Values between 0 and 255, inclusive, are
                     reserved for standards-track Message Processing
                     Models and are managed by the Internet Assigned
                     Numbers Authority (IANA).
                   - Values greater than 255 are allocated to
                     enterprise-specific Message Processing Models.
                     An enterprise messageProcessingModel value is
                     defined to be:

                     enterpriseID * 256 +
                        messageProcessingModel within enterprise

                     For example, the fourth Message Processing Model
                     defined by the enterprise whose enterpriseID
                     is 1 would be 260.

                 This scheme for allocation of securityModel
                 values allows for a maximum of 255 standards-
                 based Message Processing Models, and for a
                 maximum of 255 Message Processing Models per
                 enterprise.

                 It is believed that the assignment of new
                 messageProcessingModel values will be rare
                 in practice because the larger the number of
                 simultaneously utilized Message Processing Models,
                 the larger the chance that interoperability
                 will suffer. It is believed that such a range
                 will be sufficient.  In the unlikely event that
                 the standards committee finds this number to be
                 insufficient over time, an enterprise number
                 can be allocated to obtain an additional 256
                 possible values.

                 Note that the most significant bit must be zero;
                 hence, there are 23 bits allocated for various
                 organizations to design and define non-standard
                 messageProcessingModels.  This limits the ability
                 to define new proprietary implementations of
                 Message Processing Models to the first 8,388,608
                 enterprises.

                 It is worthwhile to note that, in its encoded
                 form, the securityModel value will normally
                 require only a single byte since, in practice,
                 the leftmost bits will be zero for most messages
                 and sign extension is suppressed by the encoding
                 rules.

                 As of this writing, there are several values of
                 messageProcessingModel defined for use with SNMP.
                 They are as follows:

                     0  reserved for SNMPv1
                     1  reserved for SNMPv2c
                     2  reserved for SNMPv2u and SNMPv2*
                     3  reserved for SNMPv3
                "              �"A Level of Security at which SNMP messages can be
                 sent or with which operations are being processed;
                 in particular, one of:

                   noAuthNoPriv - without authentication and
                                  without privacy,
                   authNoPriv   - with authentication but
                                  without privacy,
                   authPriv     - with authentication and
                                  with privacy.

                 These three values are ordered such that
                 noAuthNoPriv is less than authNoPriv and
                 authNoPriv is less than authPriv.
                "              �"An SNMP engine's administratively-unique identifier.

                 The value for this object may not be all zeros or
                 all 'ff'H or the empty (zero length) string.

                 The initial value for this object may be configured
                 via an operator console entry or via an algorithmic
                 function.  In the latter case, the following
                 example algorithm is recommended.

                 In cases where there are multiple engines on the
                 same system, the use of this algorithm is NOT
                 appropriate, as it would result in all of those
                 engines ending up with the same ID value.

                 1) The very first bit is used to indicate how the
                    rest of the data is composed.

                    0 - as defined by enterprise using former methods
                        that existed before SNMPv3. See item 2 below.

                    1 - as defined by this architecture, see item 3
                        below.

                    Note that this allows existing uses of the
                    engineID (also known as AgentID [RFC1910]) to
                    co-exist with any new uses.

                 2) The snmpEngineID has a length of 12 octets.

                    The first four octets are set to the binary
                    equivalent of the agent's SNMP management
                    private enterprise number as assigned by the
                    Internet Assigned Numbers Authority (IANA).
                    For example, if Acme Networks has been assigned
                    { enterprises 696 }, the first four octets would
                    be assigned '000002b8'H.

                    The remaining eight octets are determined via
                    one or more enterprise-specific methods. Such
                    methods must be designed so as to maximize the
                    possibility that the value of this object will
                    be unique in the agent's administrative domain.
                    For example, it may be the IP address of the SNMP
                    entity, or the MAC address of one of the
                    interfaces, with each address suitably padded
                    with random octets.  If multiple methods are
                    defined, then it is recommended that the first
                    octet indicate the method being used and the
                    remaining octets be a function of the method.

                 3) The length of the octet strings varies.

                    The first four octets are set to the binary
                    equivalent of the agent's SNMP management
                    private enterprise number as assigned by the
                    Internet Assigned Numbers Authority (IANA).
                    For example, if Acme Networks has been assigned
                    { enterprises 696 }, the first four octets would
                    be assigned '000002b8'H.

                    The very first bit is set to 1. For example, the
                    above value for Acme Networks now changes to be
                    '800002b8'H.

                    The fifth octet indicates how the rest (6th and
                    following octets) are formatted. The values for
                    the fifth octet are:

                      0     - reserved, unused.

                      1     - IPv4 address (4 octets)
                              lowest non-special IP address

                      2     - IPv6 address (16 octets)
                              lowest non-special IP address

                      3     - MAC address (6 octets)
                              lowest IEEE MAC address, canonical
                              order

                      4     - Text, administratively assigned
                              Maximum remaining length 27

                      5     - Octets, administratively assigned
                              Maximum remaining length 27

                      6-127 - reserved, unused

                    127-255 - as defined by the enterprise
                              Maximum remaining length 27
                "              �"An octet string containing administrative
                 information, preferably in human-readable form.

                 To facilitate internationalization, this
                 information is represented using the ISO/IEC
                 IS 10646-1 character set, encoded as an octet
                 string using the UTF-8 transformation format
                 described in [RFC2044].

                 Since additional code points are added by
                 amendments to the 10646 standard from time
                 to time, implementations must be prepared to
                 encounter any code point from 0x00000000 to
                 0x7fffffff.

                 The use of control codes should be avoided.

                 When it is necessary to represent a newline,
                 the control code sequence CR LF should be used.

                 The use of leading or trailing white space should
                 be avoided.

                 For code points not directly supported by user
                 interface hardware or software, an alternative
                 means of entry and display, such as hexadecimal,
                 may be provided.

                 For information encoded in 7-bit US-ASCII,
                 the UTF-8 encoding is identical to the
                 US-ASCII encoding.

                 Note that when this TC is used for an object that
                 is used or envisioned to be used as an index, then
                 a SIZE restriction must be specified so that the
                 number of sub-identifiers for any object instance
                 does not exceed the limit of 128, as defined by
                 [RFC1905].
                "                                        �"The SNMP Management Architecture MIB
    
   Copyright (C) The Internet Society (1998). All Rights Reserved.

   This document and translations of it may be copied and furnished to
   others, and derivative works that comment on or otherwise explain it
   or assist in its implementation may be prepared, copied, published
   and distributed, in whole or in part, without restriction of any
   kind, provided that the above copyright notice and this paragraph
   are included on all such copies and derivative works.  However, this
   document itself may not be modified in any way, such as by removing
   the copyright notice or references to the Internet Society or other
   Internet organizations, except as needed for the purpose of
   developing Internet standards in which case the procedures for
   copyrights defined in the Internet Standards process must be
   followed, or as required to translate it into languages other than
   English.

   The limited permissions granted above are perpetual and will not be
   revoked by the Internet Society or its successors or assigns.

   This document and the information contained herein is provided on an
   'AS IS' basis and THE INTERNET SOCIETY AND THE INTERNET ENGINEERING
   TASK FORCE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
   BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION
   HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF
   MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE."`"WG-email:   snmpv3@tis.com
                  Subscribe:  majordomo@tis.com
                              In message body:  subscribe snmpv3

                  Chair:      Russ Mundy
                              Trusted Information Systems
                  postal:     3060 Washington Rd
                              Glenwood MD 21738
                              USA
                  email:      mundy@tis.com
                  phone:      +1 301-854-6889

                  Co-editor   Dave Harrington
                              Cabletron Systems, Inc.
                  postal:     Post Office Box 5005
                              Mail Stop: Durham
                              35 Industrial Way
                              Rochester, NH 03867-5005
                              USA
                  email:      dbh@ctron.com
                  phone:      +1 603-337-7357

                  Co-editor   Randy Presuhn
                              BMC Software, Inc.
                  postal:     1190 Saratoga Avenue
                              Suite 130
                              San Jose, CA 95129
                              USA
                  email:      rpresuhn@bmc.com
                  phone:      +1 408-556-0720

                  Co-editor:  Bert Wijnen
                              IBM T.J. Watson Research
                  postal:     Schagen 33
                              3461 GL Linschoten
                              Netherlands
                  email:      wijnen@vnet.ibm.com
                  phone:      +31 348-432-794
                 " "9801230000Z" "9711200000Z"7"Correction of a clerical error to the OID value
            assigned to the MODULE-IDENTITY. (This affects the
            OID values assigned to items in this MB module.)
            The old value was { snmpModules 2 }.
            The new value is { snmpModules 10 }.
            Published in RFC 2271." O"The initial version of this MIB module was published
            in RFC 2261"       -- 23 January 1998
           �"Registration point for standards-track
                  authentication protocols used in SNMP Management
                  Frameworks."               q"Registration point for standards-track privacy
                  protocols used in SNMP Management Frameworks."                       6"An SNMP engine's administratively-unique identifier."                       �"The number of times that the SNMP engine has
                 (re-)initialized itself since its initial
                 configuration."                       l"The number of seconds since the SNMP engine last
                 incremented the snmpEngineBoots object."                      >"The maximum length in octets of an SNMP message
                 which this SNMP engine can send or receive and
                 process, determined as the minimum of the maximum
                 message size values supported among all of the
                 transports available to and supported by the engine."                               p"The compliance statement for SNMP engines which
                 implement the SNMP Management Framework MIB."                   �"A collection of objects for identifying and
                 determining the configuration and current timeliness
                 values of an SNMP engine."                    