# classes4.dex

.class Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$700(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    :cond_11
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$800(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-static {v1, v2}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmOverflowPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    :cond_30
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/widget/ActionMenuPresenter;->-$$Nest$fputmPostedOpenRunnable(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)V

    return-void
.end method
