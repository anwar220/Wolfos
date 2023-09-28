# classes3.dex

.class public Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;


# instance fields
.field private final mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    return-void
.end method


# virtual methods
.method public onCommandError(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onCommandError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public onNetworkResponse(ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkResponse(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/telephony/ims/aidl/IPublishResponseCallback;->onNetworkRespHeader(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
