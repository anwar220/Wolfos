# classes.dex

.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;,
        Landroid/app/admin/DevicePolicyManager$SystemSettingsWhitelist;,
        Landroid/app/admin/DevicePolicyManager$CreateAndManageUserFlags;,
        Landroid/app/admin/DevicePolicyManager$LockNowFlag;,
        Landroid/app/admin/DevicePolicyManager$OperationSafetyReason;,
        Landroid/app/admin/DevicePolicyManager$DevicePolicyOperation;,
        Landroid/app/admin/DevicePolicyManager$DeviceOwnerType;,
        Landroid/app/admin/DevicePolicyManager$PersonalAppsSuspensionReason;,
        Landroid/app/admin/DevicePolicyManager$RoleHolderUpdateFailureStrategy;,
        Landroid/app/admin/DevicePolicyManager$PrivateDnsModeErrorCodes;,
        Landroid/app/admin/DevicePolicyManager$InstallUpdateCallbackErrorConstants;,
        Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;,
        Landroid/app/admin/DevicePolicyManager$PrivateDnsMode;,
        Landroid/app/admin/DevicePolicyManager$AttestationIdType;,
        Landroid/app/admin/DevicePolicyManager$LockTaskFeature;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningPrecondition;,
        Landroid/app/admin/DevicePolicyManager$UserProvisioningState;,
        Landroid/app/admin/DevicePolicyManager$PermissionGrantState;,
        Landroid/app/admin/DevicePolicyManager$NearbyStreamingPolicy;,
        Landroid/app/admin/DevicePolicyManager$PasswordComplexity;,
        Landroid/app/admin/DevicePolicyManager$WifiSecurity;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningConfiguration;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningTrigger;
    }
.end annotation


# static fields
.field public static final ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_ALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_DISALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final ACTION_ADMIN_POLICY_COMPLIANCE:Ljava/lang/String; = "android.app.action.ADMIN_POLICY_COMPLIANCE"

.field public static final ACTION_APPLICATION_DELEGATION_SCOPES_CHANGED:Ljava/lang/String; = "android.app.action.APPLICATION_DELEGATION_SCOPES_CHANGED"

.field public static final ACTION_BIND_SECONDARY_LOCKSCREEN_SERVICE:Ljava/lang/String; = "android.app.action.BIND_SECONDARY_LOCKSCREEN_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_BUGREPORT_SHARING_ACCEPTED:Ljava/lang/String; = "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

.field public static final ACTION_BUGREPORT_SHARING_DECLINED:Ljava/lang/String; = "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

.field public static final ACTION_CHECK_POLICY_COMPLIANCE:Ljava/lang/String; = "android.app.action.CHECK_POLICY_COMPLIANCE"

.field public static final ACTION_DATA_SHARING_RESTRICTION_APPLIED:Ljava/lang/String; = "android.app.action.DATA_SHARING_RESTRICTION_APPLIED"

.field public static final ACTION_DEVICE_ADMIN_SERVICE:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_SERVICE"

.field public static final ACTION_DEVICE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_OWNER_CHANGED"

.field public static final ACTION_DEVICE_POLICY_CONSTANTS_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_CONSTANTS_CHANGED"

.field public static final ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final ACTION_DEVICE_POLICY_RESOURCE_UPDATED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

.field public static final ACTION_ESTABLISH_NETWORK_CONNECTION:Ljava/lang/String; = "android.app.action.ESTABLISH_NETWORK_CONNECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_GET_PROVISIONING_MODE:Ljava/lang/String; = "android.app.action.GET_PROVISIONING_MODE"

.field public static final ACTION_LOST_MODE_LOCATION_UPDATE:Ljava/lang/String; = "android.app.action.LOST_MODE_LOCATION_UPDATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MANAGED_PROFILE_PROVISIONED:Ljava/lang/String; = "android.app.action.MANAGED_PROFILE_PROVISIONED"

.field public static final ACTION_PROFILE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.PROFILE_OWNER_CHANGED"

.field public static final ACTION_PROVISIONING_COMPLETED:Ljava/lang/String; = "android.app.action.PROVISIONING_COMPLETED"

.field public static final ACTION_PROVISIONING_SUCCESSFUL:Ljava/lang/String; = "android.app.action.PROVISIONING_SUCCESSFUL"

.field public static final ACTION_PROVISION_FINALIZATION:Ljava/lang/String; = "android.app.action.PROVISION_FINALIZATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PROVISION_FINANCED_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_FINANCED_DEVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PROVISION_MANAGED_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_PROFILE"

.field public static final ACTION_PROVISION_MANAGED_USER:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_USER"

.field public static final ACTION_REMOTE_BUGREPORT_DISPATCH:Ljava/lang/String; = "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

.field public static final ACTION_RESET_PROTECTION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.RESET_PROTECTION_POLICY_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_ROLE_HOLDER_PROVISION_FINALIZATION:Ljava/lang/String; = "android.app.action.ROLE_HOLDER_PROVISION_FINALIZATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_ROLE_HOLDER_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE:Ljava/lang/String; = "android.app.action.ROLE_HOLDER_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_ROLE_HOLDER_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.ROLE_HOLDER_PROVISION_MANAGED_PROFILE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SET_NEW_PARENT_PROFILE_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

.field public static final ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field public static final ACTION_SET_PROFILE_OWNER:Ljava/lang/String; = "android.app.action.SET_PROFILE_OWNER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SHOW_DEVICE_MONITORING_DIALOG:Ljava/lang/String; = "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

.field public static final ACTION_SHOW_NEW_USER_DISCLAIMER:Ljava/lang/String; = "android.app.action.SHOW_NEW_USER_DISCLAIMER"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final ACTION_START_ENCRYPTION:Ljava/lang/String; = "android.app.action.START_ENCRYPTION"

.field public static final ACTION_STATE_USER_SETUP_COMPLETE:Ljava/lang/String; = "android.app.action.STATE_USER_SETUP_COMPLETE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SYSTEM_UPDATE_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

.field public static final ACTION_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER:Ljava/lang/String; = "android.app.action.UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DEFAULT_STRONG_AUTH_TIMEOUT_MS:J = 0xf731400L

.field public static final DELEGATION_APP_RESTRICTIONS:Ljava/lang/String; = "delegation-app-restrictions"

.field public static final DELEGATION_BLOCK_UNINSTALL:Ljava/lang/String; = "delegation-block-uninstall"

.field public static final DELEGATION_CERT_INSTALL:Ljava/lang/String; = "delegation-cert-install"

.field public static final DELEGATION_CERT_SELECTION:Ljava/lang/String; = "delegation-cert-selection"

.field public static final DELEGATION_ENABLE_SYSTEM_APP:Ljava/lang/String; = "delegation-enable-system-app"

.field public static final DELEGATION_INSTALL_EXISTING_PACKAGE:Ljava/lang/String; = "delegation-install-existing-package"

.field public static final DELEGATION_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "delegation-keep-uninstalled-packages"

.field public static final DELEGATION_NETWORK_LOGGING:Ljava/lang/String; = "delegation-network-logging"

.field public static final DELEGATION_PACKAGE_ACCESS:Ljava/lang/String; = "delegation-package-access"

.field public static final DELEGATION_PERMISSION_GRANT:Ljava/lang/String; = "delegation-permission-grant"

.field public static final DELEGATION_SECURITY_LOGGING:Ljava/lang/String; = "delegation-security-logging"

.field public static final DEVICE_OWNER_TYPE_DEFAULT:I = 0x0

.field public static final DEVICE_OWNER_TYPE_FINANCED:I = 0x1

.field public static final ENCRYPTION_STATUS_ACTIVATING:I = 0x2

.field public static final ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final ENCRYPTION_STATUS_ACTIVE_DEFAULT_KEY:I = 0x4

.field public static final ENCRYPTION_STATUS_ACTIVE_PER_USER:I = 0x5

.field public static final ENCRYPTION_STATUS_INACTIVE:I = 0x1

.field public static final ENCRYPTION_STATUS_UNSUPPORTED:I = 0x0

.field public static final ERROR_VPN_PACKAGE_NOT_FOUND:I = 0x1

.field public static final EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final EXTRA_BUGREPORT_NOTIFICATION_TYPE:Ljava/lang/String; = "android.app.extra.bugreport_notification_type"

.field public static final EXTRA_DELEGATION_SCOPES:Ljava/lang/String; = "android.app.extra.DELEGATION_SCOPES"

.field public static final EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final EXTRA_DEVICE_PASSWORD_REQUIREMENT_ONLY:Ljava/lang/String; = "android.app.extra.DEVICE_PASSWORD_REQUIREMENT_ONLY"

.field public static final EXTRA_FORCE_UPDATE_ROLE_HOLDER:Ljava/lang/String; = "android.app.extra.FORCE_UPDATE_ROLE_HOLDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_LOST_MODE_LOCATION:Ljava/lang/String; = "android.app.extra.LOST_MODE_LOCATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PASSWORD_COMPLEXITY:Ljava/lang/String; = "android.app.extra.PASSWORD_COMPLEXITY"

