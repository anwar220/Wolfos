# classes2.dex

.class final Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;
.super Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EapTtlsConfigUtils"
.end annotation


# static fields
.field private static final EAP_SESSION_CONFIG_KEY:Ljava/lang/String; = "EAP_SESSION_CONFIG_KEY"

.field private static final TRUST_CERT_KEY:Ljava/lang/String; = "TRUST_CERT_KEY"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;-><init>(Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils-IA;)V

    return-void
.end method

.method public static setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V
    .registers 6

    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "TRUST_CERT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    nop

    invoke-static {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    :cond_17
    nop

    const-string v2, "EAP_SESSION_CONFIG_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "Inner EAP Session Config was null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    invoke-static {v2}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/net/eap/EapSessionConfig$Builder;->setEapTtlsConfig(Ljava/security/cert/X509Certificate;Landroid/net/eap/EapSessionConfig;)Landroid/net/eap/EapSessionConfig$Builder;

    return-void
.end method

.method public static toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapTtlsConfig;)Landroid/os/PersistableBundle;
    .registers 5

    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getServerCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1c

    nop

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getServerCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "TRUST_CERT_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_1c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_1c} :catch_2c

    :cond_1c
    nop

    nop

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;->getInnerEapSessionConfig()Landroid/net/eap/EapSessionConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "EAP_SESSION_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0

    :catch_2c
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Fail to encode the certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
