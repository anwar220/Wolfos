# classes2.dex

.class public final Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;
    }
.end annotation


# static fields
.field private static final EAP_AKA_CONFIG_KEY:Ljava/lang/String; = "EAP_AKA_CONFIG_KEY"

.field private static final EAP_AKA_PRIME_CONFIG_KEY:Ljava/lang/String; = "EAP_AKA_PRIME_CONFIG_KEY"

.field private static final EAP_ID_KEY:Ljava/lang/String; = "EAP_ID_KEY"

.field private static final EAP_MSCHAP_V2_CONFIG_KEY:Ljava/lang/String; = "EAP_MSCHAP_V2_CONFIG_KEY"

.field private static final EAP_SIM_CONFIG_KEY:Ljava/lang/String; = "EAP_SIM_CONFIG_KEY"

.field private static final EAP_TTLS_CONFIG_KEY:Ljava/lang/String; = "EAP_TTLS_CONFIG_KEY"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;
    .registers 9

    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/eap/EapSessionConfig$Builder;

    invoke-direct {v0}, Landroid/net/eap/EapSessionConfig$Builder;-><init>()V

    const-string v1, "EAP_ID_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "EAP ID was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/eap/EapSessionConfig$Builder;->setEapIdentity([B)Landroid/net/eap/EapSessionConfig$Builder;

    const-string v2, "EAP_SIM_CONFIG_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-static {v2, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    :cond_27
    const-string v3, "EAP_TTLS_CONFIG_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-static {v3, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    :cond_32
    const-string v4, "EAP_AKA_CONFIG_KEY"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-static {v4, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    :cond_3d
    const-string v5, "EAP_MSCHAP_V2_CONFIG_KEY"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    if-eqz v5, :cond_48

    invoke-static {v5, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    :cond_48
    const-string v6, "EAP_AKA_PRIME_CONFIG_KEY"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_53

    invoke-static {v6, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    :cond_53
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$Builder;->build()Landroid/net/eap/EapSessionConfig;

    move-result-object v7

    return-object v7
.end method

.method public static toPersistableBundle(Landroid/net/eap/EapSessionConfig;)Landroid/os/PersistableBundle;
    .registers 4

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    nop

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "EAP_ID_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapSimConfig()Landroid/net/eap/EapSessionConfig$EapSimConfig;

    move-result-object v1

    if-eqz v1, :cond_27

    nop

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapSimConfig()Landroid/net/eap/EapSessionConfig$EapSimConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapSimConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "EAP_SIM_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    :cond_27
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapTtlsConfig()Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v1

    if-eqz v1, :cond_3b

    nop

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapTtlsConfig()Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapTtlsConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "EAP_TTLS_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    :cond_3b
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v1

    if-eqz v1, :cond_4f

    nop

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapAkaConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "EAP_AKA_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    :cond_4f
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapMsChapV2Config()Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v1

    if-eqz v1, :cond_63

    nop

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapMsChapV2Config()Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "EAP_MSCHAP_V2_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    :cond_63
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaPrimeConfig()Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    move-result-object v1

    if-eqz v1, :cond_77

    nop

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaPrimeConfig()Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "EAP_AKA_PRIME_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    :cond_77
    return-object v0
.end method
