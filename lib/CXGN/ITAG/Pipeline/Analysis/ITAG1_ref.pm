package CXGN::ITAG::Pipeline::Analysis::ITAG1_ref;
use strict;
use warnings;
use base qw/CXGN::ITAG::Pipeline::Analysis::mummer_base/;
use CXGN::Tools::Wget qw/ wget_filter /;

sub gff3_source {
    'ITAG_ITAG1_ref'
}

sub genome_file {
    my $class = shift;
    return wget_filter(
        'cxgn-resource://genome_SL1.00_scaffolds'
            => $class->local_temp('SL1.00_scaffolds.fasta'),
       );
}


1;