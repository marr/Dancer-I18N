package myapp;
use Dancer ':syntax';
use Dancer::Plugin::I18N;
use Dancer::SharedData;
use DDP;
use HTML::FromANSI;
use strict;

my $data = config;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};
get '/env' => sub {
    ansi2html( p $data );
};

true;
