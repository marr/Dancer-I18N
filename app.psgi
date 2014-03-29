use Dancer;
use myapp;
use Plack::Builder;
use strict;

use Plack::Session::Store::File;

builder {
    enable "Session", store => Plack::Session::Store::File->new(
        dir => config->{session_dir}
    );
    enable_if { config->{environment} eq 'development' } 'Debug', panels => [
        qw(
            Dancer::App
            Environment
            Dancer::Session
            Memory
            Dancer::Version
            Dancer::Settings
            Parameters
            Session
        ) ];
    dance;
};

