# classes3.dex

.class Landroid/telecom/CallRedirectionService$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallRedirectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/CallRedirectionService;


# direct methods
.method constructor <init>(Landroid/telecom/CallRedirectionService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_38

    :pswitch_6  #0x2
    iget-object v0, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-virtual {v0}, Landroid/telecom/CallRedirectionService;->onRedirectionTimeout()V

    goto :goto_38

    :pswitch_c  #0x1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_10
    iget-object v1, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/ICallRedirectionAdapter;

    invoke-static {v1, v2}, Landroid/telecom/CallRedirectionService;->-$$Nest$fputmCallRedirectionAdapter(Landroid/telecom/CallRedirectionService;Lcom/android/internal/telecom/ICallRedirectionAdapter;)V

    iget-object v1, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/telecom/CallRedirectionService;->onPlaceCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_33

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    goto :goto_38

    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_c  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
