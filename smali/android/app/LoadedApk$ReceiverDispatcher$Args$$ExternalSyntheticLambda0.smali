# classes.dex

.class public final synthetic Landroid/app/LoadedApk$ReceiverDispatcher$Args$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/LoadedApk$ReceiverDispatcher$Args;


# direct methods
.method public synthetic constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args$$ExternalSyntheticLambda0;->f$0:Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args$$ExternalSyntheticLambda0;->f$0:Landroid/app/LoadedApk$ReceiverDispatcher$Args;

    invoke-virtual {v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->lambda$getRunnable$0$android-app-LoadedApk$ReceiverDispatcher$Args()V

    return-void
.end method
