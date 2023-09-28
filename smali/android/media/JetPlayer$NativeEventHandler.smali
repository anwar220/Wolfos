# classes2.dex

.class Landroid/media/JetPlayer$NativeEventHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/JetPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mJet:Landroid/media/JetPlayer;

.field final synthetic this$0:Landroid/media/JetPlayer;


# direct methods
.method public constructor <init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    invoke-static {v1}, Landroid/media/JetPlayer;->-$$Nest$fgetmEventListenerLock(Landroid/media/JetPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    invoke-static {v2}, Landroid/media/JetPlayer;->-$$Nest$fgetmJetEventListener(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;

    move-result-object v2

    move-object v0, v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_83

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_86

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/JetPlayer;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void

    :pswitch_2e  #0x4
    if-eqz v0, :cond_37

    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/media/JetPlayer$OnJetEventListener;->onJetPauseUpdate(Landroid/media/JetPlayer;I)V

    :cond_37
    return-void

    :pswitch_38  #0x3
    if-eqz v0, :cond_41

    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Landroid/media/JetPlayer$OnJetEventListener;->onJetNumQueuedSegmentUpdate(Landroid/media/JetPlayer;I)V

    :cond_41
    return-void

    :pswitch_42  #0x2
    if-eqz v0, :cond_4d

    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/JetPlayer$OnJetEventListener;->onJetUserIdUpdate(Landroid/media/JetPlayer;II)V

    :cond_4d
    return-void

    :pswitch_4e  #0x1
    if-eqz v0, :cond_82

    iget-object v1, p0, Landroid/media/JetPlayer$NativeEventHandler;->this$0:Landroid/media/JetPlayer;

    invoke-static {v1}, Landroid/media/JetPlayer;->-$$Nest$fgetmJetEventListener(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;

    move-result-object v2

    iget-object v3, p0, Landroid/media/JetPlayer$NativeEventHandler;->mJet:Landroid/media/JetPlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x18

    int-to-short v4, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/high16 v5, 0xfc0000

    and-int/2addr v1, v5

    shr-int/lit8 v1, v1, 0x12

    int-to-byte v5, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    const v6, 0x3c000

    and-int/2addr v1, v6

    shr-int/lit8 v1, v1, 0xe

    add-int/lit8 v1, v1, 0x1

    int-to-byte v6, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    and-int/lit16 v1, v1, 0x3f80

    shr-int/lit8 v1, v1, 0x7

    int-to-byte v7, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v8, v1

    invoke-interface/range {v2 .. v8}, Landroid/media/JetPlayer$OnJetEventListener;->onJetEvent(Landroid/media/JetPlayer;SBBBB)V

    :cond_82
    return-void

    :catchall_83
    move-exception v2

    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw v2

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_4e  #00000001
        :pswitch_42  #00000002
        :pswitch_38  #00000003
        :pswitch_2e  #00000004
    .end packed-switch
.end method