.field public static final EXTRA_PROFILE_OWNER_NAME:Ljava/lang/String; = "android.app.extra.PROFILE_OWNER_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_ACCOUNT_TO_MIGRATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

.field public static final EXTRA_PROVISIONING_ACTION:Ljava/lang/String; = "android.app.extra.PROVISIONING_ACTION"

.field public static final EXTRA_PROVISIONING_ADMIN_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

.field public static final EXTRA_PROVISIONING_ALLOWED_PROVISIONING_MODES:Ljava/lang/String; = "android.app.extra.PROVISIONING_ALLOWED_PROVISIONING_MODES"

.field public static final EXTRA_PROVISIONING_ALLOW_OFFLINE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ALLOW_OFFLINE"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

.field public static final EXTRA_PROVISIONING_DISCLAIMERS:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMERS"

.field public static final EXTRA_PROVISIONING_DISCLAIMER_CONTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

.field public static final EXTRA_PROVISIONING_DISCLAIMER_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

.field public static final EXTRA_PROVISIONING_EMAIL_ADDRESS:Ljava/lang/String; = "android.app.extra.PROVISIONING_EMAIL_ADDRESS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_IMEI:Ljava/lang/String; = "android.app.extra.PROVISIONING_IMEI"

.field public static final EXTRA_PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

.field public static final EXTRA_PROVISIONING_KEEP_SCREEN_ON:Ljava/lang/String; = "android.app.extra.PROVISIONING_KEEP_SCREEN_ON"

.field public static final EXTRA_PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED:Ljava/lang/String; = "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field public static final EXTRA_PROVISIONING_LOCALE:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCALE"

.field public static final EXTRA_PROVISIONING_LOCAL_TIME:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCAL_TIME"

.field public static final EXTRA_PROVISIONING_LOGO_URI:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOGO_URI"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_MAIN_COLOR:Ljava/lang/String; = "android.app.extra.PROVISIONING_MAIN_COLOR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_MODE:Ljava/lang/String; = "android.app.extra.PROVISIONING_MODE"

.field public static final EXTRA_PROVISIONING_ORGANIZATION_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_ORGANIZATION_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_RETURN_BEFORE_POLICY_COMPLIANCE:Ljava/lang/String; = "android.app.extra.PROVISIONING_RETURN_BEFORE_POLICY_COMPLIANCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_ROLE_HOLDER_CUSTOM_USER_CONSENT_INTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_CUSTOM_USER_CONSENT_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_ROLE_HOLDER_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_EXTRAS_BUNDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_COOKIE_HEADER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_LOCATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_ROLE_HOLDER_SIGNATURE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_SIGNATURE_CHECKSUM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_SENSORS_PERMISSION_GRANT_OPT_OUT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SENSORS_PERMISSION_GRANT_OPT_OUT"

.field public static final EXTRA_PROVISIONING_SERIAL_NUMBER:Ljava/lang/String; = "android.app.extra.PROVISIONING_SERIAL_NUMBER"

.field public static final EXTRA_PROVISIONING_SHOULD_LAUNCH_RESULT_INTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SHOULD_LAUNCH_RESULT_INTENT"

.field public static final EXTRA_PROVISIONING_SKIP_EDUCATION_SCREENS:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_EDUCATION_SCREENS"

.field public static final EXTRA_PROVISIONING_SKIP_ENCRYPTION:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

.field public static final EXTRA_PROVISIONING_SKIP_OWNERSHIP_DISCLAIMER:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_OWNERSHIP_DISCLAIMER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_SKIP_USER_CONSENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_SUPPORTED_MODES:Ljava/lang/String; = "android.app.extra.PROVISIONING_SUPPORTED_MODES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_SUPPORT_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_SUPPORT_URL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_TIME_ZONE:Ljava/lang/String; = "android.app.extra.PROVISIONING_TIME_ZONE"

.field public static final EXTRA_PROVISIONING_TRIGGER:Ljava/lang/String; = "android.app.extra.PROVISIONING_TRIGGER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PROVISIONING_USE_MOBILE_DATA:Ljava/lang/String; = "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

.field public static final EXTRA_PROVISIONING_WIFI_ANONYMOUS_IDENTITY:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_ANONYMOUS_IDENTITY"

.field public static final EXTRA_PROVISIONING_WIFI_CA_CERTIFICATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_CA_CERTIFICATE"

.field public static final EXTRA_PROVISIONING_WIFI_DOMAIN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_DOMAIN"

.field public static final EXTRA_PROVISIONING_WIFI_EAP_METHOD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_EAP_METHOD"

.field public static final EXTRA_PROVISIONING_WIFI_HIDDEN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_HIDDEN"

.field public static final EXTRA_PROVISIONING_WIFI_IDENTITY:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_IDENTITY"

.field public static final EXTRA_PROVISIONING_WIFI_PAC_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PAC_URL"

.field public static final EXTRA_PROVISIONING_WIFI_PASSWORD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PASSWORD"

.field public static final EXTRA_PROVISIONING_WIFI_PHASE2_AUTH:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PHASE2_AUTH"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_BYPASS:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_HOST:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

.field public static final EXTRA_PROVISIONING_WIFI_PROXY_PORT:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

.field public static final EXTRA_PROVISIONING_WIFI_SECURITY_TYPE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

.field public static final EXTRA_PROVISIONING_WIFI_SSID:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SSID"

.field public static final EXTRA_PROVISIONING_WIFI_USER_CERTIFICATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_USER_CERTIFICATE"

.field public static final EXTRA_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "android.intent.extra.REMOTE_BUGREPORT_HASH"

.field public static final EXTRA_REMOTE_BUGREPORT_NONCE:Ljava/lang/String; = "android.intent.extra.REMOTE_BUGREPORT_NONCE"

.field public static final EXTRA_RESOURCE_IDS:Ljava/lang/String; = "android.app.extra.RESOURCE_IDS"

.field public static final EXTRA_RESOURCE_TYPE:Ljava/lang/String; = "android.app.extra.RESOURCE_TYPE"

.field public static final EXTRA_RESOURCE_TYPE_DRAWABLE:I = 0x1

.field public static final EXTRA_RESOURCE_TYPE_STRING:I = 0x2

.field public static final EXTRA_RESTRICTION:Ljava/lang/String; = "android.app.extra.RESTRICTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_RESULT_LAUNCH_INTENT:Ljava/lang/String; = "android.app.extra.RESULT_LAUNCH_INTENT"

.field public static final EXTRA_ROLE_HOLDER_PROVISIONING_INITIATOR_PACKAGE:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_PROVISIONING_INITIATOR_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_ROLE_HOLDER_STATE:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_ROLE_HOLDER_UPDATE_FAILURE_STRATEGY:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_UPDATE_FAILURE_STRATEGY"

.field public static final EXTRA_ROLE_HOLDER_UPDATE_RESULT_CODE:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_UPDATE_RESULT_CODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_EVICT_CREDENTIAL_ENCRYPTION_KEY:I = 0x1

.field public static final FLAG_MANAGED_CAN_ACCESS_PARENT:I = 0x2

.field public static final FLAG_PARENT_CAN_ACCESS_MANAGED:I = 0x1

.field public static final FLAG_SUPPORTED_MODES_DEVICE_OWNER:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_SUPPORTED_MODES_ORGANIZATION_OWNED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_SUPPORTED_MODES_PERSONALLY_OWNED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ID_TYPE_BASE_INFO:I = 0x1

.field public static final ID_TYPE_IMEI:I = 0x4

.field public static final ID_TYPE_INDIVIDUAL_ATTESTATION:I = 0x10

.field public static final ID_TYPE_MEID:I = 0x8

.field public static final ID_TYPE_SERIAL:I = 0x2

.field public static final INSTALLKEY_REQUEST_CREDENTIALS_ACCESS:I = 0x1

.field public static final INSTALLKEY_SET_USER_SELECTABLE:I = 0x2

.field public static final KEYGUARD_DISABLE_BIOMETRICS:I = 0x1a0

.field public static final KEYGUARD_DISABLE_FACE:I = 0x80

.field public static final KEYGUARD_DISABLE_FEATURES_ALL:I = 0x7fffffff

.field public static final KEYGUARD_DISABLE_FEATURES_NONE:I = 0x0

.field public static final KEYGUARD_DISABLE_FINGERPRINT:I = 0x20

.field public static final KEYGUARD_DISABLE_IRIS:I = 0x100

.field public static final KEYGUARD_DISABLE_REMOTE_INPUT:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYGUARD_DISABLE_SECURE_CAMERA:I = 0x2

.field public static final KEYGUARD_DISABLE_SECURE_NOTIFICATIONS:I = 0x4

.field public static final KEYGUARD_DISABLE_TRUST_AGENTS:I = 0x10

.field public static final KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS:I = 0x8

