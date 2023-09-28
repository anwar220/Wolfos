# classes4.dex

.class public abstract Lcom/android/internal/inputmethod/ImeTracing;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;
    }
.end annotation


# static fields
.field public static final IME_TRACING_FROM_CLIENT:I = 0x0

.field public static final IME_TRACING_FROM_IMMS:I = 0x2

.field public static final IME_TRACING_FROM_IMS:I = 0x1

.field public static final PROTO_ARG:Ljava/lang/String; = "--proto-com-android-imetracing"

.field static final TAG:Ljava/lang/String; = "imeTracing"

.field static sEnabled:Z

.field private static sInstance:Lcom/android/internal/inputmethod/ImeTracing;


# instance fields
.field protected mDumpInProgress:Z

.field protected final mDumpInProgressLock:Ljava/lang/Object;

.field mService:Lcom/android/internal/view/IInputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mDumpInProgressLock:Ljava/lang/Object;

    nop

    const-string v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/inputmethod/ImeTracing;
    .registers 3

    sget-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    if-nez v0, :cond_20

    :try_start_4
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->isSystemProcess()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/android/internal/inputmethod/ImeTracingServerImpl;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracingServerImpl;-><init>()V

    goto :goto_15

    :cond_10
    new-instance v0, Lcom/android/internal/inputmethod/ImeTracingClientImpl;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/ImeTracingClientImpl;-><init>()V

    :goto_15
    sput-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_18
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_4 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v0

    const-string v1, "imeTracing"

    const-string v2, "Exception while creating ImeTracing instance"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    sget-object v0, Lcom/android/internal/inputmethod/ImeTracing;->sInstance:Lcom/android/internal/inputmethod/ImeTracing;

    return-object v0
.end method

.method private static isSystemProcess()Z
    .registers 1

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
.end method

.method public isAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    sget-boolean v0, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    return v0
.end method

.method protected logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "imeTracing"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_d
    return-void
.end method

.method public saveForBugreport(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public sendToService([BILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->startProtoDump([BILjava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/internal/inputmethod/ImeTracing;->sEnabled:Z

    return-void
.end method

.method public final startImeTrace()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->startImeTrace()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start ime trace."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imeTracing"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public abstract startTrace(Ljava/io/PrintWriter;)V
.end method

.method public final stopImeTrace()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracing;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->stopImeTrace()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stop ime trace."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imeTracing"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public abstract stopTrace(Ljava/io/PrintWriter;)V
.end method

.method public abstract triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
.end method

.method public abstract triggerManagerServiceDump(Ljava/lang/String;)V
.end method

.method public abstract triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
.end method
