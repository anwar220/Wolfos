# classes3.dex

.class public Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/ims/stub/CapabilityExchangeEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapExchangeListener"


# instance fields
.field private final mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    return-void
.end method


# virtual methods
.method public onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    nop

    return-void

    :catch_a
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPublishUpdated exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const/4 v3, 0x1

    const-string v4, "Remote is not available"

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;

    invoke-direct {v1, p0, p3}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    :try_start_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v2, v1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote capability request exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CapExchangeListener"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/telephony/ims/ImsException;

    const/4 v4, 0x1

    const-string v5, "Remote is not available"

    invoke-direct {v3, v5, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public onRequestPublishCapabilities(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    nop

    return-void

    :catch_a
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request publish capabilities exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const/4 v3, 0x1

    const-string v4, "Remote is not available"

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public onUnpublish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->mListenerBinder:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-interface {v0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->onUnpublish()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    nop

    return-void

    :catch_a
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unpublish exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapExchangeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/telephony/ims/ImsException;

    const/4 v3, 0x1

    const-string v4, "Remote is not available"

    invoke-direct {v2, v4, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method
