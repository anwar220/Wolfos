# classes3.dex

.class public Landroid/telephony/ims/stub/ImsSmsImplBase;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsSmsImplBase$StatusReportResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$DeliverStatusResult;,
        Landroid/telephony/ims/stub/ImsSmsImplBase$SendStatusResult;
    }
.end annotation


# static fields
.field public static final DELIVER_STATUS_ERROR_GENERIC:I = 0x2

.field public static final DELIVER_STATUS_ERROR_NO_MEMORY:I = 0x3

.field public static final DELIVER_STATUS_ERROR_REQUEST_NOT_SUPPORTED:I = 0x4

.field public static final DELIVER_STATUS_OK:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SmsImplBase"

.field public static final RESULT_NO_NETWORK_ERROR:I = -0x1

.field public static final SEND_STATUS_ERROR:I = 0x2

.field public static final SEND_STATUS_ERROR_FALLBACK:I = 0x4

.field public static final SEND_STATUS_ERROR_RETRY:I = 0x3

.field public static final SEND_STATUS_OK:I = 0x1

.field public static final STATUS_REPORT_STATUS_ERROR:I = 0x2

.field public static final STATUS_REPORT_STATUS_OK:I = 0x1


# instance fields
.field private mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .registers 6

    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSms() not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .registers 6

    const-string v0, "SmsImplBase"

    const-string v1, "acknowledgeSmsReport() not implemented."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "3gpp"

    return-object v0
.end method

.method public onReady()V
    .registers 1

    return-void
.end method

.method public final onSendSmsResult(IIII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_21

    if-eqz v0, :cond_19

    const/4 v8, -0x1

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    :try_start_10
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_18
    return-void

    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public final onSendSmsResultError(IIIII)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_21

    if-eqz v0, :cond_19

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    :try_start_10
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_18
    return-void

    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public final onSendSmsResultSuccess(II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_21

    if-eqz v0, :cond_19

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v3, v0

    move v4, p1

    move v5, p2

    :try_start_10
    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSendSmsResult(IIIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_18
    return-void

    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public final onSmsReceived(ILjava/lang/String;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_53

    if-eqz v0, :cond_4b

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsReceived(ILjava/lang/String;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_4a

    :catch_e
    move-exception v1

    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not deliver sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3e

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3e

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    goto :goto_4a

    :cond_3e
    const-string v4, "SmsImplBase"

    const-string/jumbo v5, "onSmsReceived: Invalid pdu entered."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSms(III)V

    :goto_4a
    return-void

    :cond_4b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method public final onSmsStatusReportReceived(IILjava/lang/String;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_38

    if-eqz v0, :cond_30

    :try_start_a
    invoke-interface {v0, p1, p3, p4}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_2f

    :catch_e
    move-exception v1

    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not process sms status report: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    :goto_2f
    return-void

    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public final onSmsStatusReportReceived(ILjava/lang/String;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    move-object v0, v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_53

    if-eqz v0, :cond_4b

    :try_start_a
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsSmsListener;->onSmsStatusReportReceived(ILjava/lang/String;[B)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_4a

    :catch_e
    move-exception v1

    const-string v2, "SmsImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not process sms status report: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3e

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3e

    iget-object v4, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    goto :goto_4a

    :cond_3e
    const-string v4, "SmsImplBase"

    const-string/jumbo v5, "onSmsStatusReportReceived: Invalid pdu entered."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->acknowledgeSmsReport(III)V

    :goto_4a
    return-void

    :cond_4b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Feature not ready."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method public final registerSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/stub/ImsSmsImplBase;->mListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResult(IIII)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_23

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not send sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method
