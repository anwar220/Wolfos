# classes4.dex

.class final Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/AlertControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ButtonHandler"
.end annotation


# static fields
.field private static final MSG_DISMISS_DIALOG:I = 0x1


# instance fields
.field private mDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/DialogInterface;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface;

    goto :goto_13

    :cond_b
    iget-object v0, p0, Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    :goto_13
    nop

    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_22

    move-object v1, v0

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_44

    :pswitch_27  #0x0
    goto :goto_42

    :pswitch_28  #0x1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_42

    :pswitch_30  #0xfffffffd, 0xfffffffe, 0xffffffff
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/android/internal/compat/AlertControllerImpl$ButtonHandler;->mDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2, v3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    nop

    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch -0x3
        :pswitch_30  #fffffffd
        :pswitch_30  #fffffffe
        :pswitch_30  #ffffffff
        :pswitch_27  #00000000
        :pswitch_28  #00000001
    .end packed-switch
.end method
