# classes4.dex

.class Lcom/android/internal/app/NetInitiatedActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$1;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$1;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v0}, Lcom/android/internal/app/NetInitiatedActivity;->-$$Nest$fgetnotificationId(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$1;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {v0}, Lcom/android/internal/app/NetInitiatedActivity;->-$$Nest$fgetdefault_response(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/NetInitiatedActivity;->-$$Nest$msendUserResponse(Lcom/android/internal/app/NetInitiatedActivity;I)V

    :cond_18
    iget-object v0, p0, Lcom/android/internal/app/NetInitiatedActivity$1;->this$0:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/NetInitiatedActivity;->finish()V

    nop

    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method
