# classes2.dex

.class public final synthetic Landroid/net/vcn/persistablebundleutils/TunnelModeChildSessionParamsUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/net/vcn/persistablebundleutils/ChildSaProposalUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object p1

    return-object p1
.end method
