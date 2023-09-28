# classes3.dex

.class Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
.super Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyRegistryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarrierPrivilegesCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic lambda$onCarrierPrivilegesChanged$0(Ljava/util/Set;Ljava/util/Set;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic lambda$onCarrierServiceChanged$2(Ljava/lang/String;ILandroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCarrierPrivilegesChanged$1$android-telephony-TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ref/WeakReference;)V

    new-instance v1, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {p0, v0, v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method synthetic lambda$onCarrierServiceChanged$3$android-telephony-TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ref/WeakReference;)V

    new-instance v1, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public onCarrierPrivilegesChanged(Ljava/util/List;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onCarrierServiceChanged(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
