# classes3.dex

.class Landroid/view/LayoutInflater$BlinkLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/LayoutInflater$BlinkLayout;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater$BlinkLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->-$$Nest$fgetmBlink(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->-$$Nest$fgetmBlinkState(Landroid/view/LayoutInflater$BlinkLayout;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Landroid/view/LayoutInflater$BlinkLayout;->-$$Nest$fputmBlinkState(Landroid/view/LayoutInflater$BlinkLayout;Z)V

    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->-$$Nest$mmakeBlink(Landroid/view/LayoutInflater$BlinkLayout;)V

    :cond_1e
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$0:Landroid/view/LayoutInflater$BlinkLayout;

    invoke-virtual {v0}, Landroid/view/LayoutInflater$BlinkLayout;->invalidate()V

    return v1

    :cond_24
    const/4 v0, 0x0

    return v0
.end method
