package myapp;
use Dancer ':syntax';
use Dancer::Plugin::I18N::TextDomain;
use strict;

set_i18n_language('en_US.UTF8');
set_i18n_domain('messages');

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

true;
