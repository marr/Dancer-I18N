#!/usr/bin/env perl
use Dancer;
use myapp;
use strict;

use Plack::Builder;

my $app = sub {
    my $env     = shift;
    my $request = Dancer::Request->new( env => $env );
    Dancer->dance($request);
};

builder {
    enable "Auth::Basic", authenticator => sub {
        my ( $username, $password ) = @_;
        return $username eq 'admin' && $password eq 's3cr3t';
    };
    enable "ConsoleLogger";
    enable "Debug", panels => [
        qw( Dancer::Logger Environment )
    ];
    $app;
};
