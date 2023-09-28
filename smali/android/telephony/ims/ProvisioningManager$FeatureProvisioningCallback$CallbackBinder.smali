# classes3.dex

.class Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;
.super Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;


# direct methods
.method static bridge synthetic -$$Nest$msetExecutor(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;)V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;)V

    return-void
.end method

.method private setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method synthetic lambda$onFeatureProvisioningChanged$0$android-telephony-ims-ProvisioningManager$FeatureProvisioningCallback$CallbackBinder(IIZ)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->onFeatureProvisioningChanged(IIZ)V

    return-void
.end method

.method synthetic lambda$onRcsFeatureProvisioningChanged$1$android-telephony-ims-ProvisioningManager$FeatureProvisioningCallback$CallbackBinder(IIZ)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mFeatureProvisioningCallback:Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback;->onRcsFeatureProvisioningChanged(IIZ)V

    return-void
.end method

.method public final onFeatureProvisioningChanged(IIZ)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final onRcsFeatureProvisioningChanged(IIZ)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;IIZ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ProvisioningManager$FeatureProvisioningCallback$CallbackBinder;->restoreCallingIdentity(J)V

    throw v2
.end method
