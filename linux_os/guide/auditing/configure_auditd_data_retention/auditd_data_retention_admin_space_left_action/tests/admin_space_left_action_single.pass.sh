#!/bin/bash
# packages = audit

. $SHARED/auditd_utils.sh
prepare_auditd_test_enviroment
set_parameters_value /etc/audit/auditd.conf "admin_space_left_action" "single"
