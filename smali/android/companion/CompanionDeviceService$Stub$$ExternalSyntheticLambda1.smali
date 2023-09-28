# classes.dex

.class public final synthetic Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/companion/CompanionDeviceService$Stub;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:[B


# direct methods
.method public synthetic constructor <init>(Landroid/companion/CompanionDeviceService$Stub;II[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;->f$0:Landroid/companion/CompanionDeviceService$Stub;

    iput p2, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;->f$3:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;->f$0:Landroid/companion/CompanionDeviceService$Stub;

    iget v1, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Landroid/companion/CompanionDeviceService$Stub$$ExternalSyntheticLambda1;->f$3:[B

    invoke-virtual {v0, v1, v2, v3}, Landroid/companion/CompanionDeviceService$Stub;->lambda$onDispatchMessage$2$android-companion-CompanionDeviceService$Stub(II[B)V

    return-void
.end method