.field public static final KEYGUARD_DISABLE_WIDGETS_ALL:I = 0x1

.field public static final KEY_GEN_STRONGBOX_UNAVAILABLE:I = 0x1

.field public static final LEAVE_ALL_SYSTEM_APPS_ENABLED:I = 0x10

.field public static final LOCK_TASK_FEATURE_BLOCK_ACTIVITY_START_IN_TASK:I = 0x40

.field public static final LOCK_TASK_FEATURE_GLOBAL_ACTIONS:I = 0x10

.field public static final LOCK_TASK_FEATURE_HOME:I = 0x4

.field public static final LOCK_TASK_FEATURE_KEYGUARD:I = 0x20

.field public static final LOCK_TASK_FEATURE_NONE:I = 0x0

.field public static final LOCK_TASK_FEATURE_NOTIFICATIONS:I = 0x2

.field public static final LOCK_TASK_FEATURE_OVERVIEW:I = 0x8

.field public static final LOCK_TASK_FEATURE_SYSTEM_INFO:I = 0x1

.field public static final MAKE_USER_DEMO:I = 0x4

.field public static final MAKE_USER_EPHEMERAL:I = 0x2

.field public static final MAX_PASSWORD_LENGTH:I = 0x10

.field public static final MIME_TYPE_PROVISIONING_NFC:Ljava/lang/String; = "application/com.android.managedprovisioning"

.field public static final NEARBY_STREAMING_DISABLED:I = 0x1

.field public static final NEARBY_STREAMING_ENABLED:I = 0x2

.field public static final NEARBY_STREAMING_NOT_CONTROLLED_BY_POLICY:I = 0x0

.field public static final NEARBY_STREAMING_SAME_MANAGED_ACCOUNT_ONLY:I = 0x3

.field public static final NON_ORG_OWNED_PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x1b0

.field public static final NOTIFICATION_BUGREPORT_ACCEPTED_NOT_FINISHED:I = 0x2

.field public static final NOTIFICATION_BUGREPORT_FINISHED_NOT_ACCEPTED:I = 0x3

.field public static final NOTIFICATION_BUGREPORT_STARTED:I = 0x1

.field public static final OPERATION_CLEAR_APPLICATION_USER_DATA:I = 0x17

.field public static final OPERATION_CREATE_AND_MANAGE_USER:I = 0x5

.field public static final OPERATION_INSTALL_CA_CERT:I = 0x18

.field public static final OPERATION_INSTALL_KEY_PAIR:I = 0x19

.field public static final OPERATION_INSTALL_SYSTEM_UPDATE:I = 0x1a

.field public static final OPERATION_LOCK_NOW:I = 0x1

.field public static final OPERATION_LOGOUT_USER:I = 0x9

.field public static final OPERATION_REBOOT:I = 0x7

.field public static final OPERATION_REMOVE_ACTIVE_ADMIN:I = 0x1b

.field public static final OPERATION_REMOVE_KEY_PAIR:I = 0x1c

.field public static final OPERATION_REMOVE_USER:I = 0x6

.field public static final OPERATION_REQUEST_BUGREPORT:I = 0x1d

.field public static final OPERATION_SAFETY_REASON_DRIVING_DISTRACTION:I = 0x1

.field public static final OPERATION_SAFETY_REASON_NONE:I = -0x1

.field public static final OPERATION_SET_ALWAYS_ON_VPN_PACKAGE:I = 0x1e

.field public static final OPERATION_SET_APPLICATION_HIDDEN:I = 0xf

.field public static final OPERATION_SET_APPLICATION_RESTRICTIONS:I = 0x10

.field public static final OPERATION_SET_CAMERA_DISABLED:I = 0x1f

.field public static final OPERATION_SET_FACTORY_RESET_PROTECTION_POLICY:I = 0x20

.field public static final OPERATION_SET_GLOBAL_PRIVATE_DNS:I = 0x21

.field public static final OPERATION_SET_KEEP_UNINSTALLED_PACKAGES:I = 0x11

.field public static final OPERATION_SET_KEYGUARD_DISABLED:I = 0xc

.field public static final OPERATION_SET_LOCK_TASK_FEATURES:I = 0x12

.field public static final OPERATION_SET_LOCK_TASK_PACKAGES:I = 0x13

.field public static final OPERATION_SET_LOGOUT_ENABLED:I = 0x22

.field public static final OPERATION_SET_MASTER_VOLUME_MUTED:I = 0x23

.field public static final OPERATION_SET_OVERRIDE_APNS_ENABLED:I = 0x24

.field public static final OPERATION_SET_PACKAGES_SUSPENDED:I = 0x14

.field public static final OPERATION_SET_PERMISSION_GRANT_STATE:I = 0x25

.field public static final OPERATION_SET_PERMISSION_POLICY:I = 0x26

.field public static final OPERATION_SET_RESTRICTIONS_PROVIDER:I = 0x27

.field public static final OPERATION_SET_STATUS_BAR_DISABLED:I = 0xd

.field public static final OPERATION_SET_SYSTEM_SETTING:I = 0xb

.field public static final OPERATION_SET_SYSTEM_UPDATE_POLICY:I = 0xe

.field public static final OPERATION_SET_TRUST_AGENT_CONFIGURATION:I = 0x15

.field public static final OPERATION_SET_USER_CONTROL_DISABLED_PACKAGES:I = 0x16

.field public static final OPERATION_SET_USER_RESTRICTION:I = 0xa

.field public static final OPERATION_START_USER_IN_BACKGROUND:I = 0x3

.field public static final OPERATION_STOP_USER:I = 0x4

.field public static final OPERATION_SWITCH_USER:I = 0x2

.field public static final OPERATION_UNINSTALL_CA_CERT:I = 0x28

.field public static final OPERATION_WIPE_DATA:I = 0x8

.field public static final ORG_OWNED_PROFILE_KEYGUARD_FEATURES_PARENT_ONLY:I = 0x6

.field public static final PASSWORD_COMPLEXITY_HIGH:I = 0x50000

.field public static final PASSWORD_COMPLEXITY_LOW:I = 0x10000

.field public static final PASSWORD_COMPLEXITY_MEDIUM:I = 0x30000

.field public static final PASSWORD_COMPLEXITY_NONE:I = 0x0

.field public static final PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final PASSWORD_QUALITY_BIOMETRIC_WEAK:I = 0x8000

.field public static final PASSWORD_QUALITY_COMPLEX:I = 0x60000

.field public static final PASSWORD_QUALITY_MANAGED:I = 0x80000

.field public static final PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final PASSWORD_QUALITY_NUMERIC_COMPLEX:I = 0x30000

.field public static final PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final PERMISSION_GRANT_STATE_DEFAULT:I = 0x0

.field public static final PERMISSION_GRANT_STATE_DENIED:I = 0x2

.field public static final PERMISSION_GRANT_STATE_GRANTED:I = 0x1

.field public static final PERMISSION_POLICY_AUTO_DENY:I = 0x2

.field public static final PERMISSION_POLICY_AUTO_GRANT:I = 0x1

.field public static final PERMISSION_POLICY_PROMPT:I = 0x0

.field public static final PERSONAL_APPS_NOT_SUSPENDED:I = 0x0

.field public static final PERSONAL_APPS_SUSPENDED_EXPLICITLY:I = 0x1

.field public static final PERSONAL_APPS_SUSPENDED_PROFILE_TIMEOUT:I = 0x2

.field public static final POLICY_DISABLE_CAMERA:Ljava/lang/String; = "policy_disable_camera"

.field public static final POLICY_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "policy_disable_screen_capture"

.field public static final POLICY_SUSPEND_PACKAGES:Ljava/lang/String; = "policy_suspend_packages"

.field public static final PREFERENTIAL_NETWORK_SERVICE_ENABLED_DEFAULT:Z = false

.field private static final PREFIX_OPERATION:Ljava/lang/String; = "OPERATION_"

.field private static final PREFIX_OPERATION_SAFETY_REASON:Ljava/lang/String; = "OPERATION_SAFETY_REASON_"

.field public static final PRIVATE_DNS_MODE_OFF:I = 0x1

.field public static final PRIVATE_DNS_MODE_OPPORTUNISTIC:I = 0x2

.field public static final PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:I = 0x3

.field public static final PRIVATE_DNS_MODE_UNKNOWN:I = 0x0

.field public static final PRIVATE_DNS_SET_ERROR_FAILURE_SETTING:I = 0x2

.field public static final PRIVATE_DNS_SET_ERROR_HOST_NOT_SERVING:I = 0x1

.field public static final PRIVATE_DNS_SET_NO_ERROR:I = 0x0

.field public static final PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x1b6

.field public static final PROVISIONING_MODE_FULLY_MANAGED_DEVICE:I = 0x1

.field public static final PROVISIONING_MODE_MANAGED_PROFILE:I = 0x2

.field public static final PROVISIONING_MODE_MANAGED_PROFILE_ON_PERSONAL_DEVICE:I = 0x3

