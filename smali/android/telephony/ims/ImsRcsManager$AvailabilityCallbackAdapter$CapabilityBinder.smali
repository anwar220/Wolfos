# classes3.dex

.class Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CapabilityBinder"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;


# direct methods
.method constructor <init>(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCapabilitiesStatusChanged$0$android-telephony-ims-ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder(I)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;->onAvailabilityChanged(I)V

    return-void
.end method

.method public onCapabilitiesStatusChanged(I)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mOnAvailabilityChangedListener:Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter$CapabilityBinder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onChangeCapabilityConfigurationError(III)V
    .registers 4

    return-void
.end method

.method public onQueryCapabilityConfiguration(IIZ)V
    .registers 4

    return-void
.end method
