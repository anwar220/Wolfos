# classes.dex

.class public abstract Landroid/companion/CompanionDeviceManager$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationCreated(Landroid/companion/AssociationInfo;)V
    .registers 2

    return-void
.end method

.method public onAssociationPending(Landroid/content/IntentSender;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/companion/CompanionDeviceManager$Callback;->onDeviceFound(Landroid/content/IntentSender;)V

    return-void
.end method

.method public onDeviceFound(Landroid/content/IntentSender;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onFailure(Ljava/lang/CharSequence;)V
.end method
