# classes3.dex

.class public Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;


# instance fields
.field private final mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    return-void
.end method


# virtual methods
.method public onCommandError(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IOptionsResponseCallback;->onCommandError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method

.method public onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;->mResponseBinder:Landroid/telephony/ims/aidl/IOptionsResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IOptionsResponseCallback;->onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method
