# classes4.dex

.class Landroid/widget/ViewFlipper$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/ViewFlipper;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v1, v2}, Landroid/widget/ViewFlipper;->-$$Nest$fputmUserPresent(Landroid/widget/ViewFlipper;Z)V

    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v1}, Landroid/widget/ViewFlipper;->-$$Nest$mupdateRunning(Landroid/widget/ViewFlipper;)V

    goto :goto_2b

    :cond_18
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/widget/ViewFlipper;->-$$Nest$fputmUserPresent(Landroid/widget/ViewFlipper;Z)V

    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-static {v1, v2}, Landroid/widget/ViewFlipper;->-$$Nest$mupdateRunning(Landroid/widget/ViewFlipper;Z)V

    :cond_2b
    :goto_2b
    return-void
.end method
