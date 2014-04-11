use strict;
use warnings;
use Plack::Builder;
use Dancer;
set serializer => 'JSON';

get '/mul/:a/:b' => sub {
    my $mul = params->{a} * params->{b};
    return { res => $mul };
};

builder {
    enable 'Static', path => qw{^/app}, root => 'static';
    dance;
};
