# classes3.dex

.class final Landroid/view/InputFilter$H;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/InputFilter;


# direct methods
.method public constructor <init>(Landroid/view/InputFilter;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    goto :goto_72

    :pswitch_6  #0x3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    :try_start_a
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_1c
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_28

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    nop

    goto :goto_72

    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    throw v1

    :pswitch_2d  #0x2
    const/4 v0, 0x0

    :try_start_2e
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {v1}, Landroid/view/InputFilter;->onUninstalled()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3a

    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1, v0}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    nop

    goto :goto_72

    :catchall_3a
    move-exception v1

    iget-object v2, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v2, v0}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    throw v1

    :pswitch_41  #0x1
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/IInputFilterHost;

    invoke-static {v0, v1}, Landroid/view/InputFilter;->-$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V

    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0}, Landroid/view/InputFilter;->-$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    :cond_5b
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0}, Landroid/view/InputFilter;->-$$Nest$fgetmOutboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0}, Landroid/view/InputFilter;->-$$Nest$fgetmOutboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    :cond_6c
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {v0}, Landroid/view/InputFilter;->onInstalled()V

    nop

    :goto_72
    return-void

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_41  #00000001
        :pswitch_2d  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
