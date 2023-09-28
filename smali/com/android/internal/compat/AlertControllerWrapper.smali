# classes4.dex

.class public Lcom/android/internal/compat/AlertControllerWrapper;
.super Lcom/android/internal/compat/AlertController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/AlertControllerWrapper$AlertParams;
    }
.end annotation


# instance fields
.field mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/compat/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    new-instance v0, Lcom/android/internal/compat/AlertControllerImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/compat/AlertControllerImpl;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public installContent()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/android/internal/compat/AlertControllerImpl;->installContent()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/compat/AlertControllerImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/compat/AlertControllerImpl;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerWrapper;->mAlertControllerImpl:Lcom/android/internal/compat/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/compat/AlertControllerImpl;->setView(Landroid/view/View;)V

    return-void
.end method
