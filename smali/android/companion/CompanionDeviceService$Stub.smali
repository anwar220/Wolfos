# classes.dex

.class Landroid/companion/CompanionDeviceService$Stub;
.super Landroid/companion/ICompanionDeviceService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stub"
.end annotation


# instance fields
.field final mMainHandler:Landroid/os/Handler;

.field final mService:Landroid/companion/CompanionDeviceService;

.field final synthetic this$0:Landroid/companion/CompanionDeviceService;


# direct methods
.method private constructor <init>(Landroid/companion/CompanionDeviceService;)V
    .registers 3

    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->this$0:Landroid/companion/CompanionDeviceService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceService$Stub;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    return-void
.end method

.method synthetic constructor <init>(Landroid/companion/CompanionDeviceService;Landroid/companion/CompanionDeviceService$Stub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/CompanionDeviceService$Stub;-><init>(Landroid/companion/CompanionDeviceService;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDeviceAppeared$0$android-companion-CompanionDeviceService$Stub(Landroid/companion/AssociationInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method synthetic lambda$onDeviceDisappeared$1$android-companion-CompanionDeviceService$Stub(Landroid/companion/AssociationInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1}, Landroid/companion/CompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method synthetic lambda$onDispatchMessage$2$android-companion-CompanionDeviceService$Stub(II[B)V
    .registers 5

    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mService:Landroid/companion/CompanionDeviceService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/CompanionDeviceService;->onDispatchMessage(II[B)V

    return-void
.end method

.method public onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda2;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDispatchMessage(II[B)V
    .registers 6

    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/companion/CompanionDeviceService$Stub;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
