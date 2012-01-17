package
  # hide from PAUSE indexer
  Moose::Meta::Attribute::Custom::Bar;

sub register_implementation { 'My::Bar' }


package
  # hide from PAUSE indexer
  My::Bar;

use Moose::Role;

1;
