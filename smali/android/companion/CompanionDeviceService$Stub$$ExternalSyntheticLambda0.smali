# classes.dex

.class public final synthetic Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/companion/CompanionDeviceService$Stub;

.field public final synthetic f$1:Landroid/companion/AssociationInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/CompanionDeviceService$Stub;Landroid/companion/AssociationInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/companion/CompanionDeviceService$Stub;

    iput-object p2, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;->f$1:Landroid/companion/AssociationInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/companion/CompanionDeviceService$Stub;

    iget-object v1, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda0;->f$1:Landroid/companion/AssociationInfo;

    invoke-virtual {v0, v1}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDeviceDisappeared$1$android-companion-CompanionDeviceService$Stub(Landroid/companion/AssociationInfo;)V

    return-void
.end method
