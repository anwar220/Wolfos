# classes2.dex

.class final Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;
.super Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EapAkaPrimeConfigUtils"
.end annotation


# static fields
.field private static final ALL_MISMATCHED_NETWORK_KEY:Ljava/lang/String; = "ALL_MISMATCHED_NETWORK_KEY"

.field private static final NETWORK_NAME_KEY:Ljava/lang/String; = "NETWORK_NAME_KEY"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;-><init>(Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils-IA;)V

    return-void
.end method

.method public static setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V
    .registers 6

    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    const-string v0, "SUB_ID_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "APP_TYPE_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "NETWORK_NAME_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ALL_MISMATCHED_NETWORK_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/net/eap/EapSessionConfig$Builder;->setEapAkaPrimeConfig(IILjava/lang/String;Z)Landroid/net/eap/EapSessionConfig$Builder;

    return-void
.end method

.method public static toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;)Landroid/os/PersistableBundle;
    .registers 4

    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapUiccConfig;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NETWORK_NAME_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;->allowsMismatchedNetworkNames()Z

    move-result v1

    const-string v2, "ALL_MISMATCHED_NETWORK_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
