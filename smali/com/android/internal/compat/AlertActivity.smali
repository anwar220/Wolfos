# classes4.dex

.class public Lcom/android/internal/compat/AlertActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/android/internal/compat/AlertController;

.field protected mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity;->finish()V

    return-void
.end method

.method public dismiss()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity;->finish()V

    :cond_9
    return-void
.end method

.method public finish()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/compat/AlertActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/compat/AlertControllerWrapper;

    invoke-virtual {p0}, Lcom/android/internal/compat/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/compat/AlertControllerWrapper;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlert:Lcom/android/internal/compat/AlertController;

    new-instance v0, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlert:Lcom/android/internal/compat/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/compat/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected setupAlert()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlertParams:Lcom/android/internal/compat/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/internal/compat/AlertActivity;->mAlert:Lcom/android/internal/compat/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/compat/AlertController$AlertParams;->apply(Lcom/android/internal/compat/AlertController;)V

    iget-object v0, p0, Lcom/android/internal/compat/AlertActivity;->mAlert:Lcom/android/internal/compat/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/compat/AlertController;->installContent()V

    return-void
.end method
