package Dist::Zilla::PluginBundle::Rakudo;
# ABSTRACT: Bundle of plugins needed for building a rakudo distribution
use Moose;
use namespace::autoclean;
with qw/ Dist::Zilla::Role:PluginBundle::Easy /;

sub configure {
    my $self = shift;

    $self->add_plugins(qw(
        GatherDir
        PruneCruft
        PruneFiles
        License
        Manifest
        AutoVersion
        SvnObtain
        GitObtain
        TemplateFiles
    ));
}
 
__PACKAGE__->meta->make_immutable;
1;
