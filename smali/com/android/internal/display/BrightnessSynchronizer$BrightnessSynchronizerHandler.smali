# classes4.dex

.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessSynchronizerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method constructor <init>(Lcom/android/internal/display/BrightnessSynchronizer;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_f

    :pswitch_9  #0x1
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSynchronizerHandler;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$mrunUpdate(Lcom/android/internal/display/BrightnessSynchronizer;)V

    nop

    :goto_f
    return-void

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9  #00000001
    .end packed-switch
.end method
