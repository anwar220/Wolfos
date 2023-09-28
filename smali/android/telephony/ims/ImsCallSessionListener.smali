# classes3.dex

.class public Landroid/telephony/ims/ImsCallSessionListener;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-void
.end method


# virtual methods
.method public callQualityChanged(Landroid/telephony/CallQuality;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callQualityChanged(Landroid/telephony/CallQuality;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionConferenceExtendReceived(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_12
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionConferenceExtended(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_12
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionDtmfReceived(C)V
    .registers 4

    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-le p1, v0, :cond_29

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_10

    const/16 v0, 0x44

    if-le p1, v0, :cond_29

    :cond_10
    const/16 v0, 0x61

    if-lt p1, v0, :cond_18

    const/16 v0, 0x64

    if-le p1, v0, :cond_29

    :cond_18
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_29

    const/16 v0, 0x23

    if-ne p1, v0, :cond_21

    goto :goto_29

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DTMF digit must be 0-9, *, #, A, B, C, D"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_29
    :try_start_29
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionDtmfReceived(C)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_37
    return-void
.end method

.method public callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/telephony/ims/ImsCallSessionListener;->onHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionMayHandover(II)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->onMayHandover(II)V

    return-void
.end method

.method public callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_12
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionMergeStarted(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-interface {v0, v1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_12
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionMultipartyStateChanged(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionRtpHeaderExtensionsReceived(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extensions are required."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRtpHeaderExtensionsReceived(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_14
    return-void
.end method

.method public callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionRttMessageReceived(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionRttModifyResponseReceived(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionTransferred()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTransferred()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionTtyModeReceived(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTtyModeReceived(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public callSessionUssdMessageReceived(ILjava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public onHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public onHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method

.method public onMayHandover(II)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSessionListener;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMayHandover(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_a
    return-void
.end method
