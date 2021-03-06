package DDGC::DB;

use Moose;
extends 'DBIx::Class::Schema';

use DDGC::Config;

__PACKAGE__->load_namespaces();

sub connection {
	my $self = shift;
	return $self->next::method(@{&connect_info});
}

sub connect_info {[
	DDGC::Config::db_dsn,
	DDGC::Config::db_user,
	DDGC::Config::db_password,
	DDGC::Config::db_params,
]}

sub connect {
	my $self = shift;
	my $schema = $self->next::method(@_);
	return $schema;
}

1;