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
sub repo_scores : Chained('ponds') :PathPart('github/score') :Args(0) {  
my ( $self, $c ) = @_;
die Dumper $c;

	my $gs = Github::Score->new(
		user=>$c->req->params->{github_score_user}, 
		repo=>$c->req->params->{github_score_repo},
		); 
	my $author_contrib_map = $gs->scores();

	$c->{'contributions'} = $author_contrib_map;
	
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


