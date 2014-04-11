use strict;
use warnings;
use Dancer;
set serializer => 'JSON';

get '/mul/:a/:b' => sub {
    my $mul = params->{a} * params->{b};
    return { res => $mul };
};

dance;
