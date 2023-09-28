# classes3.dex

.class final Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RemoteAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteAccessibilityEmbeddedConnection"
.end annotation


# instance fields
.field private final mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final mLeashToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/view/RemoteAccessibilityController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnection(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 1

    iget-object p0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object p0
.end method

.method constructor <init>(Landroid/view/RemoteAccessibilityController;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    .registers 4

    iput-object p1, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/RemoteAccessibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    iput-object p3, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->unlinkToDeath()V

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/RemoteAccessibilityController;

    new-instance v1, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;-><init>(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V

    invoke-static {v0, v1}, Landroid/view/RemoteAccessibilityController;->-$$Nest$mrunOnUiThread(Landroid/view/RemoteAccessibilityController;Ljava/lang/Runnable;)V

    return-void
.end method

.method getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 2

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method getLeashToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    return-object v0
.end method

.method synthetic lambda$binderDied$0$android-view-RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection()V
    .registers 3

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/RemoteAccessibilityController;

    invoke-static {v0}, Landroid/view/RemoteAccessibilityController;->-$$Nest$fgetmConnectionWrapper(Landroid/view/RemoteAccessibilityController;)Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    move-result-object v0

    if-ne v0, p0, :cond_e

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->this$0:Landroid/view/RemoteAccessibilityController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/RemoteAccessibilityController;->-$$Nest$fputmConnectionWrapper(Landroid/view/RemoteAccessibilityController;Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V

    :cond_e
    return-void
.end method

.method linkToDeath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method unlinkToDeath()V
    .registers 3

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
