# classes3.dex

.class Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
.super Landroid/window/ITaskFpsCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnFpsCallbackListenerProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/window/TaskFpsCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;)Landroid/window/TaskFpsCallback;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mCallback:Landroid/window/TaskFpsCallback;

    return-object p0
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .registers 3

    invoke-direct {p0}, Landroid/window/ITaskFpsCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mCallback:Landroid/window/TaskFpsCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFpsReported$0$android-view-WindowManagerImpl$OnFpsCallbackListenerProxy(F)V
    .registers 3

    iget-object v0, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mCallback:Landroid/window/TaskFpsCallback;

    invoke-virtual {v0, p1}, Landroid/window/TaskFpsCallback;->onFpsReported(F)V

    return-void
.end method

.method public onFpsReported(F)V
    .registers 4

    iget-object v0, p0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
