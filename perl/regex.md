* Get all the matches in search expression
 ```
 my @foregin = $line =~ /<foreign>([^<>]+)<\/foreign>/g
 ```
 * Get all matches in replace expression
 ```
 my @foreign;
 $line =~ s/<foreign>([^<>]+)<\/foreign>/push @foreign, $1; ''/ge;
```
> [e  - evaluate the right-hand side as an expression](https://perldoc.perl.org/perlre.html)
