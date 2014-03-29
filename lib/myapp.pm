package myapp;
use Dancer ':syntax';
use Dancer::Plugin::I18N;
use strict;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};
get '/env' => sub {
    template 'index'
};

true;
