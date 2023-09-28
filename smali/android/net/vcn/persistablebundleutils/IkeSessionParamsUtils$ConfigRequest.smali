# classes2.dex

.class final Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfigRequest"
.end annotation


# static fields
.field private static final ADDRESS_KEY:Ljava/lang/String; = "address"

.field private static final IPV4_P_CSCF_ADDRESS:I = 0x1

.field private static final IPV6_P_CSCF_ADDRESS:I = 0x2

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field public final address:Ljava/net/InetAddress;

.field public final type:I


# direct methods
.method constructor <init>(Landroid/net/ipsec/ike/IkeSessionParams$IkeConfigRequest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv4PcscfServer;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->type:I

    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv4PcscfServer;

    invoke-interface {v0}, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv4PcscfServer;->getAddress()Ljava/net/Inet4Address;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_24

    :cond_14
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv6PcscfServer;

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->type:I

    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv6PcscfServer;

    invoke-interface {v0}, Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv6PcscfServer;->getAddress()Ljava/net/Inet6Address;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    :goto_24
    return-void

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown TunnelModeChildConfigRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PersistableBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->type:I

    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    goto :goto_22

    :cond_1c
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    :goto_22
    return-void
.end method


# virtual methods
.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget v1, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->type:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$ConfigRequest;->address:Ljava/net/InetAddress;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-object v0
.end method
