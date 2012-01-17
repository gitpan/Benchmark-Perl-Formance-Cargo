package
  # hide from PAUSE indexer
  Bar7::Meta::Trait;
use Moose::Role;

around _immutable_options => sub { };

no Moose::Role;

1;
