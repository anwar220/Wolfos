# classes.dex

.class Landroid/animation/AnimatorSet$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimatorSet;

.field final synthetic val$anim:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V
    .registers 3

    iput-object p1, p0, Landroid/animation/AnimatorSet$2;->this$0:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Landroid/animation/AnimatorSet$2;->val$anim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroid/animation/AnimatorSet$2;->val$anim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Landroid/animation/AnimatorSet;->-$$Nest$fgetmNodeMap(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/animation/AnimatorSet$2;->val$anim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Landroid/animation/AnimatorSet;->-$$Nest$fgetmNodeMap(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    return-void

    :cond_1c
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Error: animation ended is not in the node map"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method