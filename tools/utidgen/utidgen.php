<?php

/**
 * UTIDgen
 *
 * Generates Universal Thing IDs.
 */

class UTID
{
  private $uuid = array();
  private $bits = 256;
  
  public function __construct( $version = 4 )
  {
    $uuid = array();
    for ( $i = 0; $i < ($this->bits / 8); $i++ ) {
      $uuid[] = mt_rand( 0, 255 );
    }
    
    $this->uuid = $uuid;
  }
  
  public function __toString()
  {
    return $this->get_hex();
  }
  
  public function get_array()
  {
    return $this->uuid;
  }
  
  public function get_raw()
  {
    return implode( '', array_map( 'chr', $this->uuid ) );
  }
  
  public function get_hex()
  {
    $uuid_hex = '';
    for ( $i = 0; $i < sizeof($this->uuid); $i++ ) {
      if ( $i > 0 && $i % ($this->bits / 32) == 0 ) $uuid_hex .= '-';
      $uuid_hex.= sprintf( '%02x' , $this->uuid[$i] );
    }
    
    return $uuid_hex;
  }
  
  public static function get()
  {
    $uuid = new UTID();
    return $uuid->get_hex();
  }
  
}

$num = @intval($argv[1]);
$num = max($num, 1);
for ($i = 0; $i < intval($argv[1]); $i++) {
  printf("%s\n", UTID::get());
}

?>
