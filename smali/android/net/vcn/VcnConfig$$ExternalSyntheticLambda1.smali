# classes2.dex

.class public final synthetic Landroid/net/vcn/VcnConfig$$ExternalSyntheticLambda1;
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
    .registers 3

    new-instance v0, Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-direct {v0, p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method
