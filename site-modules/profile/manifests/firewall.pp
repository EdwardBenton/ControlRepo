# firewall.pp
class firewall {
  Firewall_rule { action => 'allow' } # Resource default for firewall_rule

  firewall_rule { 'http':
    port   => 80,
    source => '10.0.0.0/24',
    # other attributes
  }
}
