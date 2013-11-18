# == Class: nagios::service
#
# Maintaining nagios and icinga environments
#
# === Parameters
#
# === Variables
#
# === Authors
#
# Frank Kloeker <f.kloeker@t-online.de>
#
#

class nagios::service {
  nagios_service { 'cloud-service':
    active_checks_enabled           => '1',
    passive_checks_enabled          => '1',
    parallelize_check               => '1',
    obsess_over_service             => '1',
    check_freshness                 => '0',
    notifications_enabled           => '1',
    event_handler_enabled           => '1',
    flap_detection_enabled          => '1',
    failure_prediction_enabled      => '1',
    process_perf_data               => '0',
    retain_status_information       => '1',
    retain_nonstatus_information    => '1',
    notification_interval           => '90',
    is_volatile                     => '0',
    check_period                    => '24x7',
#    retry_check_interval            => '1',
    normal_check_interval           => '5',
    max_check_attempts              => '3',
    notification_period             => '24x7',
    notification_options            => 'w,u,c,r',
    contact_groups                  => 'group_email',
    register                        => '0',
    }
  nagios_service { 'cloud-service-sms':
    active_checks_enabled           => '1',
    passive_checks_enabled          => '1',
    parallelize_check               => '1',
    obsess_over_service             => '1',
    check_freshness                 => '0',
    notifications_enabled           => '1',
    event_handler_enabled           => '1',
    flap_detection_enabled          => '1',
    failure_prediction_enabled      => '1',
    process_perf_data               => '0',
    retain_status_information       => '1',
    retain_nonstatus_information    => '1',
    notification_interval           => '90',
    is_volatile                     => '0',
    check_period                    => '24x7',
#    retry_check_interval            => '1',
    normal_check_interval           => '5',
    max_check_attempts              => '3',
    notification_period             => '24x7',
    notification_options            => 'w,u,c,r',
    contact_groups                  => 'group_sms',
    register                        => '0',
    }
  nagios_service { 'cloud-service-voice':
    active_checks_enabled           => '1',
    passive_checks_enabled          => '1',
    parallelize_check               => '1',
    obsess_over_service             => '1',
    check_freshness                 => '0',
    notifications_enabled           => '1',
    event_handler_enabled           => '1',
    flap_detection_enabled          => '1',
    failure_prediction_enabled      => '1',
    process_perf_data               => '1',
    retain_status_information       => '1',
    retain_nonstatus_information    => '1',
    notification_interval           => '90',
    is_volatile                     => '0',
    check_period                    => '24x7',
#    retry_check_interval            => '1',
    normal_check_interval           => '5',
    max_check_attempts              => '3',
    notification_period             => '24x7',
    notification_options            => 'w,u,c,r',
    contact_groups                  => 'group_voice',
    register                        => '0',
    }

}
