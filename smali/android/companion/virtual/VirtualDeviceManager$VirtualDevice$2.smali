# classes.dex

.class Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Ljava/util/function/IntConsumer;


# direct methods
.method constructor <init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 5

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;->this$0:Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    iput-object p3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;->val$listener:Ljava/util/function/IntConsumer;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onReceiveResult$0(Ljava/util/function/IntConsumer;I)V
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;->val$listener:Ljava/util/function/IntConsumer;

    new-instance v2, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
