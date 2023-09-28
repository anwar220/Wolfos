# classes3.dex

.class public final Landroid/telephony/CarrierConfigManager$Iwlan;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iwlan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierConfigManager$Iwlan$IkeIdType;,
        Landroid/telephony/CarrierConfigManager$Iwlan$EpdgAddressType;,
        Landroid/telephony/CarrierConfigManager$Iwlan$AuthenticationMethodType;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_METHOD_CERT:I = 0x1

.field public static final AUTHENTICATION_METHOD_EAP_ONLY:I = 0x0

.field public static final EPDG_ADDRESS_CELLULAR_LOC:I = 0x3

.field public static final EPDG_ADDRESS_PCO:I = 0x2

.field public static final EPDG_ADDRESS_PLMN:I = 0x1

.field public static final EPDG_ADDRESS_STATIC:I = 0x0

.field public static final EPDG_ADDRESS_VISITED_COUNTRY:I = 0x4

.field public static final ID_TYPE_FQDN:I = 0x2

.field public static final ID_TYPE_KEY_ID:I = 0xb

.field public static final ID_TYPE_RFC822_ADDR:I = 0x3

.field public static final KEY_ADD_KE_TO_CHILD_SESSION_REKEY_BOOL:Ljava/lang/String; = "iwlan.add_ke_to_child_session_rekey_bool"

.field public static final KEY_CHILD_SA_REKEY_HARD_TIMER_SEC_INT:Ljava/lang/String; = "iwlan.child_sa_rekey_hard_timer_sec_int"

.field public static final KEY_CHILD_SA_REKEY_SOFT_TIMER_SEC_INT:Ljava/lang/String; = "iwlan.child_sa_rekey_soft_timer_sec_int"

.field public static final KEY_CHILD_SESSION_AES_CBC_KEY_SIZE_INT_ARRAY:Ljava/lang/String; = "iwlan.child_session_aes_cbc_key_size_int_array"

.field public static final KEY_CHILD_SESSION_AES_CTR_KEY_SIZE_INT_ARRAY:Ljava/lang/String; = "iwlan.child_session_aes_ctr_key_size_int_array"

.field public static final KEY_DIFFIE_HELLMAN_GROUPS_INT_ARRAY:Ljava/lang/String; = "iwlan.diffie_hellman_groups_int_array"

.field public static final KEY_DPD_TIMER_SEC_INT:Ljava/lang/String; = "iwlan.dpd_timer_sec_int"

.field public static final KEY_EPDG_ADDRESS_PRIORITY_INT_ARRAY:Ljava/lang/String; = "iwlan.epdg_address_priority_int_array"

.field public static final KEY_EPDG_AUTHENTICATION_METHOD_INT:Ljava/lang/String; = "iwlan.epdg_authentication_method_int"

.field public static final KEY_EPDG_PCO_ID_IPV4_INT:Ljava/lang/String; = "iwlan.epdg_pco_id_ipv4_int"

.field public static final KEY_EPDG_PCO_ID_IPV6_INT:Ljava/lang/String; = "iwlan.epdg_pco_id_ipv6_int"

.field public static final KEY_EPDG_STATIC_ADDRESS_ROAMING_STRING:Ljava/lang/String; = "iwlan.epdg_static_address_roaming_string"

.field public static final KEY_EPDG_STATIC_ADDRESS_STRING:Ljava/lang/String; = "iwlan.epdg_static_address_string"

.field public static final KEY_IKE_LOCAL_ID_TYPE_INT:Ljava/lang/String; = "iwlan.ike_local_id_type_int"

.field public static final KEY_IKE_REKEY_HARD_TIMER_SEC_INT:Ljava/lang/String; = "iwlan.ike_rekey_hard_timer_in_sec"

.field public static final KEY_IKE_REKEY_SOFT_TIMER_SEC_INT:Ljava/lang/String; = "iwlan.ike_rekey_soft_timer_sec_int"

.field public static final KEY_IKE_REMOTE_ID_TYPE_INT:Ljava/lang/String; = "iwlan.ike_remote_id_type_int"

.field public static final KEY_IKE_SESSION_AES_CBC_KEY_SIZE_INT_ARRAY:Ljava/lang/String; = "iwlan.ike_session_encryption_aes_cbc_key_size_int_array"

.field public static final KEY_IKE_SESSION_AES_CTR_KEY_SIZE_INT_ARRAY:Ljava/lang/String; = "iwlan.ike_session_encryption_aes_ctr_key_size_int_array"

.field public static final KEY_MAX_RETRIES_INT:Ljava/lang/String; = "iwlan.max_retries_int"

.field public static final KEY_MCC_MNCS_STRING_ARRAY:Ljava/lang/String; = "iwlan.mcc_mncs_string_array"

.field public static final KEY_NATT_KEEP_ALIVE_TIMER_SEC_INT:Ljava/lang/String; = "iwlan.natt_keep_alive_timer_sec_int"

.field public static final KEY_PREFIX:Ljava/lang/String; = "iwlan."

