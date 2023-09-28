# classes.dex

.class Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;
.super Landroid/companion/IAssociationRequestCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssociationRequestCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/companion/CompanionDeviceManager$Callback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 4

    invoke-direct {p0}, Landroid/companion/IAssociationRequestCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$Callback;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V
    .registers 4

    invoke-direct {p0}, Landroid/companion/IAssociationRequestCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$Callback;)V

    return-void
.end method

.method private execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_d

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_d
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_17
    return-void
.end method

.method static synthetic lambda$execute$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$execute$1(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-direct {p0, v1, p1}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public onAssociationPending(Landroid/app/PendingIntent;)V
    .registers 4

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceManager$Callback;)V

    invoke-direct {p0, v1, p1}, Landroid/companion/CompanionDeviceManager$AssociationRequestCallbackProxy;->execute(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
