# classes.dex

.class Landroid/app/KeyguardManager$4;
.super Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->addWeakEscrowToken([BLandroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/KeyguardManager;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;


# direct methods
.method constructor <init>(Landroid/app/KeyguardManager;Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;)V
    .registers 4

    iput-object p1, p0, Landroid/app/KeyguardManager$4;->this$0:Landroid/app/KeyguardManager;

    iput-object p2, p0, Landroid/app/KeyguardManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/KeyguardManager$4;->val$listener:Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;

    invoke-direct {p0}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onWeakEscrowTokenActivated$0(Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;JLandroid/os/UserHandle;)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;->onWeakEscrowTokenActivated(JLandroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onWeakEscrowTokenActivated(JI)V
    .registers 10

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_8
    iget-object v3, p0, Landroid/app/KeyguardManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/app/KeyguardManager$4;->val$listener:Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;

    new-instance v5, Landroid/app/KeyguardManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4, p1, p2, v0}, Landroid/app/KeyguardManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/app/KeyguardManager$WeakEscrowTokenActivatedListener;JLandroid/os/UserHandle;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_20

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v3, "KeyguardManager"

    const-string v4, "Weak escrow token activated."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
