# classes2.dex

.class Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;
.super Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VcnUnderlyingNetworkPolicyListenerBinder"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .registers 3

    invoke-direct {p0}, Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->mListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPolicyChanged$0$android-net-vcn-VcnManager$VcnUnderlyingNetworkPolicyListenerBinder()V
    .registers 2

    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->mListener:Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;

    invoke-interface {v0}, Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;->onPolicyChanged()V

    return-void
.end method

.method synthetic lambda$onPolicyChanged$1$android-net-vcn-VcnManager$VcnUnderlyingNetworkPolicyListenerBinder()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda1;-><init>(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPolicyChanged()V
    .registers 2

    new-instance v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder$$ExternalSyntheticLambda0;-><init>(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
