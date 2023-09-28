# classes4.dex

.class Lcom/android/internal/inputmethod/ImeTracingServerImpl;
.super Lcom/android/internal/inputmethod/ImeTracing;


# static fields
.field private static final BUFFER_CAPACITY:I = 0x400000

.field private static final MAGIC_NUMBER_CLIENTS_VALUE:J = 0x4543415254434d49L

.field private static final MAGIC_NUMBER_IMMS_VALUE:J = 0x45434152544d4d49L

.field private static final MAGIC_NUMBER_IMS_VALUE:J = 0x4543415254534d49L

.field private static final TRACE_DIRNAME:Ljava/lang/String; = "/data/misc/wmtrace/"

.field private static final TRACE_FILENAME_CLIENTS:Ljava/lang/String; = "ime_trace_clients.winscope"

.field private static final TRACE_FILENAME_IMMS:Ljava/lang/String; = "ime_trace_managerservice.winscope"

.field private static final TRACE_FILENAME_IMS:Ljava/lang/String; = "ime_trace_service.winscope"


# instance fields
.field private final mBufferClients:Lcom/android/internal/util/TraceBuffer;

.field private final mBufferImms:Lcom/android/internal/util/TraceBuffer;

.field private final mBufferIms:Lcom/android/internal/util/TraceBuffer;

.field private final mEnabledLock:Ljava/lang/Object;

.field private final mTraceFileClients:Ljava/io/File;

.field private final mTraceFileImms:Ljava/io/File;

.field private final mTraceFileIms:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracing;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wmtrace/ime_trace_clients.winscope"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileClients:Ljava/io/File;

    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wmtrace/ime_trace_service.winscope"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileIms:Ljava/io/File;

    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/ime_trace_managerservice.winscope"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileImms:Ljava/io/File;

    return-void
.end method

.method private resetBuffers()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    return-void
.end method

.method private writeTracesToFilesLocked()V
    .registers 8

    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x4543415254434d49L  # 4.655612619772045E25

    const-wide v3, 0x10600000001L

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v1, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    iget-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileClients:Ljava/io/File;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v5, 0x4543415254534d49L  # 4.655612620672765E25

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    iget-object v5, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileIms:Ljava/io/File;

    invoke-virtual {v2, v5, v1}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v5, 0x45434152544d4d49L  # 4.655612620334995E25

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v3, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mTraceFileImms:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->resetBuffers()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_4d

    :catch_45
    move-exception v0

    const-string v1, "imeTracing"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4d
    return-void
.end method


# virtual methods
.method public addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    packed-switch p2, :pswitch_data_2a

    const-string v0, "imeTracing"

    const-string v1, "Request to add to buffer, but source not recognised."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :pswitch_17  #0x2
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferImms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void

    :pswitch_1d  #0x1
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferIms:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void

    :pswitch_23  #0x0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mBufferClients:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    return-void

    :cond_29
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_1d  #00000001
        :pswitch_17  #00000002
    .end packed-switch
.end method

.method public saveForBugreport(Ljava/io/PrintWriter;)V
    .registers 4

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_25

    :cond_15
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    const-string v1, "Writing traces in /data/misc/wmtrace/: ime_trace_clients.winscope, ime_trace_service.winscope, ime_trace_managerservice.winscope"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->writeTracesToFilesLocked()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    monitor-exit v0

    return-void

    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public startTrace(Ljava/io/PrintWriter;)V
    .registers 5

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_c

    const-string v0, "imeTracing"

    const-string v1, "Warn: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "imeTracing"

    const-string v2, "Warn: Tracing is already started."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_24
    const-string v1, "Starting tracing in /data/misc/wmtrace/: ime_trace_clients.winscope, ime_trace_service.winscope, ime_trace_managerservice.winscope"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->resetBuffers()V

    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw v1
.end method

.method public stopTrace(Ljava/io/PrintWriter;)V
    .registers 5

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_c

    const-string v0, "imeTracing"

    const-string v1, "Warn: Tracing is not supported on user builds."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_29

    :cond_1c
    const-string v1, "Stopping tracing and writing traces in /data/misc/wmtrace/: ime_trace_clients.winscope, ime_trace_service.winscope, ime_trace_managerservice.winscope"

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sEnabled:Z

    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->writeTracesToFilesLocked()V

    monitor-exit v0

    return-void

    :cond_29
    :goto_29
    const-string v1, "imeTracing"

    const-string v2, "Warn: Tracing is not available or not started."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_32

    throw v1
.end method

.method public triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
    .registers 4

    return-void
.end method

.method public triggerManagerServiceDump(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_37

    :cond_d
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    if-eqz v1, :cond_16

    monitor-exit v0

    return-void

    :cond_16
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_34

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->sendToService([BILjava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_26
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    nop

    :goto_21
    iput-boolean v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    goto :goto_30

    :catchall_24
    move-exception v0

    goto :goto_31

    :catch_26
    move-exception v0

    :try_start_27
    const-string v1, "imeTracing"

    const-string v3, "Exception while sending ime-related manager service dump to server"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_24

    nop

    goto :goto_21

    :goto_30
    return-void

    :goto_31
    iput-boolean v2, p0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;->mDumpInProgress:Z

    throw v0

    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1

    :cond_37
    :goto_37
    return-void
.end method

.method public triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
    .registers 4

    return-void
.end method
