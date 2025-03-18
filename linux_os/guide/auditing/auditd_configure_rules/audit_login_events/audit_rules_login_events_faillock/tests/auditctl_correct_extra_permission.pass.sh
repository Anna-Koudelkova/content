#!/bin/bash
# packages = audit
# platform = multi_platform_all
# variables = var_accounts_passwords_pam_faillock_dir=/var/log/faillock

{{{ setup_auditctl_environment() }}}

path="/var/log/faillock"
style="{{{ audit_watches_style }}}"
. $SHARED/audit_rules_login_events/auditctl_correct_extra_permission.pass.sh
