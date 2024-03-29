##############################################################################
#      $URL: http://perlcritic.tigris.org/svn/perlcritic/trunk/distributions/Perl-Critic/lib/Perl/Critic/PolicyParameter/Behavior/Boolean.pm $
#     $Date: 2010-06-22 16:14:07 -0400 (Tue, 22 Jun 2010) $
#   $Author: clonezone $
# $Revision: 3843 $
##############################################################################

package # hide from indexer
  Perl::Critic::PolicyParameter::Behavior::Boolean;

use 5.006001;
use strict;
use warnings;
use Perl::Critic::Utils;

use base qw{ Perl::Critic::PolicyParameter::Behavior };

our $VERSION = '1.108';

#-----------------------------------------------------------------------------

sub _parse {
    my ($policy, $parameter, $config_string) = @_;

    my $value;
    my $value_string = $parameter->get_default_string();

    if (defined $config_string) {
        $value_string = $config_string;
    }

    if ( $value_string ) {
        $value = $TRUE;
    } else {
        $value = $FALSE;
    }

    $policy->__set_parameter_value($parameter, $value);

    return;
}

#-----------------------------------------------------------------------------

sub initialize_parameter {
    my ($self, $parameter, $specification) = @_;

    $parameter->_set_parser(\&_parse);

    return;
}

#-----------------------------------------------------------------------------

1;

__END__

#-----------------------------------------------------------------------------

=pod

=for stopwords

=head1 NAME

Perl::Critic::PolicyParameter::Behavior::Boolean - Actions appropriate for a boolean parameter.


=head1 DESCRIPTION

Provides a standard set of functionality for a boolean
L<Perl::Critic::PolicyParameter|Perl::Critic::PolicyParameter> so that
the developer of a policy does not have to provide it her/himself.

NOTE: Do not instantiate this class.  Use the singleton instance held
onto by
L<Perl::Critic::PolicyParameter|Perl::Critic::PolicyParameter>.


=head1 INTERFACE SUPPORT

This is considered to be a non-public class.  Its interface is subject
to change without notice.


=head1 METHODS

=over

=item C<initialize_parameter( $parameter, $specification )>

Plug in the functionality this behavior provides into the parameter.
At present, this behavior isn't customizable by the specification.


=back


=head1 AUTHOR

Elliot Shank <perl@galumph.com>


=head1 COPYRIGHT

Copyright (c) 2006-2010 Elliot Shank.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.  The full text of this license
can be found in the LICENSE file included with this module.

=cut

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 78
#   indent-tabs-mode: nil
#   c-indentation-style: bsd
# End:
# ex: set ts=8 sts=4 sw=4 tw=78 ft=perl expandtab shiftround :
