package ONVIF::Media::Types::SupportedAnalyticsModules;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %AnalyticsModuleContentSchemaLocation_of :ATTR(:get<AnalyticsModuleContentSchemaLocation>);
my %AnalyticsModuleDescription_of :ATTR(:get<AnalyticsModuleDescription>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        AnalyticsModuleContentSchemaLocation
        AnalyticsModuleDescription
        Extension

    ) ],
    {
        'AnalyticsModuleContentSchemaLocation' => \%AnalyticsModuleContentSchemaLocation_of,
        'AnalyticsModuleDescription' => \%AnalyticsModuleDescription_of,
        'Extension' => \%Extension_of,
    },
    {
        'AnalyticsModuleContentSchemaLocation' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
        'AnalyticsModuleDescription' => 'ONVIF::Media::Types::ConfigDescription',
        'Extension' => 'ONVIF::Media::Types::SupportedAnalyticsModulesExtension',
    },
    {

        'AnalyticsModuleContentSchemaLocation' => 'AnalyticsModuleContentSchemaLocation',
        'AnalyticsModuleDescription' => 'AnalyticsModuleDescription',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::SupportedAnalyticsModules

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SupportedAnalyticsModules from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AnalyticsModuleContentSchemaLocation


=item * AnalyticsModuleDescription


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::SupportedAnalyticsModules
   AnalyticsModuleContentSchemaLocation =>  $some_value, # anyURI
   AnalyticsModuleDescription =>  { # ONVIF::Media::Types::ConfigDescription
     Parameters =>  { # ONVIF::Media::Types::ItemListDescription
       SimpleItemDescription => ,
       ElementItemDescription => ,
       Extension =>  { # ONVIF::Media::Types::ItemListDescriptionExtension
       },
     },
     Messages =>  {
       ParentTopic =>  $some_value, # string
     },
     Extension =>  { # ONVIF::Media::Types::ConfigDescriptionExtension
     },
   },
   Extension =>  { # ONVIF::Media::Types::SupportedAnalyticsModulesExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
