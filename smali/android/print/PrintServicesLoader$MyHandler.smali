# classes3.dex

.class Landroid/print/PrintServicesLoader$MyHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintServicesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintServicesLoader;


# direct methods
.method public constructor <init>(Landroid/print/PrintServicesLoader;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    invoke-virtual {p1}, Landroid/print/PrintServicesLoader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    invoke-virtual {v0}, Landroid/print/PrintServicesLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method