.field public static final PROVISIONING_TRIGGER_CLOUD_ENROLLMENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROVISIONING_TRIGGER_MANAGED_ACCOUNT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROVISIONING_TRIGGER_NFC:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROVISIONING_TRIGGER_PERSISTENT_DEVICE_OWNER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROVISIONING_TRIGGER_QR_CODE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROVISIONING_TRIGGER_UNSPECIFIED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REQUIRED_APP_MANAGED_DEVICE:Ljava/lang/String; = "android.app.REQUIRED_APP_MANAGED_DEVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REQUIRED_APP_MANAGED_PROFILE:Ljava/lang/String; = "android.app.REQUIRED_APP_MANAGED_PROFILE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REQUIRED_APP_MANAGED_USER:Ljava/lang/String; = "android.app.REQUIRED_APP_MANAGED_USER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESET_PASSWORD_DO_NOT_ASK_CREDENTIALS_ON_BOOT:I = 0x2

.field public static final RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field public static final RESULT_DEVICE_OWNER_SET:I = 0x7b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER_PROVISIONING_DISABLED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER_RECOVERABLE_ERROR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER_UNRECOVERABLE_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_UPDATE_ROLE_HOLDER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_WORK_PROFILE_CREATED:I = 0x7a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ROLE_HOLDER_UPDATE_FAILURE_STRATEGY_FAIL_PROVISIONING:I = 0x1

.field public static final ROLE_HOLDER_UPDATE_FAILURE_STRATEGY_FALLBACK_TO_PLATFORM_PROVISIONING:I = 0x2

.field public static final SKIP_SETUP_WIZARD:I = 0x1

.field public static final STATE_USER_PROFILE_COMPLETE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_USER_PROFILE_FINALIZED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_USER_SETUP_COMPLETE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_USER_SETUP_FINALIZED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_USER_SETUP_INCOMPLETE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATE_USER_UNMANAGED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_ACCOUNTS_NOT_EMPTY:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_CANNOT_ADD_MANAGED_PROFILE:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_DEVICE_ADMIN_NOT_SUPPORTED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_HAS_DEVICE_OWNER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_HAS_PAIRED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_MANAGED_USERS_NOT_SUPPORTED:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_NONSYSTEM_USER_EXISTS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_NOT_SYSTEM_USER:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_PROVISIONING_NOT_ALLOWED_FOR_NON_DEVELOPER_USERS:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_SPLIT_SYSTEM_USER_DEVICE_SYSTEM_USER:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_SYSTEM_USER:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_UNKNOWN_ERROR:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_USER_HAS_PROFILE_OWNER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_USER_NOT_RUNNING:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_USER_SETUP_COMPLETED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_SECURITY_ENTERPRISE_192:I = 0x3

.field public static final WIFI_SECURITY_ENTERPRISE_EAP:I = 0x2

.field public static final WIFI_SECURITY_OPEN:I = 0x0

.field public static final WIFI_SECURITY_PERSONAL:I = 0x1

.field public static final WIPE_EUICC:I = 0x4

.field public static final WIPE_EXTERNAL_STORAGE:I = 0x1

.field public static final WIPE_RESET_PROTECTION_DATA:I = 0x2

.field public static final WIPE_SILENTLY:I = 0x8

.field private static final sDpmCaches:Landroid/os/IpcDataCache$Config;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGetDeviceOwnerOrganizationNameCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mGetKeyGuardDisabledFeaturesCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGetOrganizationNameForUserCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mGetProfileOwnerOrDeviceOwnerSupervisionComponentCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserHandle;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mHasDeviceOwnerCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNetworkLoggingEnabledCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsOrganizationOwnedDeviceWithManagedProfileCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mParentInstance:Z

