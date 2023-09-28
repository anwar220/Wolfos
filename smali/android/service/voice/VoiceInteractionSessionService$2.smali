# classes3.dex

.class Landroid/service/voice/VoiceInteractionSessionService$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSessionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSessionService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSessionService$2;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a

    goto :goto_19

    :pswitch_a  #0x1
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSessionService$2;->this$0:Landroid/service/voice/VoiceInteractionSessionService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/voice/VoiceInteractionSessionService;->doNewSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V

    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_a  #00000001
    .end packed-switch
.end method
