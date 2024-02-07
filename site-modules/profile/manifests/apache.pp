# apache.pp
class apache {
  # If this class is declared after the firewall class and the resource default is set globally, it could inadvertently affect the firewall_rule resource in this class as well.
  firewall_rule { 'http_in_apache':
    port   => 80,
    source => '0.0.0.0/0',
    # other attributes
  }
}
