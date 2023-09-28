# classes3.dex

.class public Landroid/service/tracing/TraceReportService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/tracing/TraceReportService$TraceParams;
    }
.end annotation


# static fields
.field public static final MSG_REPORT_TRACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TraceReportService"


# instance fields
.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public static synthetic $r8$lambda$mNBkomUtoeG9lkENLsINm4z-yjQ(Landroid/service/tracing/TraceReportService;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/tracing/TraceReportService;->onMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/tracing/TraceReportService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private onMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_37

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/tracing/TraceReportParams;

    if-nez v0, :cond_14

    const-string v0, "TraceReportService"

    const-string v2, "Received invalid type for report trace message."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_14
    new-instance v0, Landroid/service/tracing/TraceReportService$TraceParams;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/tracing/TraceReportParams;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/service/tracing/TraceReportService$TraceParams;-><init>(Landroid/tracing/TraceReportParams;Landroid/service/tracing/TraceReportService$TraceParams-IA;)V

    :try_start_1e
    invoke-virtual {p0, v0}, Landroid/service/tracing/TraceReportService;->onReportTrace(Landroid/service/tracing/TraceReportService$TraceParams;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    :try_start_21
    invoke-virtual {v0}, Landroid/service/tracing/TraceReportService$TraceParams;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_2b

    :catch_29
    move-exception v1

    nop

    :goto_2b
    return v2

    :catchall_2c
    move-exception v1

    :try_start_2d
    invoke-virtual {v0}, Landroid/service/tracing/TraceReportService$TraceParams;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    move-exception v2

    :goto_36
    throw v1

    :cond_37
    return v1
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6

    iget-object v0, p0, Landroid/service/tracing/TraceReportService;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_19

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/service/tracing/TraceReportService$$ExternalSyntheticLambda0;-><init>(Landroid/service/tracing/TraceReportService;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/service/tracing/TraceReportService;->mMessenger:Landroid/os/Messenger;

    :cond_19
    iget-object v0, p0, Landroid/service/tracing/TraceReportService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onReportTrace(Landroid/service/tracing/TraceReportService$TraceParams;)V
    .registers 2

    return-void
.end method
