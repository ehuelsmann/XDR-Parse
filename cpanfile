#!perl

requires 'perl', '5.14.0';
requires 'Parse::Yapp', '1.21';

on 'test' => sub {
    requires 'Test2::V0';
}

