# classes3.dex

.class public final Landroid/telephony/CarrierConfigManager$ImsSs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsSs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierConfigManager$ImsSs$SsType;
    }
.end annotation


# static fields
.field public static final KEY_NETWORK_INITIATED_USSD_OVER_IMS_SUPPORTED_BOOL:Ljava/lang/String; = "imsss.network_initiated_ussd_over_ims_supported_bool"

.field public static final KEY_PREFIX:Ljava/lang/String; = "imsss."

.field public static final KEY_USE_CSFB_ON_XCAP_OVER_UT_FAILURE_BOOL:Ljava/lang/String; = "imsss.use_csfb_on_xcap_over_ut_failure_bool"

.field public static final KEY_UT_AS_SERVER_FQDN_STRING:Ljava/lang/String; = "imsss.ut_as_server_fqdn_string"

.field public static final KEY_UT_AS_SERVER_PORT_INT:Ljava/lang/String; = "imsss.ut_as_server_port_int"

.field public static final KEY_UT_IPTYPE_HOME_INT:Ljava/lang/String; = "imsss.ut_iptype_home_int"

.field public static final KEY_UT_IPTYPE_ROAMING_INT:Ljava/lang/String; = "imsss.ut_iptype_roaming_int"

.field public static final KEY_UT_REQUIRES_IMS_REGISTRATION_BOOL:Ljava/lang/String; = "imsss.ut_requires_ims_registration_bool"

.field public static final KEY_UT_SERVER_BASED_SERVICES_INT_ARRAY:Ljava/lang/String; = "imsss.ut_server_based_services_int_array"

.field public static final KEY_UT_SUPPORTED_WHEN_PS_DATA_OFF_BOOL:Ljava/lang/String; = "imsss.ut_supported_when_ps_data_off_bool"

.field public static final KEY_UT_SUPPORTED_WHEN_ROAMING_BOOL:Ljava/lang/String; = "imsss.ut_supported_when_roaming_bool"

.field public static final KEY_UT_TERMINAL_BASED_SERVICES_INT_ARRAY:Ljava/lang/String; = "imsss.ut_terminal_based_services_int_array"

.field public static final KEY_UT_TRANSPORT_TYPE_INT:Ljava/lang/String; = "imsss.ut_transport_type_int"

.field public static final KEY_XCAP_OVER_UT_SUPPORTED_RATS_INT_ARRAY:Ljava/lang/String; = "imsss.xcap_over_ut_supported_rats_int_array"

.field public static final SUPPLEMENTARY_SERVICE_CB_ACR:I = 0x14

.field public static final SUPPLEMENTARY_SERVICE_CB_ALL:I = 0xc

.field public static final SUPPLEMENTARY_SERVICE_CB_BAIC:I = 0x12

.field public static final SUPPLEMENTARY_SERVICE_CB_BAOC:I = 0xe

.field public static final SUPPLEMENTARY_SERVICE_CB_BIC_ROAM:I = 0x13

.field public static final SUPPLEMENTARY_SERVICE_CB_BIL:I = 0x15

.field public static final SUPPLEMENTARY_SERVICE_CB_BOIC:I = 0xf

.field public static final SUPPLEMENTARY_SERVICE_CB_BOIC_EXHC:I = 0x10

.field public static final SUPPLEMENTARY_SERVICE_CB_IBS:I = 0x11

.field public static final SUPPLEMENTARY_SERVICE_CB_OBS:I = 0xd

.field public static final SUPPLEMENTARY_SERVICE_CF_ALL:I = 0x1

.field public static final SUPPLEMENTARY_SERVICE_CF_ALL_CONDITONAL_FORWARDING:I = 0x3

.field public static final SUPPLEMENTARY_SERVICE_CF_CFB:I = 0x4

.field public static final SUPPLEMENTARY_SERVICE_CF_CFNL:I = 0x7

.field public static final SUPPLEMENTARY_SERVICE_CF_CFNRC:I = 0x6

.field public static final SUPPLEMENTARY_SERVICE_CF_CFNRY:I = 0x5

.field public static final SUPPLEMENTARY_SERVICE_CF_CFU:I = 0x2

.field public static final SUPPLEMENTARY_SERVICE_CW:I = 0x0

.field public static final SUPPLEMENTARY_SERVICE_IDENTIFICATION_OIP:I = 0x8

.field public static final SUPPLEMENTARY_SERVICE_IDENTIFICATION_OIR:I = 0xa

.field public static final SUPPLEMENTARY_SERVICE_IDENTIFICATION_TIP:I = 0x9

.field public static final SUPPLEMENTARY_SERVICE_IDENTIFICATION_TIR:I = 0xb


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsSs;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaults()Landroid/os/PersistableBundle;
    .registers 6

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "imsss.ut_requires_ims_registration_bool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsss.use_csfb_on_xcap_over_ut_failure_bool"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsss.ut_supported_when_ps_data_off_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsss.network_initiated_ussd_over_ims_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsss.ut_supported_when_roaming_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsss.ut_iptype_home_int"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsss.ut_iptype_roaming_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsss.ut_as_server_port_int"

    const/16 v5, 0x50

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsss.ut_transport_type_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x16

    new-array v1, v1, [I

    fill-array-data v1, :array_6a

    const-string/jumbo v3, "imsss.ut_server_based_services_int_array"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v1, v2, [I

    const-string/jumbo v2, "imsss.ut_terminal_based_services_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v1, v4, [I

    fill-array-data v1, :array_9a

    const-string/jumbo v2, "imsss.xcap_over_ut_supported_rats_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v1, "imsss.ut_as_server_fqdn_string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :array_6a
    .array-data 4
        0x0
        0x1
        0x2
        0x6
        0x3
        0x4
        0x5
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x11
        0xe
        0xf
        0x10
        0x12
        0x13
        0x14
        0x15
    .end array-data

    :array_9a
    .array-data 4
        0x3
        0x5
    .end array-data
.end method
