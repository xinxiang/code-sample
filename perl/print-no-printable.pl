{
   my %map = map { $_ => chr(0x40 + $_) } 0x00..0x1F;

   my ($re) = map qr/[$_]/,
              join '',
              map quotemeta,
              keys %map;

   sub format_non_printables {
      my ($text) = @_;
      $text =~ s/($re)/$map{$1}/g;
      return $text;
   }
}

# https://www.perlmonks.org/?replies=1;displaytype=print;node_id=697062
