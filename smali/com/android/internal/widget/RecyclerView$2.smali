# classes4.dex

.class Lcom/android/internal/widget/RecyclerView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$2;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$2;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$2;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    :cond_d
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$2;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return-void
.end method
