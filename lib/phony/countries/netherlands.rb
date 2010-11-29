# The Netherlands use a variable-length ndc code, thus we use a separate file to not let all_other.rb explode.
#
# Note: The netherlands use a variable ndc format from length 2 to 3.
#       To save space, we only use ndcs of length 2 (and use the fallback of 3 to handle the rest).
#
Phony::Countries::Netherlands = Phony::Country.configured :local_format => [8], # 8 is for mobile numbers, other numbers will work as well (they use 7).
                                                          :ndc_fallback_length => 3,
                                                          :ndc_mapping => {
                                                            :landline => [
                                                                          '10', # Rotterdam
                                                                          '13', # Tilburg
                                                                          '14', # KPN
                                                                          '15', # Delft
                                                                          '20', # Amsterdam
                                                                          '23', # Haarlem
                                                                          '24', # Nijmegen
                                                                          '26', # Arnhem
                                                                          '30', # Utrecht
                                                                          '33', # Amersfoort
                                                                          '35', # Hilversum
                                                                          '36', # Almere
                                                                          '38', # Zwolle
                                                                          '40', # Eindhoven
                                                                          '43', # Maastricht
                                                                          '45', # Heerlen
                                                                          '46', # Sittard
                                                                          '50', # Groningen
                                                                          '53', # Enschede
                                                                          '55', # Apeldoorn
                                                                          '58', # Leeuwarden
                                                                          '70', # Den Haag
                                                                          '71', # Leiden
                                                                          '72', # Alkmaar
                                                                          '73', # 's-Hertogenbosch
                                                                          '74', # Hengelo
                                                                          '75', # Zaanstad
                                                                          '76', # Breda
                                                                          '77', # Venlo
                                                                          '78', # Dordrecht
                                                                          '79', # Zoetermeer
                                                                         ],
                                                            :mobile => [ # TODO Check.
                                                                        '6' # Mobiele nummers en Semafoondiensten
                                                                       ],
                                                            :service => [ # TODO Check.
                                                                         '84',  # Persoonlijke-assistentdiensten, zoals voicemail en faxmail
                                                                         '85',  # Plaatsonafhankelijk netnummer
                                                                         '87',  # Both of the above.
                                                                         '88',  # Bedrijfsnummers
                                                                         '91',  # Plaatsonafhankelijk netnummer
                                                                         '676', # Inbelnummers van Internetproviders
                                                                         '800', # Gratis informatienummers
                                                                         '900', # Betaalde informatienummers
                                                                         '906', # Betaalde informatienummers
                                                                         '909', # Betaalde informatienummers
                                                                        ]
                                                          }