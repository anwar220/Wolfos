# classes3.dex

.class Landroid/view/BatchedInputEventReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/BatchedInputEventReceiver;


# direct methods
.method constructor <init>(Landroid/view/BatchedInputEventReceiver;)V
    .registers 2

    iput-object p1, p0, Landroid/view/BatchedInputEventReceiver$1;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver$1;->this$0:Landroid/view/BatchedInputEventReceiver;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    return-void
.end method
