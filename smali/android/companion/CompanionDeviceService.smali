# classes.dex

.class public abstract Landroid/companion/CompanionDeviceService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceService$Stub;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.companion.CompanionDeviceService"


# instance fields
.field private final mRemote:Landroid/companion/CompanionDeviceService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/companion/CompanionDeviceService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/companion/CompanionDeviceService$Stub;-><init>(Landroid/companion/CompanionDeviceService;Landroid/companion/CompanionDeviceService$Stub-IA;)V

    iput-object v0, p0, Landroid/companion/CompanionDeviceService;->mRemote:Landroid/companion/CompanionDeviceService$Stub;

    return-void
.end method


# virtual methods
.method public final dispatchMessage(II[B)V
    .registers 5

    const-class v0, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/companion/CompanionDeviceManager;->dispatchMessage(II[B)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Landroid/companion/CompanionDeviceService;->onBindCompanionDeviceService(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/companion/CompanionDeviceService;->mRemote:Landroid/companion/CompanionDeviceService$Stub;

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.companion.CompanionDeviceService): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindCompanionDeviceService(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public onDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 3

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->onDeviceAppeared(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onDeviceAppeared(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 3

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/companion/CompanionDeviceService;->onDeviceDisappeared(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onDeviceDisappeared(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDispatchMessage(II[B)V
    .registers 4

    return-void
.end method
