# classes2.dex

.class public final synthetic Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;
    .registers 2

    check-cast p1, Landroid/net/ipsec/ike/IkeTrafficSelector;

    invoke-static {p1}, Landroid/net/vcn/persistablebundleutils/IkeTrafficSelectorUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1
.end method
