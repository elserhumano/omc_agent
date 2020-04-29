# -----------------------------------------------------------------------------------
# Description: Oracle Management Cloud Agent
#
# Reviewer: elserhumano@gmail.com
#
# Date: 04/2020
#
# -----------------------------------------------------------------------------------

#   include omc_agent
class omc_agent {

  # Stop and disable the OCI Cloud Agent.
  service { 'omc_agent':
    ensure => 'stopped',
    enable => false,
  }

  # Remove the OCI Cloud Agent.
  package { 'omc_agent':
    ensure  => 'absent',
    require => Service['omc_agent'],
  }
}
