package
  # hide from PAUSE indexer
  Moose::Meta::Attribute::Custom::Trait::Bar;

sub register_implementation { 'My::Trait::Bar' }


package
  # hide from PAUSE indexer
  My::Trait::Bar;

use Moose::Role;

1;
