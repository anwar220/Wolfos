# classes4.dex

.class Landroid/widget/StackView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/StackView;->transformViewForTransition(IILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/StackView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/StackView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/StackView$1;->this$0:Landroid/widget/StackView;

    iput-object p2, p0, Landroid/widget/StackView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/widget/StackView$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
