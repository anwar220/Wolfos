# classes2.dex

.class Landroid/view/animation/Animation$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/animation/Animation;->setListenerHandler(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;)V
    .registers 2

    iput-object p1, p0, Landroid/view/animation/Animation$2;->this$0:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/view/animation/Animation$2;->this$0:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->dispatchAnimationRepeat()V

    return-void
.end method
