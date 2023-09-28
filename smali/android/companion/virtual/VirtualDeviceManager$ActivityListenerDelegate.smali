# classes.dex

.class Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityListenerDelegate"
.end annotation


# instance fields
.field private final mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method synthetic lambda$onDisplayEmpty$1$android-companion-virtual-VirtualDeviceManager$ActivityListenerDelegate(I)V
    .registers 3

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onDisplayEmpty(I)V

    return-void
.end method

.method synthetic lambda$onTopActivityChanged$0$android-companion-virtual-VirtualDeviceManager$ActivityListenerDelegate(ILandroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public onDisplayEmpty(I)V
    .registers 4

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTopActivityChanged(ILandroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
