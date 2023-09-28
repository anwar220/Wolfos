# classes.dex

.class final Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V
    .registers 4

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_e

    move-object v0, p1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 21

    move-object v9, p1

    move-object/from16 v10, p4

    if-nez v9, :cond_10

    const-string v0, "LoadedApk"

    const-string v1, "Null intent received"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v11, p0

    move-object v12, v0

    goto :goto_1a

    :cond_10
    move-object v11, p0

    iget-object v0, v11, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    move-object v12, v0

    :goto_1a
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    const-string v1, "ActivityThread"

    if-eqz v0, :cond_5c

    const/4 v0, -0x1

    const-string/jumbo v2, "seq"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiving broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v12, :cond_50

    iget-object v3, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_51

    :cond_50
    const/4 v3, 0x0

    :goto_51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    if-eqz v12, :cond_6f

    move-object v1, v12

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    goto :goto_92

    :cond_6f
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_78

    const-string v0, "Finishing broadcast to unregistered receiver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    if-eqz v10, :cond_82

    const/4 v0, 0x0

    :try_start_7f
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->setAllowFds(Z)Z

    :cond_82
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_91} :catch_93

    nop

    :goto_92
    return-void

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
