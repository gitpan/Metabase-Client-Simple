
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Metabase::Client::Simple',
                       'DISTNAME' => 'Metabase-Client-Simple',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'David Golden <dagolden@cpan.org>, Ricardo Signes <rjbs@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'a client that submits to Metabase servers',
                       'EXE_FILES' => [],
                       'VERSION' => '0.006',
                       'PREREQ_PM' => {
                                        'Test::More' => '0.88',
                                        'URI' => '1',
                                        'LWP::UserAgent' => '5',
                                        'Net::SSL' => '0',
                                        'JSON' => '2',
                                        'HTTP::Status' => '5',
                                        'HTTP::Request::Common' => '5'
                                      },
                       'LICENSE' => 'apache'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



