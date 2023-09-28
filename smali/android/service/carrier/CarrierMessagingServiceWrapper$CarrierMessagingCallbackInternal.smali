# classes3.dex

.class final Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierMessagingCallbackInternal"
.end annotation


# instance fields
.field final mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;


# direct methods
.method constructor <init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->this$0:Landroid/service/carrier/CarrierMessagingServiceWrapper;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    iput-object p3, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method synthetic lambda$onDownloadMmsComplete$4$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(I)V
    .registers 3

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onDownloadMmsComplete(I)V

    return-void
.end method

.method synthetic lambda$onFilterComplete$0$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(I)V
    .registers 3

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onReceiveSmsComplete(I)V

    return-void
.end method

.method synthetic lambda$onSendMmsComplete$3$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(I[B)V
    .registers 4

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendMmsComplete(I[B)V

    return-void
.end method

.method synthetic lambda$onSendMultipartSmsComplete$2$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(I[I)V
    .registers 4

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendMultipartSmsComplete(I[I)V

    return-void
.end method

.method synthetic lambda$onSendSmsComplete$1$android-service-carrier-CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal(II)V
    .registers 4

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mCarrierMessagingCallback:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;

    invoke-interface {v0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;->onSendSmsComplete(II)V

    return-void
.end method

.method public onDownloadMmsComplete(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda4;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFilterComplete(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda0;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendMmsComplete(I[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda3;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda2;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;I[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSendSmsComplete(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal$$ExternalSyntheticLambda1;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