.field public static final KEY_RETRANSMIT_TIMER_MSEC_INT_ARRAY:Ljava/lang/String; = "iwlan.retransmit_timer_sec_int_array"

.field public static final KEY_SUPPORTED_CHILD_SESSION_ENCRYPTION_ALGORITHMS_INT_ARRAY:Ljava/lang/String; = "iwlan.supported_child_session_encryption_algorithms_int_array"

.field public static final KEY_SUPPORTED_IKE_SESSION_ENCRYPTION_ALGORITHMS_INT_ARRAY:Ljava/lang/String; = "iwlan.supported_ike_session_encryption_algorithms_int_array"

.field public static final KEY_SUPPORTED_INTEGRITY_ALGORITHMS_INT_ARRAY:Ljava/lang/String; = "iwlan.supported_integrity_algorithms_int_array"

.field public static final KEY_SUPPORTED_PRF_ALGORITHMS_INT_ARRAY:Ljava/lang/String; = "iwlan.supported_prf_algorithms_int_array"

.field public static final KEY_SUPPORTS_EAP_AKA_FAST_REAUTH_BOOL:Ljava/lang/String; = "iwlan.supports_eap_aka_fast_reauth_bool"


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Iwlan;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaults()Landroid/os/PersistableBundle;
    .registers 8

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "iwlan.ike_rekey_soft_timer_sec_int"

    const/16 v2, 0x1c20

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "iwlan.ike_rekey_hard_timer_in_sec"

    const/16 v3, 0x3840

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "iwlan.child_sa_rekey_soft_timer_sec_int"

    const/16 v3, 0xe10

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "iwlan.child_sa_rekey_hard_timer_sec_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x5

    new-array v2, v1, [I

    fill-array-data v2, :array_f8

    const-string/jumbo v3, "iwlan.retransmit_timer_sec_int_array"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v2, "iwlan.dpd_timer_sec_int"

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "iwlan.max_retries_int"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    new-array v2, v3, [I

    fill-array-data v2, :array_106

    const-string/jumbo v4, "iwlan.diffie_hellman_groups_int_array"

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v2, 0x1

    new-array v4, v2, [I

    const/4 v5, 0x0

    const/16 v6, 0xc

    aput v6, v4, v5

    const-string/jumbo v7, "iwlan.supported_ike_session_encryption_algorithms_int_array"

    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v2, v2, [I

    aput v6, v2, v5

    const-string/jumbo v4, "iwlan.supported_child_session_encryption_algorithms_int_array"

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v2, v1, [I

    fill-array-data v2, :array_110

    const-string/jumbo v4, "iwlan.supported_integrity_algorithms_int_array"

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v1, v1, [I

    fill-array-data v1, :array_11e

    const-string/jumbo v2, "iwlan.supported_prf_algorithms_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v1, "iwlan.epdg_authentication_method_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "iwlan.epdg_static_address_string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "iwlan.epdg_static_address_roaming_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "iwlan.natt_keep_alive_timer_sec_int"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    new-array v1, v3, [I

    fill-array-data v1, :array_12c

    const-string/jumbo v2, "iwlan.ike_session_encryption_aes_cbc_key_size_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v1, v3, [I

    fill-array-data v1, :array_136

    const-string/jumbo v2, "iwlan.child_session_aes_cbc_key_size_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v1, v3, [I

    fill-array-data v1, :array_140

    const-string/jumbo v2, "iwlan.ike_session_encryption_aes_ctr_key_size_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v1, v3, [I

    fill-array-data v1, :array_14a

    const-string/jumbo v2, "iwlan.child_session_aes_ctr_key_size_int_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_154

    const-string/jumbo v4, "iwlan.epdg_address_priority_int_array"

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "iwlan.mcc_mncs_string_array"

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v2, "iwlan.ike_local_id_type_int"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "iwlan.ike_remote_id_type_int"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "iwlan.add_ke_to_child_session_rekey_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "iwlan.epdg_pco_id_ipv6_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "iwlan.epdg_pco_id_ipv4_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "iwlan.supports_eap_aka_fast_reauth_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :array_f8
    .array-data 4
        0x1f4
        0x3e8
        0x7d0
        0xfa0
        0x1f40
    .end array-data

    :array_106
    .array-data 4
        0x2
        0x5
        0xe
    .end array-data

    :array_110
    .array-data 4
        0x5
        0x2
        0xc
        0xd
        0xe
    .end array-data

    :array_11e
    .array-data 4
        0x2
        0x4
        0x5
        0x6
        0x7
    .end array-data

    :array_12c
    .array-data 4
        0x80
        0xc0
        0x100
    .end array-data

    :array_136
    .array-data 4
        0x80
        0xc0
        0x100
    .end array-data

    :array_140
    .array-data 4
        0x80
        0xc0
        0x100
    .end array-data

    :array_14a
    .array-data 4
        0x80
        0xc0
        0x100
    .end array-data

    :array_154
    .array-data 4
        0x1
        0x0
    .end array-data
.end method
