# classes3.dex

.class public Landroid/telephony/data/DataServiceCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataServiceCallback$ResultCode;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final RESULT_ERROR_BUSY:I = 0x3

.field public static final RESULT_ERROR_ILLEGAL_STATE:I = 0x4

.field public static final RESULT_ERROR_INVALID_ARG:I = 0x2

.field public static final RESULT_ERROR_TEMPORARILY_UNAVAILABLE:I = 0x5

.field public static final RESULT_ERROR_UNSUPPORTED:I = 0x1

.field public static final RESULT_SUCCESS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Landroid/telephony/data/IDataServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/telephony/data/DataServiceCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    return-void
.end method

.method public static resultCodeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d  #0x5
    const-string v0, "RESULT_ERROR_TEMPORARILY_UNAVAILABLE"

    return-object v0

    :pswitch_20  #0x4
    const-string v0, "RESULT_ERROR_ILLEGAL_STATE"

    return-object v0

    :pswitch_23  #0x3
    const-string v0, "RESULT_ERROR_BUSY"

    return-object v0

    :pswitch_26  #0x2
    const-string v0, "RESULT_ERROR_INVALID_ARG"

    return-object v0

    :pswitch_29  #0x1
    const-string v0, "RESULT_ERROR_UNSUPPORTED"

    return-object v0

    :pswitch_2c  #0x0
    const-string v0, "RESULT_SUCCESS"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c  #00000000
        :pswitch_29  #00000001
        :pswitch_26  #00000002
        :pswitch_23  #00000003
        :pswitch_20  #00000004
        :pswitch_1d  #00000005
    .end packed-switch
.end method


# virtual methods
.method public onApnUnthrottled(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1c

    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onApnUnthrottled"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onApnUnthrottled(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onApnUnthrottled: remote exception"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    goto :goto_24

    :cond_1c
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onApnUnthrottled: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public onDataCallListChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataCallListChanged"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to onDataCallListChanged on the remote"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    goto :goto_23

    :cond_1b
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataCallListChanged: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1c

    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataProfileUnthrottled"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDataProfileUnthrottled: remote exception"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    goto :goto_24

    :cond_1c
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataProfileUnthrottled: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public onDeactivateDataCallComplete(I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeactivateDataCallComplete"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDeactivateDataCallComplete(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to onDeactivateDataCallComplete on the remote"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    goto :goto_23

    :cond_1b
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeactivateDataCallComplete: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public onHandoverCancelled(I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHandoverCancelled"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onHandoverCancelled(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to onHandoverCancelled on the remote"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    goto :goto_23

    :cond_1b
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHandoverCancelled: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public onHandoverStarted(I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHandoverStarted"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onHandoverStarted(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to onHandoverStarted on the remote"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    goto :goto_23

    :cond_1b
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHandoverStarted: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public onRequestDataCallListComplete(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_11

    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IDataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to onRequestDataCallListComplete on the remote"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    goto :goto_19

    :cond_11
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRequestDataCallListComplete: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public onSetDataProfileComplete(I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_11

    :try_start_4
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onSetDataProfileComplete(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to onSetDataProfileComplete on the remote"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    goto :goto_19

    :cond_11
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetDataProfileComplete: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public onSetInitialAttachApnComplete(I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_11

    :try_start_4
    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onSetInitialAttachApnComplete(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to onSetInitialAttachApnComplete on the remote"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    goto :goto_19

    :cond_11
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetInitialAttachApnComplete: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_1b

    :try_start_4
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetupDataCallComplete"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/data/DataServiceCallback;->mCallback:Landroid/telephony/data/IDataServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/data/IDataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    sget-object v1, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to onSetupDataCallComplete on the remote"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    goto :goto_23

    :cond_1b
    sget-object v0, Landroid/telephony/data/DataServiceCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSetupDataCallComplete: callback is null!"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method
