# classes.dex

.class Landroid/app/KeyguardManager$3;
.super Landroid/view/IOnKeyguardExitResult$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/KeyguardManager;

.field final synthetic val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;


# direct methods
.method constructor <init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .registers 3

    iput-object p1, p0, Landroid/app/KeyguardManager$3;->this$0:Landroid/app/KeyguardManager;

    iput-object p2, p0, Landroid/app/KeyguardManager$3;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    invoke-direct {p0}, Landroid/view/IOnKeyguardExitResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/KeyguardManager$3;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/app/KeyguardManager$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    :cond_7
    return-void
.end method