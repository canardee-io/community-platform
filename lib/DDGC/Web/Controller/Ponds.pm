package DDGC::Web::Controller::Ponds;
use Data::Dumper;
use Moose;
use namespace::autoclean;

use DDGC::Config;
use Github::Score;


BEGIN {extends 'Catalyst::Controller'; }

=head2 repo_scores

=cut
##
## Queries:
## /github/repo-scores
## /github/repo-scores/months
## /github/repos/scores
## The question is how specific to make the url
## 
sub repo_scores : Chained('/base') :PathPart('ponds/github/scores') :CaptureArgs(0) {  
my ( $self, $c ) = @_;


}

sub ponds : Chained('/') :PathPart('ponds') :CaptureArgs(0) {
my ( $self, $c ) = @_;

}

sub github : Chained('ponds') :Args(0) {  
my ( $self, $c ) = @_;


}


sub sourceforge : Chained('ponds') :Args(0) {  
my ( $self, $c ) = @_;


}

#####
1;