.field private final mResourcesManager:Landroid/app/admin/DevicePolicyResourcesManager;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static bridge synthetic -$$Nest$mexecuteCallback(Landroid/app/admin/DevicePolicyManager;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/IpcDataCache$Config;

    const/16 v1, 0x8

    const-string/jumbo v2, "system_server"

    const-string v3, "DevicePolicyManagerCaches"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/IpcDataCache;

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    const-string v2, "getKeyguardDisabledFeatures"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda5;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetKeyGuardDisabledFeaturesCache:Landroid/os/IpcDataCache;

    new-instance v0, Landroid/os/IpcDataCache;

    const-string v2, "hasDeviceOwner"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda6;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mHasDeviceOwnerCache:Landroid/os/IpcDataCache;

    new-instance v0, Landroid/os/IpcDataCache;

    const-string v2, "getProfileOwnerOrDeviceOwnerSupervisionComponent"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda7;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetProfileOwnerOrDeviceOwnerSupervisionComponentCache:Landroid/os/IpcDataCache;

    new-instance v0, Landroid/os/IpcDataCache;

    const-string v2, "isOrganizationOwnedDeviceWithManagedProfile"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda8;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsOrganizationOwnedDeviceWithManagedProfileCache:Landroid/os/IpcDataCache;

    new-instance v0, Landroid/os/IpcDataCache;

    const-string v2, "getDeviceOwnerOrganizationName"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda9;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetDeviceOwnerOrganizationNameCache:Landroid/os/IpcDataCache;

    new-instance v0, Landroid/os/IpcDataCache;

    const-string v2, "getOrganizationNameForUser"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda10;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetOrganizationNameForUserCache:Landroid/os/IpcDataCache;

    new-instance v0, Landroid/os/IpcDataCache;

    const-string v2, "isNetworkLoggingEnabled"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda11;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsNetworkLoggingEnabledCache:Landroid/os/IpcDataCache;

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iput-boolean p3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    new-instance v0, Landroid/app/admin/DevicePolicyResourcesManager;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/DevicePolicyResourcesManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mResourcesManager:Landroid/app/admin/DevicePolicyResourcesManager;

    return-void
.end method

.method public static disableLocalCaches()V
    .registers 1

    sget-object v0, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    invoke-virtual {v0}, Landroid/os/IpcDataCache$Config;->disableAllForCurrentProcess()V

    return-void
.end method

.method private executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .registers 6

    new-instance v0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p4, p1, p2}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;ILjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeCallback(Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method private extractPackageNameFromDeviceManagerConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_18
    return-object p1
.end method

.method private static getCaCertAlias([B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method private final getService()Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method public static invalidateBinderCaches()V
    .registers 1

    sget-object v0, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    invoke-virtual {v0}, Landroid/os/IpcDataCache$Config;->invalidateCache()V

    return-void
.end method

.method private isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-direct {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isParentInstance()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    return v0
.end method

.method public static isValidOperationSafetyReason(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method static synthetic lambda$executeCallback$0(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p0, :cond_f

    const/4 v2, 0x0

    :try_start_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_12

    :cond_f
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_17

    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static synthetic lambda$executeCallback$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 5

    new-instance v0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3, p1, p2}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$executeCallback$11(Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;->onInstallUpdateError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isPreferentialNetworkServiceEnabled$6(Landroid/app/admin/PreferentialNetworkServiceConfig;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setPermissionGrantState$7(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static operationSafetyReasonToString(I)Ljava/lang/String;
    .registers 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "OPERATION_SAFETY_REASON_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static operationToString(I)Ljava/lang/String;
    .registers 3

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "OPERATION_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private throwIfParentInstance(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be called on the parent instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private wipeDataInternal(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->wipeDataWithReason(ILjava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method


# virtual methods
.method public acknowledgeDeviceCompliant()V
    .registers 3

    const-string v0, "acknowledgeDeviceCompliant"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->acknowledgeDeviceCompliant()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public acknowledgeNewUserDisclaimer()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->acknowledgeNewUserDisclaimer(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .registers 6

    const-string v0, "addCrossProfileIntentFilter"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_9
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "addCrossProfileWidgetProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .registers 5

    const-string v0, "addOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .registers 6

    const-string v0, "addPersistentPreferredActivity"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_9
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :try_start_5
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    :goto_11
    return-void
.end method

.method public approveCaCert(Ljava/lang/String;IZ)Z
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 16

    const-string v0, "bindDeviceAdminServiceAsUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p4}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v7

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    move-object v3, p1

    move-object v6, p2

    move v8, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/admin/IDevicePolicyManager;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2d} :catch_2e

    return v0

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public canAdminGrantSensorsPermissions()Z
    .registers 3

    const-string v0, "canAdminGrantSensorsPermissions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->canAdminGrantSensorsPermissionsForUser(I)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public canProfileOwnerResetPasswordWhenLocked(I)Z
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->canProfileOwnerResetPasswordWhenLocked(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public canUsbDataSignalingBeDisabled()Z
    .registers 3

    const-string v0, "canUsbDataSignalingBeDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->canUsbDataSignalingBeDisabled()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V
    .registers 7

    const-string v0, "clearAppData"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_b
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Landroid/app/admin/DevicePolicyManager$1;

    invoke-direct {v1, p0, p3, p4}, Landroid/app/admin/DevicePolicyManager$1;-><init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_17

    nop

    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "clearCrossProfileIntentFilters"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public clearDeviceOwnerApp(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "clearDeviceOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearDeviceOwner(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public clearOrganizationId()V
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->clearOrganizationIdForUser(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5

    const-string v0, "clearPackagePersistentPreferredActivities"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_9
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "clearProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearProfileOwner(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public clearResetPasswordToken(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "clearResetPasswordToken"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .registers 3

    const-string v0, "clearSystemUpdatePolicyFreezePeriodRecord"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_a

    return-void

    :cond_a
    :try_start_a
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->clearSystemUpdatePolicyFreezePeriodRecord()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    nop

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    :try_start_5
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    :goto_11
    return-void
.end method

.method public createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    const-string v0, "createAdminSupportIntent"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    .registers 13

    const-string v0, "createAndManageUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_17
    move-exception v0

    new-instance v1, Landroid/os/UserManager$UserOperationException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$UserOperationException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;)Landroid/os/UserHandle;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/admin/ProvisioningException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_17
    move-exception v0

    new-instance v1, Landroid/app/admin/ProvisioningException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/admin/ProvisioningException;-><init>(Ljava/lang/Exception;ILjava/lang/String;)V

    throw v1
.end method

.method public createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Landroid/app/admin/ProvisioningIntentHelper;->createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .registers 5

    const-string v0, "enableSystemApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5

    const-string v0, "enableSystemApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_19

    :try_start_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_19
    :goto_19
    return-void
.end method

.method public finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "managedProfileUser can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    nop

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find DevicePolicyManagerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceNetworkLogs()J
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_7
    :try_start_7
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->forceNetworkLogs()J

    move-result-wide v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-wide v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public forceSecurityLogs()J
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    :try_start_7
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->forceSecurityLogs()J

    move-result-wide v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-wide v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public forceUpdateUserSetupComplete(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->forceUpdateUserSetupComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;I)Landroid/security/AttestedKeyPair;
    .registers 16

    const-string v0, "generateKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    new-instance v5, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    invoke-direct {v5, p3}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;-><init>(Landroid/security/keystore/KeyGenParameterSpec;)V

    new-instance v7, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v7}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v1

    if-nez v1, :cond_29

    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Error generating key via DevicePolicyManagerService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_29
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/security/KeyChain;->getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v3
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_33} :catch_c0
    .catch Landroid/security/KeyChainException; {:try_start_6 .. :try_end_33} :catch_b6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_33} :catch_a6
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_33} :catch_6b

    const/4 v4, 0x0

    :try_start_34
    invoke-static {v7}, Landroid/security/keystore/AttestationUtils;->isChainValid(Landroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-static {v7}, Landroid/security/keystore/AttestationUtils;->parseCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)[Ljava/security/cert/X509Certificate;

    move-result-object v6
    :try_end_3e
    .catch Landroid/security/keystore/KeyAttestationException; {:try_start_34 .. :try_end_3e} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3e} :catch_c0
    .catch Landroid/security/KeyChainException; {:try_start_34 .. :try_end_3e} :catch_b6
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3e} :catch_a6
    .catch Landroid/os/ServiceSpecificException; {:try_start_34 .. :try_end_3e} :catch_6b

    move-object v4, v6

    :cond_3f
    nop

    :try_start_40
    new-instance v6, Landroid/security/AttestedKeyPair;

    invoke-direct {v6, v3, v4}, Landroid/security/AttestedKeyPair;-><init>(Ljava/security/KeyPair;[Ljava/security/cert/Certificate;)V

    return-object v6

    :catch_46
    move-exception v6

    sget-object v8, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing attestation chain for alias "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v8, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v9, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, p1, v9, v2}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_6a} :catch_c0
    .catch Landroid/security/KeyChainException; {:try_start_40 .. :try_end_6a} :catch_b6
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_6a} :catch_a6
    .catch Landroid/os/ServiceSpecificException; {:try_start_40 .. :try_end_6a} :catch_6b

    return-object v0

    :catch_6b
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Key Generation failure: %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_c6

    new-instance v1, Ljava/lang/RuntimeException;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Unknown error while generating key: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9e  #0x1
    new-instance v1, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v2, "No StrongBox for key generation."

    invoke-direct {v1, v2}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_a6
    move-exception v1

    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted while generating key"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_be

    :catch_b6
    move-exception v1

    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to generate key"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_be
    nop

    return-object v0

    :catch_c0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_9e  #00000001
    .end packed-switch
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveAdmins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const-string v0, "getActiveAdmins"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminsAsUser(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getAffiliationIds"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAggregatedPasswordComplexityForUser(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0

    return v0
.end method

.method public getAggregatedPasswordComplexityForUser(IZ)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    :try_start_6
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllCrossProfilePackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getAllCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    :try_start_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAlwaysOnVpnLockdownWhitelist(Landroid/content/ComponentName;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getAlwaysOnVpnLockdownWhitelist"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    nop

    :try_start_b
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    :goto_11
    goto :goto_18

    :cond_12
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_19

    goto :goto_11

    :goto_18
    return-object v1

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1f
    return-object v1
.end method

.method public getAlwaysOnVpnPackage()Ljava/lang/String;
    .registers 3

    const-string v0, "getAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_9
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4

    const-string v0, "getAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    const-string v0, "getApplicationRestrictions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "getApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoTimeEnabled(Landroid/content/ComponentName;)Z
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoTimeRequired()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "getAutoTimeRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeRequired()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "getAutoTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    const-string v0, "getBindDeviceAdminTargetUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "getBluetoothContactSharingDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    nop

    :try_start_5
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "getCertInstallerPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCrossProfileCalendarPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getCrossProfileCalendarPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_22

    nop

    :try_start_a
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v1, 0x0

    goto :goto_1b

    :cond_16
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v1

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_22
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getCrossProfileCalendarPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v1, 0x0

    goto :goto_16

    :cond_11
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    :goto_16
    return-object v1

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "getCrossProfileCallerIdDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_4
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "getCrossProfileContactsSearchDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    nop

    :try_start_5
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    :try_start_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getCrossProfileWidgetProviders"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_11

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    goto :goto_17

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_17
    :goto_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFailedPasswordAttempts()I
    .registers 2

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public getDefaultCrossProfilePackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getDefaultCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    :try_start_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getDelegatePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getDelegatedScopes"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "getDeviceOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method

.method public getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .registers 3

    const-string v0, "getDeviceOwnerLockScreenInfo"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOwnerNameOnAnyUser()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "getDeviceOwnerNameOnAnyUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetDeviceOwnerOrganizationNameCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDeviceOwnerType(Landroid/content/ComponentName;)I
    .registers 4

    const-string v0, "getDeviceOwnerType"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceOwnerUser()Landroid/os/UserHandle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_4
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_11

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    return-object v1

    :cond_11
    goto :goto_18

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOwnerUserId()I
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/16 v0, -0x2710

    return v0
.end method

.method public getDevicePolicyManagementRoleHolderPackage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const v1, 0x104003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->extractPackageNameFromDeviceManagerConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDevicePolicyManagementRoleHolderUpdaterPackage()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const v1, 0x1040269

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    return-object v1

    :cond_11
    return-object v0
.end method

.method public getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDoNotAskCredentialsOnBoot()Z
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4

    const-string v0, "getEndUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnrollmentSpecificId()Ljava/lang/String;
    .registers 3

    const-string v0, "getEnrollmentSpecificId"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_c

    const-string v0, ""

    return-object v0

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .registers 4

    const-string v0, "getFactoryResetProtectionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "getForceEphemeralUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "setGlobalPrivateDns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    :cond_c
    :try_start_c
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I
    .registers 4

    const-string/jumbo v0, "setGlobalPrivateDns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    :try_start_c
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getGlobalProxyAdmin()Landroid/content/ComponentName;
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_4
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstalledCaCerts(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "getInstalledCaCerts"

    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_5d

    :try_start_e
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_30} :catch_57

    :try_start_30
    invoke-virtual {v1, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/security/cert/CertificateException; {:try_start_30 .. :try_end_3b} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3b} :catch_57

    goto :goto_55

    :catch_3c
    move-exception v4

    :try_start_3d
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not encode certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_55} :catch_57

    :goto_55
    goto :goto_24

    :cond_56
    goto :goto_5d

    :catch_57
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_5d
    :goto_5d
    return-object v0
.end method

.method public getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getKeepUninstalledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyPairGrants(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "getKeyPairGrants"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/ParcelableGranteeMap;->getPackagesByUid()Ljava/util/Map;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I
    .registers 3

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetKeyGuardDisabledFeaturesCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public getLastBugReportRequestTime()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastBugReportRequestTime()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLastNetworkLogRetrievalTime()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLastSecurityLogRetrievalTime()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLockTaskFeatures(Landroid/content/ComponentName;)I
    .registers 4

    const-string v0, "getLockTaskFeatures"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskFeatures(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .registers 4

    const-string v0, "getLockTaskPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLogoutUser()Landroid/os/UserHandle;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLogoutUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v1

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4

    const-string v0, "getLongSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .registers 4

    const-string v0, "getManagedProfileMaximumTimeOff"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-wide v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .registers 3

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .registers 4

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-wide v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getMeteredDataDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMinimumRequiredWifiSecurityLevel()I
    .registers 3

    const-string v0, "getMinimumRequiredWifiSecurityLevel"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    :try_start_b
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getMinimumRequiredWifiSecurityLevel()I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNearbyAppStreamingPolicy()I
    .registers 2

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v0

    return v0
.end method

.method public getNearbyAppStreamingPolicy(I)I
    .registers 4

    const-string v0, "getNearbyAppStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNearbyNotificationStreamingPolicy()I
    .registers 2

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getNearbyNotificationStreamingPolicy(I)I

    move-result v0

    return v0
.end method

.method public getNearbyNotificationStreamingPolicy(I)I
    .registers 4

    const-string v0, "getNearbyNotificationStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getNearbyNotificationStreamingPolicy(I)I

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOrganizationColor(Landroid/content/ComponentName;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "getOrganizationColor"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOrganizationColorForUser(I)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4

    const-string v0, "getOrganizationName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetOrganizationNameForUserCache:Landroid/os/IpcDataCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    const-string v0, "getOverrideApns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;
    .registers 6

    const-string v0, "getParentProfileInstance"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The current user does not have a parent profile."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_20

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a parent profile."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPasswordComplexity()I
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    :try_start_6
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordComplexity(Z)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;)J
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_4
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-wide v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_4
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-wide v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .registers 3

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMaximumLength(I)I
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.secure_lock_screen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_10
    const/16 v1, 0x10

    return v1
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;
    .registers 4

    const-string v0, "getPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const-string v0, "getPermissionGrantState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPermissionPolicy(Landroid/content/ComponentName;)I
    .registers 4

    const-string v0, "getPermissionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPermittedAccessibilityServices(I)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getPermittedCrossProfileNotificationListeners"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermittedInputMethods()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getPermittedInputMethods"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_9
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethods(Landroid/content/ComponentName;Z)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getPermittedInputMethodsForCurrentUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_9
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .registers 4

    const-string v0, "getPersonalAppsSuspendedReasons"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getPolicyExemptApps()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    :try_start_7
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreferentialNetworkServiceConfigs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "getPreferentialNetworkServiceConfigs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_10

    sget-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_10
    :try_start_10
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProfileOwner()Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "getProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_4
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileOwnerName()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileOwnerNameAsUser(I)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "getProfileOwnerNameAsUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetProfileOwnerOrDeviceOwnerSupervisionComponentCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/16 v0, -0x2710

    return v0
.end method

.method public getProxyParameters(Ljava/net/Proxy;Ljava/util/List;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    if-nez p2, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_36

    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_36
    :goto_36
    invoke-static {v1, v2, v3}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v4

    if-eqz v2, :cond_6b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v5

    if-eqz v5, :cond_6b

    new-instance v5, Landroid/util/Pair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_6b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_12

    :try_start_4
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_12
    :goto_12
    return-void
.end method

.method public getRequiredPasswordComplexity()I
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    :try_start_6
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getRequiredPasswordComplexity(Z)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J
    .registers 4

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-wide v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const-wide/32 v0, 0xf731400

    return-wide v0
.end method

.method public getResources()Landroid/app/admin/DevicePolicyResourcesManager;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mResourcesManager:Landroid/app/admin/DevicePolicyResourcesManager;

    return-object v0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    const-string v0, "getSecondaryUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4

    const-string v0, "getShortSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .registers 4

    const-string v0, "getStartUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "getStorageEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_9
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getStorageEncryptionStatus()I
    .registers 2

    const-string v0, "getStorageEncryptionStatus"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v0

    return v0
.end method

.method public getStorageEncryptionStatus(I)I
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .registers 3

    const-string v0, "getSystemUpdatePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .registers 3

    const-string v0, "getTransferOwnershipBundle"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getUserControlDisabledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserProvisioningState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "getUserProvisioningState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getUserProvisioningState()I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_13

    :try_start_5
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getUserRestrictions(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_d

    move-object v0, v1

    goto :goto_13

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_13
    :goto_13
    if-nez v0, :cond_1b

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    return-object v1
.end method

.method public getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4

    const-string v0, "getWifiMacAddress"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;
    .registers 3

    const-string v0, "getWifiSsidPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    :try_start_b
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public grantKeyPairToApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "grantKeyPairToApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public grantKeyPairToWifiAuth(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "grantKeyPairToWifiAuth"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public hasCaCertInstalled(Landroid/content/ComponentName;[B)Z
    .registers 7

    const-string v0, "hasCaCertInstalled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    :try_start_a
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_24
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_17} :catch_1b

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    :catch_1b
    move-exception v0

    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse certificate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2a
    :goto_2a
    return v1
.end method

.method public hasDeviceIdentifierAccess(Ljava/lang/String;II)Z
    .registers 6

    const-string v0, "hasDeviceIdentifierAccess"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_18

    :try_start_d
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->checkDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 5

    const-string v0, "hasGrantedPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_9
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public hasKeyPair(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "hasKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "hasLockdownAdminConfiguredNetworks"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserSetupCompleted()Z
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .registers 5

    const-string v0, "installCaCert"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "installExistingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z
    .registers 21

    move-object v1, p0

    move-object/from16 v2, p3

    const-string v0, "installKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    and-int/lit8 v0, p5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_10

    move v12, v4

    goto :goto_11

    :cond_10
    move v12, v3

    :goto_11
    and-int/lit8 v0, p5, 0x2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_18

    move v13, v4

    goto :goto_19

    :cond_18
    move v13, v3

    :goto_19
    :try_start_19
    new-array v0, v4, [Ljava/security/cert/Certificate;

    aget-object v5, v2, v3

    aput-object v5, v0, v3

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v9

    const/4 v0, 0x0

    array-length v5, v2

    if-le v5, v4, :cond_33

    array-length v5, v2

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/Certificate;

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    move-object v0, v4

    :cond_33
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    const-class v5, Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3d} :catch_78
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_3d} :catch_6c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_19 .. :try_end_3d} :catch_6c
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_3d} :catch_61
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3d} :catch_61

    move-object/from16 v14, p2

    :try_start_3f
    invoke-virtual {v4, v14, v5}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v4

    check-cast v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v4}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v8

    iget-object v5, v1, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v4, v1, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v6, p1

    move-object v10, v0

    move-object/from16 v11, p4

    invoke-interface/range {v5 .. v13}, Landroid/app/admin/IDevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result v3
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_5a} :catch_5f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3f .. :try_end_5a} :catch_5d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3f .. :try_end_5a} :catch_5d
    .catch Ljava/security/cert/CertificateException; {:try_start_3f .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_5a} :catch_5b

    return v3

    :catch_5b
    move-exception v0

    goto :goto_64

    :catch_5d
    move-exception v0

    goto :goto_6f

    :catch_5f
    move-exception v0

    goto :goto_7b

    :catch_61
    move-exception v0

    move-object/from16 v14, p2

    :goto_64
    sget-object v4, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "Could not pem-encode certificate"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    :catch_6c
    move-exception v0

    move-object/from16 v14, p2

    :goto_6f
    sget-object v4, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to obtain private key material"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_77
    return v3

    :catch_78
    move-exception v0

    move-object/from16 v14, p2

    :goto_7b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z
    .registers 13

    const/4 v0, 0x2

    if-eqz p5, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public installSystemUpdate(Landroid/content/ComponentName;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .registers 8

    const-string v0, "installUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "r"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_52
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_17} :catch_42
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_33

    :try_start_17
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v2, Landroid/app/admin/DevicePolicyManager$2;

    invoke-direct {v2, p0, p3, p4}, Landroid/app/admin/DevicePolicyManager$2;-><init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    invoke-interface {v1, p1, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->installUpdateFromFile(Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_27

    if-eqz v0, :cond_50

    :try_start_23
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_52
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_42
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_33

    goto :goto_50

    :catchall_27
    move-exception v1

    if-eqz v0, :cond_32

    :try_start_2a
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v2

    :try_start_2f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_33} :catch_52
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_33} :catch_42
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_33

    :catch_33
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    goto :goto_51

    :catch_42
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    :cond_50
    :goto_50
    nop

    :goto_51
    return-void

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isActivePasswordSufficient()Z
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_4
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(IZ)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isActivePasswordSufficientForDeviceRequirement()Z
    .registers 3

    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_8
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only callable on the parent instance"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 3

    const-string v0, "isAdminActive"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAdminActiveAsUser(Landroid/content/ComponentName;I)Z
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isAffiliatedUser()Z
    .registers 3

    const-string v0, "isAffiliatedUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isCallingUserAffiliated()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAffiliatedUser(I)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isAffiliatedUser(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAlwaysOnVpnLockdownEnabled()Z
    .registers 3

    const-string v0, "isAlwaysOnVpnLockdownEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_9
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isAlwaysOnVpnLockdownEnabledForUser(I)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isAlwaysOnVpnLockdownEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isBackupServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isCaCertApproved(Ljava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isCallerApplicationRestrictionsManagingPackage()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "isCallerApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isCommonCriteriaModeEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isComplianceAcknowledgementRequired()Z
    .registers 3

    const-string v0, "isComplianceAcknowledgementRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isComplianceAcknowledgementRequired()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentInputMethodSetByOwner()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDeviceIdAttestationSupported()Z
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_id_attestation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isDeviceManaged()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mHasDeviceOwnerCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDeviceOwnerApp(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "isDeviceOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioned()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDeviceProvisioningConfigApplied()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioningConfigApplied()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDpcDownloaded()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "isDpcDownloaded"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDpcDownloaded()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isEphemeralUser(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isEphemeralUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isFactoryResetProtectionPolicySupported()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isFactoryResetProtectionPolicySupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPairGrantedToWifiAuth(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "isKeyPairGrantedToWifiAuth"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "isLockTaskPermitted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isLogoutEnabled()Z
    .registers 3

    const-string v0, "isLogoutEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isLogoutEnabled()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isManagedKiosk()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "isManagedKiosk"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isManagedKiosk()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isManagedProfile(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isMasterVolumeMuted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6

    const-string v0, "getMeteredDataDisabledForUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z
    .registers 3

    const-string v0, "isNetworkLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsNetworkLoggingEnabledCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isNewUserDisclaimerAcknowledged()Z
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isNewUserDisclaimerAcknowledged(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public isOrganizationOwnedDeviceWithManagedProfile()Z
    .registers 3

    const-string v0, "isOrganizationOwnedDeviceWithManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsOrganizationOwnedDeviceWithManagedProfileCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isOverrideApnEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageAllowedToAccessCalendar(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "isPackageAllowedToAccessCalendar"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_19

    nop

    :try_start_a
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string v0, "isPackageSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_21

    :try_start_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public isPasswordSufficientAfterProfileUnification(II)Z
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isPreferentialNetworkServiceEnabled()Z
    .registers 3

    const-string v0, "isPreferentialNetworkServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isProfileOwnerApp(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "isProfileOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    :try_start_a
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_22

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    nop

    :goto_21
    return v1

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_28
    return v1
.end method

.method public isProvisioningAllowed(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "isProvisioningAllowed"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isResetPasswordTokenActive"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isSafeOperation(I)Z
    .registers 4

    const-string v0, "isSafeOperation"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSafeOperation(I)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "isSecondaryLockscreenEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isSecurityLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSupervisionComponent(Landroid/content/ComponentName;)Z
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_4
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSupervisionComponent(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public isUnattendedManagedKiosk()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "isUnattendedManagedKiosk"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isUnattendedManagedKiosk()Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "isUninstallBlocked"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isUninstallInQueue(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUniqueDeviceAttestationSupported()Z
    .registers 3

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.device_unique_attestation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isUsbDataSignalingEnabled()Z
    .registers 3

    const-string v0, "isUsbDataSignalingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_9
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isUsbDataSignalingEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public isUsbDataSignalingEnabledForUser(I)Z
    .registers 4

    const-string v0, "isUsbDataSignalingEnabledForUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUsbDataSignalingEnabledForUser(I)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .registers 4

    const-string v0, "isUsingUnifiedPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$new$10$android-app-admin-DevicePolicyManager(Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$2$android-app-admin-DevicePolicyManager(Landroid/util/Pair;)Ljava/lang/Integer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->isParentInstance()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$3$android-app-admin-DevicePolicyManager(Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$4$android-app-admin-DevicePolicyManager(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$5$android-app-admin-DevicePolicyManager(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$8$android-app-admin-DevicePolicyManager(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$9$android-app-admin-DevicePolicyManager(Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public listForegroundAffiliatedUsers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_9
    :try_start_9
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public lockNow()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->lockNow(I)V

    return-void
.end method

.method public lockNow(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->lockNow(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public logoutUser()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->logoutUserInternal()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public logoutUser(Landroid/content/ComponentName;)I
    .registers 4

    const-string v0, "logoutUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->logoutUser(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected myUserId()I
    .registers 2

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public notifyPendingSystemUpdate(J)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "notifyPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_a
    invoke-static {p1, p2}, Landroid/app/admin/SystemUpdateInfo;->of(J)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    :goto_18
    return-void
.end method

.method public notifyPendingSystemUpdate(JZ)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "notifyPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_a
    invoke-static {p1, p2, p3}, Landroid/app/admin/SystemUpdateInfo;->of(JZ)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    :goto_18
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/admin/ProvisioningException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_21

    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_d} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_21

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_14
    move-exception v0

    new-instance v1, Landroid/app/admin/ProvisioningException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/admin/ProvisioningException;-><init>(Ljava/lang/Exception;ILjava/lang/String;)V

    throw v1

    :cond_21
    :goto_21
    return-void
.end method

.method public reboot(Landroid/content/ComponentName;)V
    .registers 4

    const-string/jumbo v0, "reboot"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reboot(Landroid/content/ComponentName;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 4

    const-string/jumbo v0, "removeActiveAdmin"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_18

    :try_start_a
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_18
    :goto_18
    return-void
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "removeCrossProfileWidgetProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "removeKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeOverrideApn(Landroid/content/ComponentName;I)Z
    .registers 5

    const-string/jumbo v0, "removeOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 5

    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportFailedBiometricAttempt(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedBiometricAttempt(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public reportFailedPasswordAttempt(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public reportKeyguardDismissed(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardDismissed(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public reportKeyguardSecured(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardSecured(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public reportSuccessfulBiometricAttempt(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public requestBugreport(Landroid/content/ComponentName;)Z
    .registers 4

    const-string/jumbo v0, "requestBugreport"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public resetDefaultCrossProfileIntentFilters(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->resetDefaultCrossProfileIntentFilters(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public resetPassword(Ljava/lang/String;I)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "resetPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .registers 7

    const-string/jumbo v0, "resetPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "retrieveNetworkLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "retrievePreRebootSecurityLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_1b

    return-object v1

    :cond_19
    const/4 v1, 0x0

    return-object v1

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public retrieveSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "retrieveSecurityLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_1b

    return-object v1

    :cond_19
    const/4 v1, 0x0

    return-object v1

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public revokeKeyPairFromApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string/jumbo v0, "revokeKeyPairFromApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public revokeKeyPairFromWifiAuth(Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "revokeKeyPairFromWifiAuth"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v0
.end method

.method public sendLostModeLocationUpdate(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "sendLostModeLocationUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->executeCallback(Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :cond_17
    :try_start_17
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, v0}, Landroid/app/admin/IDevicePolicyManager;->sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-direct {p0, v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->executeCallback(Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_26

    nop

    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public setActiveProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "setActiveProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    :try_start_b
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, v1, v0}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    return v1

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_21
    return v1
.end method

.method public setAffiliationIds(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setAffiliationIds"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    if-eqz p2, :cond_1a

    :try_start_8
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ids must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/admin/DevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/Set;)V

    return-void
.end method

.method public setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "setAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_49

    nop

    if-nez p4, :cond_f

    const/4 v1, 0x0

    goto :goto_14

    :cond_f
    :try_start_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_14
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_17
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_17} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_49

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1e
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_4a

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error setting always-on VPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_3f  #0x1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    :goto_49
    return-void

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3f  #00000001
    .end packed-switch
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .registers 10

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "setApplicationRestrictions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "setApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1d

    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setAutoTimeEnabled(Landroid/content/ComponentName;Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeEnabled(Landroid/content/ComponentName;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "setAutoTimeRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setAutoTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setBackupServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setBluetoothContactSharingDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;ZZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "setCertInstallerPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setCommonCriteriaModeEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setConfiguredNetworksLockdownState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setCrossProfileCalendarPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1d

    if-nez p2, :cond_e

    const/4 v1, 0x0

    goto :goto_13

    :cond_e
    :try_start_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_13
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1d
    :goto_1d
    return-void
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setCrossProfileCallerIdDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setCrossProfileContactsSearchDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_19

    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_19
    :goto_19
    return-void
.end method

.method public setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setDelegatedScopes"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return v0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5

    const-string/jumbo v0, "setDeviceOwnerLockScreenInfo"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setDeviceOwnerOnly(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    :try_start_5
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_9} :catch_a

    return v0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    return v1
.end method

.method public setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .registers 5

    const-string/jumbo v0, "setDeviceOwnerType"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwnerType(Landroid/content/ComponentName;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setDeviceProvisioningConfigApplied()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->setDeviceProvisioningConfigApplied()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDpcDownloaded(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "setDpcDownloaded"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setDpcDownloaded(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5

    const-string/jumbo v0, "setEndUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    .registers 5

    const-string/jumbo v0, "setFactoryResetProtectionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setForceEphemeralUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setGlobalPrivateDnsModeOpportunistic(Landroid/content/ComponentName;)I
    .registers 5

    const-string/jumbo v0, "setGlobalPrivateDnsModeOpportunistic"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x2

    if-nez v0, :cond_c

    return v1

    :cond_c
    const/4 v2, 0x0

    :try_start_d
    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setGlobalPrivateDnsModeSpecifiedHost(Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 5

    const-string/jumbo v0, "setGlobalPrivateDnsModeSpecifiedHost"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    const-string v0, "dns resolver is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_11

    const/4 v0, 0x2

    return v0

    :cond_11
    invoke-static {p2}, Lcom/android/internal/net/NetworkUtilsInternal;->isWeaklyValidatedHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p2}, Landroid/net/PrivateDnsConnectivityChecker;->canConnectToPrivateDnsServer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    return v0

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/net/Proxy;Ljava/util/List;)Landroid/content/ComponentName;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    const-string/jumbo v0, "setGlobalProxy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    if-eqz p2, :cond_47

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_45

    :try_start_c
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p2, v0}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_32

    :cond_17
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v0, v1}, Ljava/net/Proxy$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    nop

    invoke-virtual {p0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->getProxyParameters(Ljava/net/Proxy;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v1

    move-object v1, v2

    :goto_32
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_45
    const/4 v0, 0x0

    return-object v0

    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "setGlobalSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setKeepUninstalledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;Z)Z"
        }
    .end annotation

    const-string/jumbo v0, "setKeyPairCertificate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_8
    new-array v2, v0, [Ljava/security/cert/Certificate;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    aput-object v3, v2, v1

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v8

    const/4 v2, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_33

    nop

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p3, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-array v3, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    move-object v2, v0

    :cond_33
    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    move-object v7, p2

    move-object v9, v2

    move v10, p4

    invoke-interface/range {v4 .. v10}, Landroid/app/admin/IDevicePolicyManager;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result v0
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_43} :catch_4d
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_43} :catch_44

    return v0

    :catch_44
    move-exception v0

    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not pem-encode certificate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .registers 5

    const-string/jumbo v0, "setKeyguardDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setLocationEnabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setLocationEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLocationEnabled(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setLockTaskFeatures(Landroid/content/ComponentName;I)V
    .registers 5

    const-string/jumbo v0, "setLockTaskFeatures"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskFeatures(Landroid/content/ComponentName;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string/jumbo v0, "setLockTaskPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setLogoutEnabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setLogoutEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLogoutEnabled(Landroid/content/ComponentName;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5

    const-string/jumbo v0, "setLongSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .registers 6

    const-string/jumbo v0, "setManagedProfileMaximumTimeOff"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setMasterVolumeMuted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "setMeteredDataDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    return-object p2
.end method

.method public setMinimumRequiredWifiSecurityLevel(I)V
    .registers 4

    const-string/jumbo v0, "setMinimumRequiredWifiSecurityLevel"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setMinimumRequiredWifiSecurityLevel(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setNearbyAppStreamingPolicy(I)V
    .registers 4

    const-string/jumbo v0, "setNearbyAppStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setNearbyAppStreamingPolicy(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    nop

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNearbyNotificationStreamingPolicy(I)V
    .registers 4

    const-string/jumbo v0, "setNearbyNotificationStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setNearbyNotificationStreamingPolicy(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    nop

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setNetworkLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNextOperationSafety(II)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setNextOperationSafety(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public setOrganizationColor(Landroid/content/ComponentName;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "setOrganizationColor"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    :try_start_9
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColor(Landroid/content/ComponentName;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    nop

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOrganizationColorForUser(II)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    :try_start_3
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColorForUser(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    nop

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOrganizationId(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "setOrganizationId"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    nop

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5

    const-string/jumbo v0, "setOrganizationName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setOverrideApnEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "setPackagesSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1b

    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1b
    return-object p2
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 13

    const-string/jumbo v0, "setPermissionGrantState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v7, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda2;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_45} :catch_4d
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_45} :catch_46
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_45} :catch_46

    return v1

    :catch_46
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPermissionPolicy(Landroid/content/ComponentName;I)V
    .registers 5

    const-string/jumbo v0, "setPermissionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "setPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "setPermittedCrossProfileNotificationListeners"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_11

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;Z)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setPersonalAppsSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setPreferentialNetworkServiceConfigs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    nop

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPreferentialNetworkServiceEnabled(Z)V
    .registers 4

    const-string/jumbo v0, "setPreferentialNetworkServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    if-eqz p1, :cond_14

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    :cond_14
    invoke-virtual {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V

    return-void
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .registers 4

    const-string/jumbo v0, "setProfileEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "setProfileName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 6
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_16

    if-nez p2, :cond_c

    :try_start_6
    const-string v1, ""

    move-object p2, v1

    goto :goto_c

    :catch_a
    move-exception v0

    goto :goto_11

    :cond_c
    :goto_c
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_a

    return v0

    :goto_11
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public setProfileOwnerCanAccessDeviceIds(Landroid/content/ComponentName;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_11

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;Z)V

    return-void

    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This method is deprecated. use markProfileOwnerOnOrganizationOwnedDevice instead."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .registers 5

    const-string/jumbo v0, "setRecommendedGlobalProxy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setRequiredPasswordComplexity(I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setRequiredPasswordComplexity(IZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    nop

    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRequiredStrongAuthTimeout(Landroid/content/ComponentName;J)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setResetPasswordToken(Landroid/content/ComponentName;[B)Z
    .registers 5

    const-string/jumbo v0, "setResetPasswordToken"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 5

    const-string/jumbo v0, "setRestrictionsProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;ZZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "setSecondaryLockscreenEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "setSecureSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "setSecurityLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    nop

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5

    const-string/jumbo v0, "setShortSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .registers 5

    const-string/jumbo v0, "setStartUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .registers 5

    const-string/jumbo v0, "setStatusBarDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;Z)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "setStorageEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "setSystemSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .registers 5

    const-string/jumbo v0, "setSystemUpdatePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setTime(Landroid/content/ComponentName;J)Z
    .registers 6

    const-string/jumbo v0, "setTime"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setTime(Landroid/content/ComponentName;J)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5

    const-string/jumbo v0, "setTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_10

    :try_start_4
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_10
    :goto_10
    return-void
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .registers 6

    const-string/jumbo v0, "setUninstallBlocked"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setUsbDataSignalingEnabled(Z)V
    .registers 4

    const-string/jumbo v0, "setUsbDataSignalingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1a

    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setUsbDataSignalingEnabled(Ljava/lang/String;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "setUserControlDisabledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_14

    :try_start_a
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .registers 5

    const-string/jumbo v0, "setUserIcon"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserProvisioningState(II)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserProvisioningState(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_e
    :goto_e
    return-void
.end method

.method public setUserProvisioningState(ILandroid/os/UserHandle;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setUserProvisioningState(II)V

    return-void
.end method

.method public setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V
    .registers 4

    const-string/jumbo v0, "setWifiSsidPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_10

    nop

    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public shouldAllowBypassingDevicePolicyManagementRoleQualification()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->shouldAllowBypassingDevicePolicyManagementRoleQualification()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .registers 13

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    return-void
.end method

.method public startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    .registers 16

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move-object v7, p7

    :try_start_9
    invoke-interface/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .registers 5

    const-string/jumbo v0, "startUserInBackground"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startViewCalendarEventInManagedProfile(JJJZI)Z
    .registers 21

    move-object v1, p0

    const-string/jumbo v0, "startViewCalendarEventInManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_24

    :try_start_b
    iget-object v0, v1, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Landroid/app/admin/IDevicePolicyManager;->startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1d} :catch_1e

    return v0

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .registers 5

    const-string/jumbo v0, "stopUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 5

    const-string/jumbo v0, "switchUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .registers 6

    const-string/jumbo v0, "transferOwnership"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public uninstallAllUserCaCerts(Landroid/content/ComponentName;)V
    .registers 6

    const-string/jumbo v0, "uninstallAllUserCaCerts"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2c

    :try_start_a
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2c
    :goto_2c
    return-void
.end method

.method public uninstallCaCert(Landroid/content/ComponentName;[B)V
    .registers 8

    const-string/jumbo v0, "uninstallCaCert"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2e

    :try_start_a
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, p1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_1f} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1f} :catch_20

    goto :goto_2e

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_26
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse certificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .registers 6

    const-string/jumbo v0, "updateOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_15

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public wipeData(I)V
    .registers 3

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeDataInternal(ILjava/lang/String;)V

    return-void
.end method

.method public wipeData(ILjava/lang/CharSequence;)V
    .registers 5

    const-string/jumbo v0, "reason string is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "reason string is empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const-string v1, "WIPE_SILENTLY cannot be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeDataInternal(ILjava/lang/String;)V

    return-void
.end method
