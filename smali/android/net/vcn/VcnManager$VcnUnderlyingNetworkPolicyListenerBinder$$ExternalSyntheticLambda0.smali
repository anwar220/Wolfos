# classes2.dex

.class public final synthetic Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda0;->f$0:Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda0;->f$0:Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    invoke-virtual {v0}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->lambda$onPolicyChanged$1$android-net-vcn-VcnManager$VcnUnderlyingNetworkPolicyListenerBinder()V

    return-void
.end method