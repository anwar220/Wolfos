# classes.dex

.class Landroid/hardware/face/FaceManager$MyHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/face/FaceManager;


# direct methods
.method private constructor <init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;Landroid/hardware/face/FaceManager$MyHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;Landroid/hardware/face/FaceManager$MyHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceManager#handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_f0

    :pswitch_21  #0x6e, 0x6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_eb

    :pswitch_3d  #0x71
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/FaceEnrollFrame;

    invoke-static {v0, v1}, Landroid/hardware/face/FaceManager;->-$$Nest$msendEnrollmentFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceEnrollFrame;)V

    goto/16 :goto_eb

    :pswitch_48  #0x70
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/FaceAuthenticationFrame;

    invoke-static {v0, v1}, Landroid/hardware/face/FaceManager;->-$$Nest$msendAuthenticationFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceAuthenticationFrame;)V

    goto/16 :goto_eb

    :pswitch_53  #0x6d
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/face/FaceManager;->-$$Nest$msendFaceDetected(Landroid/hardware/face/FaceManager;IIZ)V

    goto/16 :goto_eb

    :pswitch_66  #0x6c
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->-$$Nest$msendChallengeGenerated(Landroid/hardware/face/FaceManager;IIJ)V

    goto/16 :goto_eb

    :pswitch_79  #0x6b
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendSetFeatureCompleted(Landroid/hardware/face/FaceManager;ZI)V

    goto :goto_eb

    :pswitch_89  #0x6a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [Z

    invoke-static {v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->-$$Nest$msendGetFeatureCompleted(Landroid/hardware/face/FaceManager;Z[I[Z)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_eb

    :pswitch_a6  #0x69
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/Face;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendRemovedResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V

    goto :goto_eb

    :pswitch_b2  #0x68
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendErrorResult(Landroid/hardware/face/FaceManager;II)V

    goto :goto_eb

    :pswitch_bc  #0x67
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Landroid/hardware/face/FaceManager;->-$$Nest$msendAuthenticatedFailed(Landroid/hardware/face/FaceManager;)V

    goto :goto_eb

    :pswitch_c2  #0x66
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/Face;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d0

    goto :goto_d1

    :cond_d0
    const/4 v4, 0x0

    :goto_d1
    invoke-static {v0, v1, v2, v4}, Landroid/hardware/face/FaceManager;->-$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;IZ)V

    goto :goto_eb

    :pswitch_d5  #0x65
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendAcquiredResult(Landroid/hardware/face/FaceManager;II)V

    goto :goto_eb

    :pswitch_df  #0x64
    iget-object v0, p0, Landroid/hardware/face/FaceManager$MyHandler;->this$0:Landroid/hardware/face/FaceManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/face/Face;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager;->-$$Nest$msendEnrollResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V

    nop

    :goto_eb
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    nop

    :pswitch_data_f0
    .packed-switch 0x64
        :pswitch_df  #00000064
        :pswitch_d5  #00000065
        :pswitch_c2  #00000066
        :pswitch_bc  #00000067
        :pswitch_b2  #00000068
        :pswitch_a6  #00000069
        :pswitch_89  #0000006a
        :pswitch_79  #0000006b
        :pswitch_66  #0000006c
        :pswitch_53  #0000006d
        :pswitch_21  #0000006e
        :pswitch_21  #0000006f
        :pswitch_48  #00000070
        :pswitch_3d  #00000071
    .end packed-switch
.end method
