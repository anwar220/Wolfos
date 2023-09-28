# classes.dex

.class public Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/PendingTransactionActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityStopInfo"


# instance fields
.field private mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

.field private mDescription:Ljava/lang/CharSequence;

.field private mPersistentState:Landroid/os/PersistableBundle;

.field private mState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "ActivityStopInfo"

    :try_start_2
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting activity stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v5, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/ActivityClient;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2f} :catch_31

    nop

    return-void

    :catch_31
    move-exception v1

    new-instance v2, Landroid/util/LogWriter;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v4, "Bundle stats:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    invoke-static {v3, v4}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    const-string v4, "PersistableBundle stats:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Landroid/os/TransactionTooLargeException;

    if-eqz v4, :cond_6d

    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v4}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x18

    if-ge v4, v5, :cond_6d

    const-string v4, "App sent too much data in instance state, so it was ignored"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_6d
    throw v1
.end method

.method public setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 2

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPersistentState(Landroid/os/PersistableBundle;)V
    .registers 2

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    return-void
.end method

.method public setState(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    return-void
.end method
